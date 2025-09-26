# =============================================================================
# MODULAR OCR CLEANING PIPELINE
# =============================================================================
# Each function has ONE job - can be mixed and matched for optimal performance


def remove_ocr_artifacts(text, verbose=False):
    """
    STEP 1: Remove OCR scanning artifacts and noise.

    - CID artifacts from scanned PDFs
    - Control characters and encoding issues
    - Page numbers and headers/footers
    - URLs and email addresses

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Text with OCR artifacts removed
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"🔧 Removing OCR artifacts ({original_length:,} chars)")

    # Core OCR artifact removal
    text = re.sub(r"\(cid:\d+\)", "", text)  # CID artifacts
    text = re.sub(r"[\x00-\x08\x0b\x0c\x0e-\x1f\x7f-\x9f]", "", text)  # Control chars
    text = re.sub(r"^\s*\d+\s*$", "", text, flags=re.MULTILINE)  # Page numbers
    text = re.sub(r"^[A-Z\s]{10,}$", "", text, flags=re.MULTILINE)  # ALL CAPS headers
    text = re.sub(
        r"^\s*[-_=*]{3,}\s*$", "", text, flags=re.MULTILINE
    )  # Decorative lines
    text = re.sub(r"https?://[^\s]+", "", text)  # URLs
    text = re.sub(
        r"\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b", "", text
    )  # Emails

    # Basic whitespace cleanup
    text = re.sub(r"[ \t]+", " ", text)  # Multiple spaces/tabs
    text = re.sub(r"\n\s*\n\s*\n+", "\n\n", text)  # Max 2 newlines
    text = text.strip()

    if verbose:
        final_length = len(text)
        reduction = ((original_length - final_length) / original_length) * 100
        print(
            f"   ✅ OCR artifacts: {original_length:,} → {final_length:,} chars (-{reduction:.1f}%)"
        )

    return text


def remove_academic_metadata(text, verbose=False):
    """
    STEP 2: Remove academic publishing metadata and citations.

    - JSTOR/database download information
    - DOI links and stable URLs
    - Citation patterns and reference numbers
    - Journal-specific artifacts

    Args:
        text (str): Text with OCR artifacts already removed
        verbose (bool): Print processing info

    Returns:
        str: Text with academic metadata removed
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"🎓 Removing academic metadata ({original_length:,} chars)")

    # JSTOR and database artifacts
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
    text = re.sub(r"source:[^:]{0,200}stable url:", "", text, flags=re.IGNORECASE)
    text = re.sub(r"stable url: https?://[^\s]+", "", text, flags=re.IGNORECASE)
    text = re.sub(r"accessed: \d{2}/\d{2}/\d{4}", "", text, flags=re.IGNORECASE)
    text = re.sub(r"your use of the jstor archive", "", text, flags=re.IGNORECASE)
    text = re.sub(r"terms and conditions of use", "", text, flags=re.IGNORECASE)
    text = re.sub(
        r"http://www\.jstor\.org/page/info/about/policies/terms\.jsp", "", text
    )

    # DOI and academic identifiers
    text = re.sub(r"doi:\s*10\.\d+/[^\s]+", "", text, flags=re.IGNORECASE)
    text = re.sub(r"https://doi\.org/[^\s]+", "", text, flags=re.IGNORECASE)

    # Citation patterns
    text = re.sub(r"\[\d+[,\s\d]*\]", "", text)  # [1], [1,2,3]
    text = re.sub(r"\(\d{4}[a-z]?\)", "", text)  # (2020), (2020a)
    text = re.sub(r"\(pp?\.\s*\d+[-–]\d+\)", "", text)  # (pp. 123-145)
    text = re.sub(r"\(vol\.\s*\d+\)", "", text, flags=re.IGNORECASE)  # (vol. 3)

    # Journal-specific metadata
    text = re.sub(r"^author\(s\):", "", text, flags=re.IGNORECASE | re.MULTILINE)
    text = re.sub(r"^source:", "", text, flags=re.IGNORECASE | re.MULTILINE)
    text = re.sub(r"^published by:", "", text, flags=re.IGNORECASE | re.MULTILINE)
    text = re.sub(r"french historical studies", "", text, flags=re.IGNORECASE)

    if verbose:
        final_length = len(text)
        change = ((final_length - original_length) / original_length) * 100
        print(
            f"   ✅ Academic metadata: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


def remove_book_metadata(text, verbose=False):
    """
    STEP 2 (Alternative): Remove book publishing metadata.

    - Copyright and publication information
    - ISBN numbers and publisher details
    - Library catalog information

    Args:
        text (str): Text with OCR artifacts already removed
        verbose (bool): Print processing info

    Returns:
        str: Text with book metadata removed
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"📚 Removing book metadata ({original_length:,} chars)")

    # Book publishing metadata
    text = re.sub(r"first published \d{4}", "", text, flags=re.IGNORECASE)
    text = re.sub(r"copyright © \d{4}", "", text, flags=re.IGNORECASE)
    text = re.sub(r"all rights reserved", "", text, flags=re.IGNORECASE)
    text = re.sub(r"no part of this publication", "", text, flags=re.IGNORECASE)
    text = re.sub(r"isbn:?\s*\d+[-\d]*", "", text, flags=re.IGNORECASE)
    text = re.sub(r"printed|published|library|catalog", "", text, flags=re.IGNORECASE)

    if verbose:
        final_length = len(text)
        change = ((final_length - original_length) / original_length) * 100
        print(
            f"   ✅ Book metadata: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


def repair_french_concatenation(text, verbose=False):
    """
    STEP 3A: Repair French word concatenation issues.

    - French articles stuck to capitalized words (deVille → de Ville)
    - Common French prepositions and conjunctions
    - French verb endings and word boundaries

    Args:
        text (str): Text with metadata already removed
        verbose (bool): Print processing info

    Returns:
        str: Text with French concatenation repaired
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"🇫🇷 Repairing French concatenation ({original_length:,} chars)")

    # Essential French patterns (optimized for speed)
    french_repairs = [
        # Common articles and prepositions
        (r"\bde([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"de \1"),
        (r"\bdu([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"du \1"),
        (r"\ble([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"le \1"),
        (r"\bla([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"la \1"),
        (r"\bles([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"les \1"),
        (r"\bet([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"et \1"),
        (r"\bpour([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"pour \1"),
        (r"\bavec([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"avec \1"),
        (r"\bdans([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"dans \1"),
        (r"\bsur([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"sur \1"),
        # General word boundary patterns
        (r"([a-zà-ÿ]{3,})([A-ZÀ-Ÿ][a-zà-ÿ]{3,})", r"\1 \2"),
    ]

    for pattern, replacement in french_repairs:
        text = re.sub(pattern, replacement, text)

    if verbose:
        final_length = len(text)
        change = ((final_length - original_length) / original_length) * 100
        print(
            f"   ✅ French concatenation: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


def repair_english_concatenation(text, verbose=False):
    """
    STEP 3B: Repair English word concatenation issues.

    - English articles stuck to capitalized words (theVillage → the Village)
    - Common English prepositions and conjunctions
    - English word endings and boundaries

    Args:
        text (str): Text with metadata already removed
        verbose (bool): Print processing info

    Returns:
        str: Text with English concatenation repaired
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"🇺🇸 Repairing English concatenation ({original_length:,} chars)")

    # Essential English patterns (optimized for speed)
    english_repairs = [
        # Common articles and prepositions
        (r"\bthe([A-Z][a-z]{2,})\b", r"the \1"),
        (r"\band([A-Z][a-z]{2,})\b", r"and \1"),
        (r"\bfor([A-Z][a-z]{2,})\b", r"for \1"),
        (r"\bwith([A-Z][a-z]{2,})\b", r"with \1"),
        (r"\bfrom([A-Z][a-z]{2,})\b", r"from \1"),
        (r"\bthat([A-Z][a-z]{2,})\b", r"that \1"),
        (r"\bthis([A-Z][a-z]{2,})\b", r"this \1"),
        (r"\bwere([A-Z][a-z]{2,})\b", r"were \1"),
        (r"\bhave([A-Z][a-z]{2,})\b", r"have \1"),
        (r"\bbeen([A-Z][a-z]{2,})\b", r"been \1"),
        # General word boundary patterns
        (r"([a-z]{4,})([A-Z][a-z]{3,})", r"\1 \2"),
    ]

    for pattern, replacement in english_repairs:
        text = re.sub(pattern, replacement, text)

    if verbose:
        final_length = len(text)
        change = ((final_length - original_length) / original_length) * 100
        print(
            f"   ✅ English concatenation: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


def fix_line_breaks(text, verbose=False):
    """
    STEP 4: Fix line breaks and paragraph structure.

    - Remove hyphenation across lines
    - Merge broken words and sentences
    - Normalize paragraph breaks

    Args:
        text (str): Text with concatenation already repaired
        verbose (bool): Print processing info

    Returns:
        str: Text with proper line breaks and paragraphs
    """
    import re

    if not text or len(text.strip()) < 50:
        return text

    original_length = len(text)

    if verbose:
        print(f"📄 Fixing line breaks ({original_length:,} chars)")

    # Fix hyphenation and broken words
    text = re.sub(r"-\s*\n\s*", "", text)  # Remove hyphenation across lines
    text = re.sub(r"([a-zà-ÿ])\n\s*([a-zà-ÿ])", r"\1 \2", text)  # Merge broken words
    text = re.sub(
        r"([.!?])\n\s*([A-ZÀ-Ÿ])", r"\1\n\n\2", text
    )  # Preserve sentence boundaries

    # Normalize whitespace and paragraphs
    text = re.sub(r"[ \t]+", " ", text)  # Multiple spaces/tabs
    text = re.sub(r"\n +", "\n", text)  # Spaces at start of lines
    text = re.sub(r" +\n", "\n", text)  # Spaces at end of lines
    text = re.sub(r"\n{3,}", "\n\n", text)  # Max 2 consecutive newlines
    text = text.strip()

    if verbose:
        final_length = len(text)
        change = ((final_length - original_length) / original_length) * 100
        print(
            f"   ✅ Line breaks: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


# =============================================================================
# CONVENIENCE PIPELINE FUNCTIONS
# =============================================================================
# Pre-built pipelines for common use cases


def detect_document_type(text):
    """
    Auto-detect if document is academic paper or book.

    Args:
        text (str): Raw text to analyze

    Returns:
        str: "academic" or "book"
    """
    import re

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

    # Short line ratio (academic papers often have fragmented text)
    total_lines = len(text.split("\n"))
    short_lines = len([line for line in text.split("\n") if len(line.strip()) < 50])
    short_line_ratio = short_lines / total_lines if total_lines > 0 else 0

    is_academic = academic_indicators > book_indicators and (
        academic_indicators > 3 or short_line_ratio > 0.7
    )

    return "academic" if is_academic else "book"


def detect_language(text):
    """
    Auto-detect if text is primarily French or English.

    Args:
        text (str): Text to analyze

    Returns:
        str: "french" or "english"
    """
    import re

    # Count French words
    french_words = len(
        re.findall(
            r"\b(de|du|le|la|les|et|ou|pour|avec|dans|sur|par|à|au|aux|en|un|une|des|que|qui|ce|se|ne|son|sa|ses|mais|très|tout|tous|bien|plus|même|encore|donc|ainsi|depuis|entre|contre|sous|après|avant|pendant|sans|chez|vers|dès|selon|malgré|parmi|grâce|quant|tant|car|soit|ni|sinon)\b",
            text,
            re.IGNORECASE,
        )
    )

    # Count English words
    english_words = len(
        re.findall(
            r"\b(the|and|for|are|but|not|you|all|can|had|was|one|our|out|day|get|has|may|new|now|old|see|two|way|with|that|this|they|will|from|have|been|than|when|more|much|some|what|upon|many|such|also|very|make|made|like|only|over|each|most|well|long|even|find|give|take|come|work|just|great|good|know|same|still|call|back|keep|last|year|part|years|never|right|again|look|while|might|would|after|could|where|other|every|those|which|there|being|first|about|under|above|between|these|three|since|place|before|during|through|without|against|within|across|behind|toward|around|inside|beyond|outside|beneath|below|ahead|aside|along|among|apart|down|into|onto|past|beside|near)\b",
            text,
            re.IGNORECASE,
        )
    )

    return "french" if french_words > english_words else "english"


def clean_ocr_fast(text, verbose=False):
    """
    FAST pipeline: OCR artifacts only.

    Perfect for 23GB+ libraries where speed is critical.
    Steps: artifacts → line breaks

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Fast-cleaned text
    """
    if verbose:
        print("🚀 FAST pipeline: artifacts + line breaks only")

    text = remove_ocr_artifacts(text, verbose)
    text = fix_line_breaks(text, verbose)

    return text


def clean_ocr_academic(text, verbose=False):
    """
    ACADEMIC pipeline: Optimized for academic papers.

    Steps: artifacts → academic metadata → language detection → concatenation → line breaks

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Academic-optimized cleaned text
    """
    if verbose:
        print("🎓 ACADEMIC pipeline: full cleaning for papers")

    text = remove_ocr_artifacts(text, verbose)
    text = remove_academic_metadata(text, verbose)

    language = detect_language(text)
    if verbose:
        print(f"   🌍 Detected language: {language.title()}")

    if language == "french":
        text = repair_french_concatenation(text, verbose)
    else:
        text = repair_english_concatenation(text, verbose)

    text = fix_line_breaks(text, verbose)

    return text


def clean_ocr_book(text, verbose=False):
    """
    BOOK pipeline: Optimized for books and well-formatted documents.

    Steps: artifacts → book metadata → language detection → concatenation → line breaks

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Book-optimized cleaned text
    """
    if verbose:
        print("📚 BOOK pipeline: full cleaning for books")

    text = remove_ocr_artifacts(text, verbose)
    text = remove_book_metadata(text, verbose)

    language = detect_language(text)
    if verbose:
        print(f"   🌍 Detected language: {language.title()}")

    if language == "french":
        text = repair_french_concatenation(text, verbose)
    else:
        text = repair_english_concatenation(text, verbose)

    text = fix_line_breaks(text, verbose)

    return text


def clean_ocr_auto(text, verbose=False):
    """
    AUTO pipeline: Automatically detects document type and applies optimal cleaning.

    Steps: artifacts → type detection → appropriate metadata removal → language detection → concatenation → line breaks

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Auto-optimized cleaned text
    """
    if verbose:
        print("🤖 AUTO pipeline: detecting document type and language")

    text = remove_ocr_artifacts(text, verbose)

    doc_type = detect_document_type(text)
    if verbose:
        print(f"   📄 Detected type: {doc_type.title()}")

    if doc_type == "academic":
        text = remove_academic_metadata(text, verbose)
    else:
        text = remove_book_metadata(text, verbose)

    language = detect_language(text)
    if verbose:
        print(f"   🌍 Detected language: {language.title()}")

    if language == "french":
        text = repair_french_concatenation(text, verbose)
    else:
        text = repair_english_concatenation(text, verbose)

    text = fix_line_breaks(text, verbose)

    return text


# Legacy compatibility functions
def clean_ocr_basic(text, verbose=False):
    """Legacy function - use clean_ocr_fast() instead."""
    return clean_ocr_fast(text, verbose)


def clean_ocr_advanced(text, verbose=False):
    """Legacy function - use clean_ocr_auto() instead."""
    return clean_ocr_auto(text, verbose)
    """
    COMPREHENSIVE OCR cleaning - removes artifacts + repairs content.

    Perfect for:
    - Small collections where quality matters
    - Books and well-formatted documents
    - When you need maximum text quality
    - RAG systems requiring perfect input

    Args:
        text (str): Raw PDF text
        verbose (bool): Print processing info

    Returns:
        str: Fully cleaned and repaired text
    """
    import re

    if not text or len(text.strip()) < 100:
        return text

    original_length = len(text)

    # Start with basic cleaning
    text = clean_ocr_basic(text, verbose=False)

    if verbose:
        print(f"🔧 Advanced OCR cleaning ({original_length:,} chars)")

    # Auto-detect document type and language
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
        print(f"   📄 Detected: {doc_type} {language.title()} document")

    # Document-type specific cleaning
    if is_academic:
        if verbose:
            print("   🎓 Applying academic metadata removal...")

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
            print("   📚 Applying book format cleaning...")

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

    # Language-specific concatenation repair (LIGHT version)
    if verbose:
        print(f"   🔧 Applying {language} concatenation repairs...")

    if language == "french":
        # Essential French patterns only (top 10 most common)
        essential_french = [
            (r"\bde([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"de \1"),
            (r"\bdu([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"du \1"),
            (r"\ble([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"le \1"),
            (r"\bla([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"la \1"),
            (r"\bles([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"les \1"),
            (r"\bet([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"et \1"),
            (r"\bpour([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"pour \1"),
            (r"\bavec([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"avec \1"),
            (r"\bdans([A-ZÀ-Ÿ][a-zà-ÿ]{2,})\b", r"dans \1"),
            (r"([a-zà-ÿ]{3,})([A-ZÀ-Ÿ][a-zà-ÿ]{3,})", r"\1 \2"),  # General pattern
        ]

        for pattern, replacement in essential_french:
            text = re.sub(pattern, replacement, text)

    elif language == "english":
        # Essential English patterns only (top 10 most common)
        essential_english = [
            (r"\bthe([A-Z][a-z]{2,})\b", r"the \1"),
            (r"\band([A-Z][a-z]{2,})\b", r"and \1"),
            (r"\bfor([A-Z][a-z]{2,})\b", r"for \1"),
            (r"\bwith([A-Z][a-z]{2,})\b", r"with \1"),
            (r"\bfrom([A-Z][a-z]{2,})\b", r"from \1"),
            (r"\bthat([A-Z][a-z]{2,})\b", r"that \1"),
            (r"\bthis([A-Z][a-z]{2,})\b", r"this \1"),
            (r"\bwere([A-Z][a-z]{2,})\b", r"were \1"),
            (r"\bhave([A-Z][a-z]{2,})\b", r"have \1"),
            (r"([a-z]{4,})([A-Z][a-z]{3,})", r"\1 \2"),  # General pattern
        ]

        for pattern, replacement in essential_english:
            text = re.sub(pattern, replacement, text)

    # Final whitespace cleanup
    text = re.sub(r"[ \t]+", " ", text)  # Normalize multiple spaces/tabs
    text = re.sub(r"\n +", "\n", text)  # Remove spaces at start of lines
    text = re.sub(r" +\n", "\n", text)  # Remove spaces at end of lines
    text = re.sub(r"\n{3,}", "\n\n", text)  # Maximum 2 consecutive newlines
    text = text.strip()

    if verbose:
        final_length = len(text)
        change = (final_length - original_length) / original_length * 100
        doc_type = "Academic" if is_academic else "Book"
        print(
            f"   ✅ {doc_type} {language.title()}: {original_length:,} → {final_length:,} chars ({change:+.1f}%)"
        )

    return text


def clean_ocr_for_rag(text, verbose=False):
    """
    LEGACY FUNCTION - Use clean_ocr_basic() or clean_ocr_advanced() instead.

    This function maintained for backward compatibility.
    For new code, choose:
    - clean_ocr_basic() for speed (23GB libraries)
    - clean_ocr_advanced() for quality (small collections)
    """
    return clean_ocr_advanced(text, verbose)


# Performance comparison helper
def benchmark_cleaning_methods(text, iterations=5):
    """
    Compare performance of basic vs advanced cleaning methods.

    Args:
        text (str): Sample text to benchmark
        iterations (int): Number of timing runs

    Returns:
        dict: Performance results
    """
    import time

    if not text or len(text) < 1000:
        return {"error": "Text too short for meaningful benchmark"}

    results = {
        "text_length": len(text),
        "basic": {"times": [], "avg_time": 0, "result_length": 0},
        "advanced": {"times": [], "avg_time": 0, "result_length": 0},
        "speedup_factor": 0,
    }

    # Benchmark basic cleaning
    for i in range(iterations):
        start = time.time()
        basic_result = clean_ocr_basic(text, verbose=False)
        end = time.time()
        results["basic"]["times"].append(end - start)

    results["basic"]["avg_time"] = sum(results["basic"]["times"]) / iterations
    results["basic"]["result_length"] = len(basic_result)

    # Benchmark advanced cleaning
    for i in range(iterations):
        start = time.time()
        advanced_result = clean_ocr_advanced(text, verbose=False)
        end = time.time()
        results["advanced"]["times"].append(end - start)

    results["advanced"]["avg_time"] = sum(results["advanced"]["times"]) / iterations
    results["advanced"]["result_length"] = len(advanced_result)

    # Calculate speedup
    if results["advanced"]["avg_time"] > 0:
        results["speedup_factor"] = (
            results["advanced"]["avg_time"] / results["basic"]["avg_time"]
        )

    return results


# Smart cleaning function that auto-chooses method
def clean_ocr_smart(text, library_size_gb=1, verbose=False):
    """
    Automatically choose cleaning method based on library size and document characteristics.

    Args:
        text (str): Raw PDF text
        library_size_gb (float): Size of your library in GB (affects method choice)
        verbose (bool): Print processing info

    Returns:
        str: Cleaned text using optimal method
    """
    if verbose:
        print(f"📊 Smart OCR cleaning (Library: {library_size_gb}GB)")

    # Use basic cleaning for large libraries (speed priority)
    if library_size_gb >= 10:
        if verbose:
            print("   🚀 Large library detected - using BASIC cleaning for speed")
        return clean_ocr_basic(text, verbose)

    # Use advanced cleaning for small libraries (quality priority)
    else:
        if verbose:
            print("   🔧 Small library detected - using ADVANCED cleaning for quality")
        return clean_ocr_advanced(text, verbose)
