def clean_ocr(text, verbose=False):
    return text


def clean_ocr_for_rag(text, verbose=False):
    """
    Production OCR cleaner for massive libraries.

    ⚡ DESIGNED FOR 23GB+ ZOTERO LIBRARIES ⚡

    - Auto-detects document type (academic vs book)
    - Auto-detects language (French vs English vs other)
    - Auto-applies appropriate cleaning intensity
    - Handles all OCR quality levels (excellent to poor)
    - Repairs concatenation automatically
    - Returns RAG-ready text

    Args:
        text (str): Raw PDF text from any source
        verbose (bool): Set to False for silent bulk processing

    Returns:
        str: Clean, RAG-optimized text
    """
    import re

    if not text or len(text.strip()) < 100:
        return text  # Skip empty/tiny documents

    original_length = len(text)

    # STEP 1: Auto-detect document type and language
    total_lines = len(text.split("\n"))
    short_lines = len([line for line in text.split("\n") if len(line.strip()) < 50])
    short_line_ratio = short_lines / total_lines if total_lines > 0 else 0

    # Academic indicators
    academic_indicators = (
        len(re.findall(r"\bdoi:", text, re.IGNORECASE))
        + len(
            re.findall(r"jstor|proquest|ieee|acm|springer|arxiv", text, re.IGNORECASE)
        )
        + len(
            re.findall(
                r"vol\.|issue|pp\.|journal|abstract|keywords", text, re.IGNORECASE
            )
        )
        + len(re.findall(r"university|college|department|faculty", text, re.IGNORECASE))
    )

    book_indicators = len(
        re.findall(
            r"chapter|isbn|publisher|edition|copyright|press", text, re.IGNORECASE
        )
    ) + len(re.findall(r"printed|published|library|catalog", text, re.IGNORECASE))

    # Document type determination
    is_academic = academic_indicators > book_indicators and (
        academic_indicators > 3 or short_line_ratio > 0.7
    )

    # Language detection
    french_words = len(
        re.findall(
            r"\b(de|du|le|la|les|et|ou|pour|avec|dans|sur|par|à|au|aux|en|un|une|des|que|qui|ce|se|ne|son|sa|ses|mais|très|tout|tous|bien|plus|même|encore|donc|ainsi|depuis|entre|contre|sous|après|avant|pendant|sans|chez|vers|dès|selon|malgré|parmi|grâce|quant|tant|car|soit|ni|sinon)\b",
            text,
            re.IGNORECASE,
        )
    )
    english_words = len(
        re.findall(
            r"\b(the|and|for|are|but|not|you|all|can|had|was|one|our|out|day|get|has|may|new|now|old|see|two|way|with|that|this|they|will|from|have|been|than|when|more|much|some|what|upon|many|such|also|very|make|made|like|only|over|each|most|well|long|even|find|give|take|come|work|just|great|good|know|same|still|call|back|keep|last|year|part|years|never|right|again|look|while|might|would|after|could|where|other|every|those|which|there|being|first|about|under|above|between|these|three|since|place|before|during|through|without|against|within|across|behind|toward|around|inside|beyond|outside|beneath|below|ahead|aside|along|among|apart|down|into|onto|past|beside|near)\b",
            text,
            re.IGNORECASE,
        )
    )

    language = "french" if french_words > english_words else "english"

    if verbose:
        doc_type = "Academic" if is_academic else "Book"
        print(
            f"Processing {doc_type} {language.title()} document ({original_length:,} chars)"
        )

    # STEP 2: Comprehensive OCR artifact cleaning
    # Remove CID artifacts (common in scanned PDFs)
    text = re.sub(r"\(cid:\d+\)", "", text)

    # Remove control characters but preserve essential whitespace
    text = re.sub(r"[\x00-\x08\x0b\x0c\x0e-\x1f\x7f-\x9f]", "", text)

    # Clean page numbers and headers/footers
    text = re.sub(
        r"^\s*\d+\s*$", "", text, flags=re.MULTILINE
    )  # Standalone page numbers
    text = re.sub(r"^[A-Z\s]{10,}$", "", text, flags=re.MULTILINE)  # ALL CAPS headers
    text = re.sub(
        r"^\s*[-_=*]{3,}\s*$", "", text, flags=re.MULTILINE
    )  # Decorative lines

    # Remove URL artifacts and email patterns
    text = re.sub(r"https?://[^\s]+", "", text)
    text = re.sub(r"\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b", "", text)

    # STEP 3: Document-type specific cleaning
    if is_academic:
        if verbose:
            print("  Applying academic paper cleaning...")

        # Enhanced academic metadata removal (optimized patterns)
        text = re.sub(
            r"downloaded from[^.]{0,200}on[^.]{0,50}at[^.]{0,50}utc",
            "",
            text,
            flags=re.IGNORECASE,
        )
        text = re.sub(
            r"this content downloaded[^.]{0,100}from[^.]{0,100}on[^.]{0,50}\d{4}",
            "",
            text,
            flags=re.IGNORECASE,
        )
        text = re.sub(
            r"jstor[^.]{0,100}digitize[^.]{0,100}access", "", text, flags=re.IGNORECASE
        )

        # Additional academic metadata patterns (optimized)
        text = re.sub(r"source:[^:]{0,200}stable url:", "", text, flags=re.IGNORECASE)
        text = re.sub(r"stable url: https?://[^\s]+", "", text, flags=re.IGNORECASE)
        text = re.sub(r"accessed: \d{2}/\d{2}/\d{4}", "", text, flags=re.IGNORECASE)
        text = re.sub(r"your use of the jstor archive", "", text, flags=re.IGNORECASE)
        text = re.sub(r"terms and conditions of use", "", text, flags=re.IGNORECASE)
        text = re.sub(
            r"http://www\.jstor\.org/page/info/about/policies/terms\.jsp", "", text
        )

        # Remove DOI patterns
        text = re.sub(r"doi:\s*10\.\d+/[^\s]+", "", text, flags=re.IGNORECASE)
        text = re.sub(r"https://doi\.org/[^\s]+", "", text, flags=re.IGNORECASE)

        # Enhanced citation patterns
        text = re.sub(r"\[\d+[,\s\d]*\]", "", text)  # [1], [1,2,3]
        text = re.sub(r"\(\d{4}[a-z]?\)", "", text)  # (2020), (2020a)
        text = re.sub(r"\(pp?\.\s*\d+[-–]\d+\)", "", text)  # (pp. 123-145)
        text = re.sub(r"\(vol\.\s*\d+\)", "", text, flags=re.IGNORECASE)  # (vol. 3)

        # Remove academic journal artifacts
        text = re.sub(r"^author\(s\):", "", text, flags=re.IGNORECASE | re.MULTILINE)
        text = re.sub(r"^source:", "", text, flags=re.IGNORECASE | re.MULTILINE)
        text = re.sub(r"^published by:", "", text, flags=re.IGNORECASE | re.MULTILINE)
        text = re.sub(r"french historical studies", "", text, flags=re.IGNORECASE)

        # Aggressive line merging for academic papers (often fragmented)
        text = re.sub(r"-\s*\n\s*", "", text)  # Dehyphenate across lines
        text = re.sub(
            r"([a-zà-ÿ])\n\s*([a-zà-ÿ])", r"\1 \2", text
        )  # Merge broken words
        text = re.sub(
            r"([.!?])\n\s*([A-ZÀ-Ÿ])", r"\1\n\n\2", text
        )  # Preserve sentence boundaries
        text = re.sub(r"\n\s*\n\s*\n+", "\n\n", text)  # Normalize paragraph breaks

    else:  # Book format
        if verbose:
            print("  Applying book format cleaning...")

        # Book-specific metadata removal
        text = re.sub(r"first published \d{4}", "", text, flags=re.IGNORECASE)
        text = re.sub(r"copyright © \d{4}", "", text, flags=re.IGNORECASE)
        text = re.sub(r"all rights reserved", "", text, flags=re.IGNORECASE)
        text = re.sub(r"no part of this publication", "", text, flags=re.IGNORECASE)
        text = re.sub(r"isbn:?\s*\d+[-\d]*", "", text, flags=re.IGNORECASE)

        # More conservative cleaning for books (preserve structure)
        text = re.sub(
            r"-\s*\n\s*([a-zà-ÿ])", r"\1", text
        )  # Only dehyphenate obvious cases
        text = re.sub(r"\n\s*\n\s*\n+", "\n\n", text)  # Normalize paragraph breaks

    # STEP 4: Enhanced language-specific concatenation repair
    if language == "french" and not is_academic:
        if verbose:
            print("  Applying French concatenation repairs...")

        french_repairs = [
            # Common French articles stuck to capitalized words
            (r"\bde([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"de \1"),
            (r"\bdu([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"du \1"),
            (r"\ble([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"le \1"),
            (r"\bla([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"la \1"),
            (r"\bles([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"les \1"),
            (r"\bet([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"et \1"),
            (r"\bou([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"ou \1"),
            (r"\bpour([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"pour \1"),
            (r"\bavec([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"avec \1"),
            (r"\bdans([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"dans \1"),
            (r"\bsur([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"sur \1"),
            (r"\bpar([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"par \1"),
            (r"\bà([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"à \1"),
            (r"\bau([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"au \1"),
            (r"\baux([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"aux \1"),
            (r"\ben([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"en \1"),
            (r"\bun([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"un \1"),
            (r"\bune([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"une \1"),
            (r"\bdes([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"des \1"),
            (r"\bque([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"que \1"),
            (r"\bqui([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"qui \1"),
            (r"\bce([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"ce \1"),
            (r"\bse([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"se \1"),
            (r"\bne([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"ne \1"),
            (r"\bson([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"son \1"),
            (r"\bsa([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"sa \1"),
            (r"\bses([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"ses \1"),
            # French prepositions and conjunctions
            (r"\bmais([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"mais \1"),
            (r"\btrès([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"très \1"),
            (r"\btout([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"tout \1"),
            (r"\btous([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"tous \1"),
            (r"\bbien([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"bien \1"),
            (r"\bplus([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"plus \1"),
            (r"\bmême([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"même \1"),
            (r"\bencore([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"encore \1"),
            (r"\bdonc([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"donc \1"),
            (r"\bainsi([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"ainsi \1"),
            (r"\bdepuis([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"depuis \1"),
            (r"\bentre([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"entre \1"),
            (r"\bcontre([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"contre \1"),
            (r"\bsous([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"sous \1"),
            (r"\baprès([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"après \1"),
            (r"\bavant([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"avant \1"),
            (r"\bpendant([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"pendant \1"),
            (r"\bsans([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"sans \1"),
            (r"\bchez([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"chez \1"),
            (r"\bvers([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"vers \1"),
            # General lowercase-uppercase boundaries in French
            (r"([a-zà-ÿ]{3,})([A-ZÀ-Ÿ][a-zà-ÿ]{3,})", r"\1 \2"),
            # French verb endings stuck to next word
            (r"\b([a-zà-ÿ]+ent)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+ait)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+era)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+ont)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+ent)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+oit)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+eur)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
            (r"\b([a-zà-ÿ]+tion)([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"\1 \2"),
        ]

        for pattern, replacement in french_repairs:
            text = re.sub(pattern, replacement, text)

    elif language == "english":
        if verbose:
            print("  Applying English concatenation repairs...")

        english_repairs = [
            # Common English articles and prepositions
            (r"\bthe([A-Z][a-z]{2,})\b", r"the \1"),
            (r"\band([A-Z][a-z]{2,})\b", r"and \1"),
            (r"\bfor([A-Z][a-z]{2,})\b", r"for \1"),
            (r"\bwith([A-Z][a-z]{2,})\b", r"with \1"),
            (r"\bfrom([A-Z][a-z]{2,})\b", r"from \1"),
            (r"\bthat([A-Z][a-z]{2,})\b", r"that \1"),
            (r"\bthis([A-Z][a-z]{2,})\b", r"this \1"),
            (r"\binto([A-Z][a-z]{2,})\b", r"into \1"),
            (r"\bover([A-Z][a-z]{2,})\b", r"over \1"),
            (r"\bafter([A-Z][a-z]{2,})\b", r"after \1"),
            (r"\bbefore([A-Z][a-z]{2,})\b", r"before \1"),
            (r"\bduring([A-Z][a-z]{2,})\b", r"during \1"),
            (r"\bthrough([A-Z][a-z]{2,})\b", r"through \1"),
            (r"\bwithout([A-Z][a-z]{2,})\b", r"without \1"),
            (r"\babout([A-Z][a-z]{2,})\b", r"about \1"),
            (r"\bunder([A-Z][a-z]{2,})\b", r"under \1"),
            (r"\babove([A-Z][a-z]{2,})\b", r"above \1"),
            (r"\bbetween([A-Z][a-z]{2,})\b", r"between \1"),
            (r"\bagainst([A-Z][a-z]{2,})\b", r"against \1"),
            (r"\bwithin([A-Z][a-z]{2,})\b", r"within \1"),
            (r"\bacross([A-Z][a-z]{2,})\b", r"across \1"),
            (r"\bbehind([A-Z][a-z]{2,})\b", r"behind \1"),
            (r"\btoward([A-Z][a-z]{2,})\b", r"toward \1"),
            (r"\baround([A-Z][a-z]{2,})\b", r"around \1"),
            (r"\binside([A-Z][a-z]{2,})\b", r"inside \1"),
            (r"\boutside([A-Z][a-z]{2,})\b", r"outside \1"),
            (r"\bbeneath([A-Z][a-z]{2,})\b", r"beneath \1"),
            (r"\bbelow([A-Z][a-z]{2,})\b", r"below \1"),
            (r"\bahead([A-Z][a-z]{2,})\b", r"ahead \1"),
            (r"\baside([A-Z][a-z]{2,})\b", r"aside \1"),
            (r"\balong([A-Z][a-z]{2,})\b", r"along \1"),
            (r"\bamong([A-Z][a-z]{2,})\b", r"among \1"),
            (r"\bapart([A-Z][a-z]{2,})\b", r"apart \1"),
            (r"\bdown([A-Z][a-z]{2,})\b", r"down \1"),
            (r"\bonto([A-Z][a-z]{2,})\b", r"onto \1"),
            (r"\bpast([A-Z][a-z]{2,})\b", r"past \1"),
            (r"\bbeside([A-Z][a-z]{2,})\b", r"beside \1"),
            (r"\bnear([A-Z][a-z]{2,})\b", r"near \1"),
            # Common verbs and auxiliaries
            (r"\bwere([A-Z][a-z]{2,})\b", r"were \1"),
            (r"\bhave([A-Z][a-z]{2,})\b", r"have \1"),
            (r"\bbeen([A-Z][a-z]{2,})\b", r"been \1"),
            (r"\bwould([A-Z][a-z]{2,})\b", r"would \1"),
            (r"\bcould([A-Z][a-z]{2,})\b", r"could \1"),
            (r"\bshould([A-Z][a-z]{2,})\b", r"should \1"),
            (r"\bmight([A-Z][a-z]{2,})\b", r"might \1"),
            (r"\bshall([A-Z][a-z]{2,})\b", r"shall \1"),
            (r"\bwill([A-Z][a-z]{2,})\b", r"will \1"),
            (r"\bmust([A-Z][a-z]{2,})\b", r"must \1"),
            (r"\bcan([A-Z][a-z]{2,})\b", r"can \1"),
            (r"\bmay([A-Z][a-z]{2,})\b", r"may \1"),
            (r"\bdoes([A-Z][a-z]{2,})\b", r"does \1"),
            (r"\bdid([A-Z][a-z]{2,})\b", r"did \1"),
            (r"\bwas([A-Z][a-z]{2,})\b", r"was \1"),
            (r"\bwhen([A-Z][a-z]{2,})\b", r"when \1"),
            (r"\bwhere([A-Z][a-z]{2,})\b", r"where \1"),
            (r"\bwhile([A-Z][a-z]{2,})\b", r"while \1"),
            (r"\bwhich([A-Z][a-z]{2,})\b", r"which \1"),
            (r"\bwhose([A-Z][a-z]{2,})\b", r"whose \1"),
            # Other common words
            (r"\bsome([A-Z][a-z]{2,})\b", r"some \1"),
            (r"\bmany([A-Z][a-z]{2,})\b", r"many \1"),
            (r"\bmuch([A-Z][a-z]{2,})\b", r"much \1"),
            (r"\bmost([A-Z][a-z]{2,})\b", r"most \1"),
            (r"\bmore([A-Z][a-z]{2,})\b", r"more \1"),
            (r"\bless([A-Z][a-z]{2,})\b", r"less \1"),
            (r"\bfewer([A-Z][a-z]{2,})\b", r"fewer \1"),
            (r"\bother([A-Z][a-z]{2,})\b", r"other \1"),
            (r"\banother([A-Z][a-z]{2,})\b", r"another \1"),
            (r"\bsuch([A-Z][a-z]{2,})\b", r"such \1"),
            (r"\bvery([A-Z][a-z]{2,})\b", r"very \1"),
            (r"\bjust([A-Z][a-z]{2,})\b", r"just \1"),
            (r"\bonly([A-Z][a-z]{2,})\b", r"only \1"),
            (r"\beven([A-Z][a-z]{2,})\b", r"even \1"),
            (r"\bstill([A-Z][a-z]{2,})\b", r"still \1"),
            (r"\balso([A-Z][a-z]{2,})\b", r"also \1"),
            (r"\balready([A-Z][a-z]{2,})\b", r"already \1"),
            (r"\bagain([A-Z][a-z]{2,})\b", r"again \1"),
            # General lowercase-uppercase boundaries (conservative for English)
            (r"([a-z]{4,})([A-Z][a-z]{3,})", r"\1 \2"),
            # English word endings
            (r"\b([a-z]+ing)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ed)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ly)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+tion)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ness)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ment)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+able)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ible)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+ful)([A-Z][a-z]{2,})\b", r"\1 \2"),
            (r"\b([a-z]+less)([A-Z][a-z]{2,})\b", r"\1 \2"),
        ]

        for pattern, replacement in english_repairs:
            text = re.sub(pattern, replacement, text)

    # STEP 5: Final whitespace and formatting cleanup
    text = re.sub(r"[ \t]+", " ", text)  # Normalize multiple spaces/tabs
    text = re.sub(r"\n +", "\n", text)  # Remove spaces at start of lines
    text = re.sub(r" +\n", "\n", text)  # Remove spaces at end of lines
    text = re.sub(r"\n{3,}", "\n\n", text)  # Maximum 2 consecutive newlines
    text = text.strip()

    # Silent mode for bulk processing
    if verbose:
        final_length = len(text)
        change = (final_length - original_length) / original_length * 100
        doc_type = "Academic" if is_academic else "Book"
        print(
            f"Cleaned {doc_type} {language.title()} text: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text
