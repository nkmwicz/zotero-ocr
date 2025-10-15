#!/bin/bash

set -e  # Exit on any error
set -u  # Exit on undefined variables

TOTAL_FILES=136
CURRENT=0
SUCCESS=0
FAILED=0

LOG_FILE=/home/nkmwicz/home/research/zotero-ocr/ocr_scripts/ocr_log.txt
echo "OCR Processing Started: $(date)" > "$LOG_FILE"

CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9X3K4NSM - Muslim Ambassadors to Venice up to the 16th century..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/9X3K4NSM"
START_TIME=$(date +%s)

        source_pdf0=$(find . -name "*.pdf" -type f | head -1)
        source_file0="/home/nkmwicz/Desktop/zotero-storage-copy/9X3K4NSM/$source_pdf0"
        target_file0="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9X3K4NSM/$source_pdf0"
        file_name0="$source_pdf0"
        if [ -z "$source_pdf0" ]; then
            echo "ERROR: Source file not found: $source_file0" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file0"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9X3K4NSM" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9X3K4NSM"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9X3K4NSM"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9X3K4NSM"
            fi

            # OCR processing
            if [ -f "$target_file0" ]; then
                echo "SKIP: Output already exists: $file_name0" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file0"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/9X3K4NSM"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file0" "$target_file0"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name0 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file0" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 8IF4KLRD - Industrial Revolution [Consequences excerpts]..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/8IF4KLRD"
START_TIME=$(date +%s)

        source_pdf1=$(find . -name "*.pdf" -type f | head -1)
        source_file1="/home/nkmwicz/Desktop/zotero-storage-copy/8IF4KLRD/$source_pdf1"
        target_file1="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8IF4KLRD/$source_pdf1"
        file_name1="$source_pdf1"
        if [ -z "$source_pdf1" ]; then
            echo "ERROR: Source file not found: $source_file1" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file1"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8IF4KLRD" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8IF4KLRD"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8IF4KLRD"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8IF4KLRD"
            fi

            # OCR processing
            if [ -f "$target_file1" ]; then
                echo "SKIP: Output already exists: $file_name1" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file1"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/8IF4KLRD"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file1" "$target_file1"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name1 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file1" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 93QXHL5F - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/93QXHL5F"
START_TIME=$(date +%s)

        source_pdf2=$(find . -name "*.pdf" -type f | head -1)
        source_file2="/home/nkmwicz/Desktop/zotero-storage-copy/93QXHL5F/$source_pdf2"
        target_file2="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/93QXHL5F/$source_pdf2"
        file_name2="$source_pdf2"
        if [ -z "$source_pdf2" ]; then
            echo "ERROR: Source file not found: $source_file2" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file2"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/93QXHL5F" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/93QXHL5F"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/93QXHL5F"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/93QXHL5F"
            fi

            # OCR processing
            if [ -f "$target_file2" ]; then
                echo "SKIP: Output already exists: $file_name2" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file2"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/93QXHL5F"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file2" "$target_file2"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name2 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file2" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing GJC9X2R8 - Ursu La politique orientale de Francois Ier 1515-1547..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/GJC9X2R8"
START_TIME=$(date +%s)

        source_pdf3=$(find . -name "*.pdf" -type f | head -1)
        source_file3="/home/nkmwicz/Desktop/zotero-storage-copy/GJC9X2R8/$source_pdf3"
        target_file3="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GJC9X2R8/$source_pdf3"
        file_name3="$source_pdf3"
        if [ -z "$source_pdf3" ]; then
            echo "ERROR: Source file not found: $source_file3" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file3"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GJC9X2R8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GJC9X2R8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GJC9X2R8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GJC9X2R8"
            fi

            # OCR processing
            if [ -f "$target_file3" ]; then
                echo "SKIP: Output already exists: $file_name3" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file3"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/GJC9X2R8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file3" "$target_file3"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name3 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file3" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 56PHA8W7 - Citlak_Aysegul_Osmanli-Fransa iliskileri_Muteferrika Suleyman Aga'nin Fransa Elciligi_1669-1670_MA.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/56PHA8W7"
START_TIME=$(date +%s)

        source_pdf4=$(find . -name "*.pdf" -type f | head -1)
        source_file4="/home/nkmwicz/Desktop/zotero-storage-copy/56PHA8W7/$source_pdf4"
        target_file4="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/56PHA8W7/$source_pdf4"
        file_name4="$source_pdf4"
        if [ -z "$source_pdf4" ]; then
            echo "ERROR: Source file not found: $source_file4" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file4"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/56PHA8W7" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/56PHA8W7"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/56PHA8W7"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/56PHA8W7"
            fi

            # OCR processing
            if [ -f "$target_file4" ]; then
                echo "SKIP: Output already exists: $file_name4" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file4"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/56PHA8W7"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file4" "$target_file4"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name4 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file4" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MCQRDT29 - Muhimme 141 (1148).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/MCQRDT29"
START_TIME=$(date +%s)

        source_pdf5=$(find . -name "*.pdf" -type f | head -1)
        source_file5="/home/nkmwicz/Desktop/zotero-storage-copy/MCQRDT29/$source_pdf5"
        target_file5="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MCQRDT29/$source_pdf5"
        file_name5="$source_pdf5"
        if [ -z "$source_pdf5" ]; then
            echo "ERROR: Source file not found: $source_file5" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file5"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MCQRDT29" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MCQRDT29"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MCQRDT29"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MCQRDT29"
            fi

            # OCR processing
            if [ -f "$target_file5" ]; then
                echo "SKIP: Output already exists: $file_name5" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file5"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/MCQRDT29"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file5" "$target_file5"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name5 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file5" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing SHHITQCB - Muhimme 124 (1128).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/SHHITQCB"
START_TIME=$(date +%s)

        source_pdf6=$(find . -name "*.pdf" -type f | head -1)
        source_file6="/home/nkmwicz/Desktop/zotero-storage-copy/SHHITQCB/$source_pdf6"
        target_file6="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SHHITQCB/$source_pdf6"
        file_name6="$source_pdf6"
        if [ -z "$source_pdf6" ]; then
            echo "ERROR: Source file not found: $source_file6" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file6"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SHHITQCB" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SHHITQCB"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/SHHITQCB"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/SHHITQCB"
            fi

            # OCR processing
            if [ -f "$target_file6" ]; then
                echo "SKIP: Output already exists: $file_name6" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file6"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/SHHITQCB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file6" "$target_file6"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name6 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file6" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 7YAGWV36 - Muhimme 96-7 [1679-1680] [ed. Gunduz].pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/7YAGWV36"
START_TIME=$(date +%s)

        source_pdf7=$(find . -name "*.pdf" -type f | head -1)
        source_file7="/home/nkmwicz/Desktop/zotero-storage-copy/7YAGWV36/$source_pdf7"
        target_file7="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/7YAGWV36/$source_pdf7"
        file_name7="$source_pdf7"
        if [ -z "$source_pdf7" ]; then
            echo "ERROR: Source file not found: $source_file7" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file7"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/7YAGWV36" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/7YAGWV36"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/7YAGWV36"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/7YAGWV36"
            fi

            # OCR processing
            if [ -f "$target_file7" ]; then
                echo "SKIP: Output already exists: $file_name7" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file7"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/7YAGWV36"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file7" "$target_file7"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name7 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file7" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XAWTQXYS - Muhimme 75 (p1-171).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XAWTQXYS"
START_TIME=$(date +%s)

        source_pdf8=$(find . -name "*.pdf" -type f | head -1)
        source_file8="/home/nkmwicz/Desktop/zotero-storage-copy/XAWTQXYS/$source_pdf8"
        target_file8="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XAWTQXYS/$source_pdf8"
        file_name8="$source_pdf8"
        if [ -z "$source_pdf8" ]; then
            echo "ERROR: Source file not found: $source_file8" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file8"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XAWTQXYS" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XAWTQXYS"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XAWTQXYS"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XAWTQXYS"
            fi

            # OCR processing
            if [ -f "$target_file8" ]; then
                echo "SKIP: Output already exists: $file_name8" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file8"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XAWTQXYS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file8" "$target_file8"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name8 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file8" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 5E48NF8Q - Muhimme 51 (1583).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/5E48NF8Q"
START_TIME=$(date +%s)

        source_pdf9=$(find . -name "*.pdf" -type f | head -1)
        source_file9="/home/nkmwicz/Desktop/zotero-storage-copy/5E48NF8Q/$source_pdf9"
        target_file9="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5E48NF8Q/$source_pdf9"
        file_name9="$source_pdf9"
        if [ -z "$source_pdf9" ]; then
            echo "ERROR: Source file not found: $source_file9" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file9"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5E48NF8Q" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5E48NF8Q"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/5E48NF8Q"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/5E48NF8Q"
            fi

            # OCR processing
            if [ -f "$target_file9" ]; then
                echo "SKIP: Output already exists: $file_name9" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file9"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/5E48NF8Q"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file9" "$target_file9"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name9 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file9" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3MHUC7ET - Muhimme 51-YOK (1583).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/3MHUC7ET"
START_TIME=$(date +%s)

        source_pdf10=$(find . -name "*.pdf" -type f | head -1)
        source_file10="/home/nkmwicz/Desktop/zotero-storage-copy/3MHUC7ET/$source_pdf10"
        target_file10="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3MHUC7ET/$source_pdf10"
        file_name10="$source_pdf10"
        if [ -z "$source_pdf10" ]; then
            echo "ERROR: Source file not found: $source_file10" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file10"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3MHUC7ET" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3MHUC7ET"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3MHUC7ET"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3MHUC7ET"
            fi

            # OCR processing
            if [ -f "$target_file10" ]; then
                echo "SKIP: Output already exists: $file_name10" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file10"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/3MHUC7ET"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file10" "$target_file10"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name10 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file10" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing RLIR69BL - The forgotten frontier: a history of the sixteenth century Ibero-African frontier..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/RLIR69BL"
START_TIME=$(date +%s)

        source_pdf11=$(find . -name "*.pdf" -type f | head -1)
        source_file11="/home/nkmwicz/Desktop/zotero-storage-copy/RLIR69BL/$source_pdf11"
        target_file11="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RLIR69BL/$source_pdf11"
        file_name11="$source_pdf11"
        if [ -z "$source_pdf11" ]; then
            echo "ERROR: Source file not found: $source_file11" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file11"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RLIR69BL" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RLIR69BL"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RLIR69BL"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RLIR69BL"
            fi

            # OCR processing
            if [ -f "$target_file11" ]; then
                echo "SKIP: Output already exists: $file_name11" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file11"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/RLIR69BL"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file11" "$target_file11"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name11 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file11" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 5UUME6DT - Missions Impossible: Pomponne de Bellièvre and the Policies of Henry III..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/5UUME6DT"
START_TIME=$(date +%s)

        source_pdf12=$(find . -name "*.pdf" -type f | head -1)
        source_file12="/home/nkmwicz/Desktop/zotero-storage-copy/5UUME6DT/$source_pdf12"
        target_file12="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5UUME6DT/$source_pdf12"
        file_name12="$source_pdf12"
        if [ -z "$source_pdf12" ]; then
            echo "ERROR: Source file not found: $source_file12" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file12"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5UUME6DT" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/5UUME6DT"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/5UUME6DT"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/5UUME6DT"
            fi

            # OCR processing
            if [ -f "$target_file12" ]; then
                echo "SKIP: Output already exists: $file_name12" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file12"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/5UUME6DT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file12" "$target_file12"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name12 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file12" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9AVIX9QT - Crusading Commonplaces: La Noue, Lucinge and Rhetoric against the Turks..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/9AVIX9QT"
START_TIME=$(date +%s)

        source_pdf13=$(find . -name "*.pdf" -type f | head -1)
        source_file13="/home/nkmwicz/Desktop/zotero-storage-copy/9AVIX9QT/$source_pdf13"
        target_file13="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9AVIX9QT/$source_pdf13"
        file_name13="$source_pdf13"
        if [ -z "$source_pdf13" ]; then
            echo "ERROR: Source file not found: $source_file13" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file13"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9AVIX9QT" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9AVIX9QT"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9AVIX9QT"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9AVIX9QT"
            fi

            # OCR processing
            if [ -f "$target_file13" ]; then
                echo "SKIP: Output already exists: $file_name13" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file13"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/9AVIX9QT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file13" "$target_file13"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name13 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file13" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing THBFU9JY - Inventaires des Archives de la Chambre de commerce de Marseille.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/THBFU9JY"
START_TIME=$(date +%s)

        source_pdf14=$(find . -name "*.pdf" -type f | head -1)
        source_file14="/home/nkmwicz/Desktop/zotero-storage-copy/THBFU9JY/$source_pdf14"
        target_file14="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/THBFU9JY/$source_pdf14"
        file_name14="$source_pdf14"
        if [ -z "$source_pdf14" ]; then
            echo "ERROR: Source file not found: $source_file14" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file14"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/THBFU9JY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/THBFU9JY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/THBFU9JY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/THBFU9JY"
            fi

            # OCR processing
            if [ -f "$target_file14" ]; then
                echo "SKIP: Output already exists: $file_name14" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file14"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/THBFU9JY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file14" "$target_file14"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name14 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file14" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing I5DHZ9B9 - Colonization, Piracy, and Trade - Unknown.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/I5DHZ9B9"
START_TIME=$(date +%s)

        source_pdf15=$(find . -name "*.pdf" -type f | head -1)
        source_file15="/home/nkmwicz/Desktop/zotero-storage-copy/I5DHZ9B9/$source_pdf15"
        target_file15="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5DHZ9B9/$source_pdf15"
        file_name15="$source_pdf15"
        if [ -z "$source_pdf15" ]; then
            echo "ERROR: Source file not found: $source_file15" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file15"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5DHZ9B9" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5DHZ9B9"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5DHZ9B9"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5DHZ9B9"
            fi

            # OCR processing
            if [ -f "$target_file15" ]; then
                echo "SKIP: Output already exists: $file_name15" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file15"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/I5DHZ9B9"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file15" "$target_file15"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name15 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file15" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 8EN5CRZ4 - L''Histoire universelle du sieur d''Aubigné......"
cd "/home/nkmwicz/Desktop/zotero-storage-copy/8EN5CRZ4"
START_TIME=$(date +%s)

        source_pdf16=$(find . -name "*.pdf" -type f | head -1)
        source_file16="/home/nkmwicz/Desktop/zotero-storage-copy/8EN5CRZ4/$source_pdf16"
        target_file16="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8EN5CRZ4/$source_pdf16"
        file_name16="$source_pdf16"
        if [ -z "$source_pdf16" ]; then
            echo "ERROR: Source file not found: $source_file16" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file16"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8EN5CRZ4" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8EN5CRZ4"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8EN5CRZ4"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8EN5CRZ4"
            fi

            # OCR processing
            if [ -f "$target_file16" ]; then
                echo "SKIP: Output already exists: $file_name16" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file16"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/8EN5CRZ4"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language fra "$source_file16" "$target_file16"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name16 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file16" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UPEMRQ2N - De la république des Turcs : & là où l'occasion s'offrera, des moeurs & loy de tous les Muhamédistes..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UPEMRQ2N"
START_TIME=$(date +%s)

        source_pdf17=$(find . -name "*.pdf" -type f | head -1)
        source_file17="/home/nkmwicz/Desktop/zotero-storage-copy/UPEMRQ2N/$source_pdf17"
        target_file17="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UPEMRQ2N/$source_pdf17"
        file_name17="$source_pdf17"
        if [ -z "$source_pdf17" ]; then
            echo "ERROR: Source file not found: $source_file17" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file17"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UPEMRQ2N" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UPEMRQ2N"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UPEMRQ2N"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UPEMRQ2N"
            fi

            # OCR processing
            if [ -f "$target_file17" ]; then
                echo "SKIP: Output already exists: $file_name17" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file17"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UPEMRQ2N"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file17" "$target_file17"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name17 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file17" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WD7QAWT8 - Les envoyés ottomans àla cour de France: d'une présence controversée à l'exaltation d'une alliance (XVe-XVIIIe siècles)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/WD7QAWT8"
START_TIME=$(date +%s)

        source_pdf18=$(find . -name "*.pdf" -type f | head -1)
        source_file18="/home/nkmwicz/Desktop/zotero-storage-copy/WD7QAWT8/$source_pdf18"
        target_file18="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WD7QAWT8/$source_pdf18"
        file_name18="$source_pdf18"
        if [ -z "$source_pdf18" ]; then
            echo "ERROR: Source file not found: $source_file18" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file18"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WD7QAWT8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WD7QAWT8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WD7QAWT8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WD7QAWT8"
            fi

            # OCR processing
            if [ -f "$target_file18" ]; then
                echo "SKIP: Output already exists: $file_name18" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file18"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/WD7QAWT8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file18" "$target_file18"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name18 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file18" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing CQDBIS9B - calendarstatepa00browgoog.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/CQDBIS9B"
START_TIME=$(date +%s)

        source_pdf19=$(find . -name "*.pdf" -type f | head -1)
        source_file19="/home/nkmwicz/Desktop/zotero-storage-copy/CQDBIS9B/$source_pdf19"
        target_file19="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CQDBIS9B/$source_pdf19"
        file_name19="$source_pdf19"
        if [ -z "$source_pdf19" ]; then
            echo "ERROR: Source file not found: $source_file19" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file19"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CQDBIS9B" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CQDBIS9B"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CQDBIS9B"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CQDBIS9B"
            fi

            # OCR processing
            if [ -f "$target_file19" ]; then
                echo "SKIP: Output already exists: $file_name19" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file19"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/CQDBIS9B"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file19" "$target_file19"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name19 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file19" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing J82TM6Z4 - Zar-o_Zur_Gold_and_Force_Safavid_Iran_as.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/J82TM6Z4"
START_TIME=$(date +%s)

        source_pdf20=$(find . -name "*.pdf" -type f | head -1)
        source_file20="/home/nkmwicz/Desktop/zotero-storage-copy/J82TM6Z4/$source_pdf20"
        target_file20="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/J82TM6Z4/$source_pdf20"
        file_name20="$source_pdf20"
        if [ -z "$source_pdf20" ]; then
            echo "ERROR: Source file not found: $source_file20" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file20"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/J82TM6Z4" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/J82TM6Z4"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/J82TM6Z4"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/J82TM6Z4"
            fi

            # OCR processing
            if [ -f "$target_file20" ]; then
                echo "SKIP: Output already exists: $file_name20" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file20"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/J82TM6Z4"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file20" "$target_file20"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name20 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file20" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9XJ4PIWC - Princes, politics, and religion, 1547-1589..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/9XJ4PIWC"
START_TIME=$(date +%s)

        source_pdf21=$(find . -name "*.pdf" -type f | head -1)
        source_file21="/home/nkmwicz/Desktop/zotero-storage-copy/9XJ4PIWC/$source_pdf21"
        target_file21="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9XJ4PIWC/$source_pdf21"
        file_name21="$source_pdf21"
        if [ -z "$source_pdf21" ]; then
            echo "ERROR: Source file not found: $source_file21" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file21"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9XJ4PIWC" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9XJ4PIWC"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9XJ4PIWC"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9XJ4PIWC"
            fi

            # OCR processing
            if [ -f "$target_file21" ]; then
                echo "SKIP: Output already exists: $file_name21" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file21"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/9XJ4PIWC"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file21" "$target_file21"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name21 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file21" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 73V38NCM - Les navigations peregrinations et voyages, faicts en la Turquie, par Nicolas de Nicolay daulphinoys, seigneur d'Arfeville ... contenants plusieurs singularitez que l'autheur y a veu & obserué: le tout distingué en quatre liures: auec soixante figures au naturel tant d'hommes, que de femmes selon la diuersité des nations, leur port, maintien, habits, loyx, religion & façon de viure, tant en temps de paix comme de guerre: auec plusieurs belles & memorables histoires, advenuës en nostre temps..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/73V38NCM"
START_TIME=$(date +%s)

        source_pdf22=$(find . -name "*.pdf" -type f | head -1)
        source_file22="/home/nkmwicz/Desktop/zotero-storage-copy/73V38NCM/$source_pdf22"
        target_file22="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/73V38NCM/$source_pdf22"
        file_name22="$source_pdf22"
        if [ -z "$source_pdf22" ]; then
            echo "ERROR: Source file not found: $source_file22" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file22"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/73V38NCM" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/73V38NCM"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/73V38NCM"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/73V38NCM"
            fi

            # OCR processing
            if [ -f "$target_file22" ]; then
                echo "SKIP: Output already exists: $file_name22" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file22"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/73V38NCM"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file22" "$target_file22"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name22 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file22" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 8F7FTAYQ - The Gap Between Science and Policy in The Bell Curve..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/8F7FTAYQ"
START_TIME=$(date +%s)

        source_pdf23=$(find . -name "*.pdf" -type f | head -1)
        source_file23="/home/nkmwicz/Desktop/zotero-storage-copy/8F7FTAYQ/$source_pdf23"
        target_file23="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8F7FTAYQ/$source_pdf23"
        file_name23="$source_pdf23"
        if [ -z "$source_pdf23" ]; then
            echo "ERROR: Source file not found: $source_file23" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file23"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8F7FTAYQ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/8F7FTAYQ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8F7FTAYQ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/8F7FTAYQ"
            fi

            # OCR processing
            if [ -f "$target_file23" ]; then
                echo "SKIP: Output already exists: $file_name23" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file23"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/8F7FTAYQ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file23" "$target_file23"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name23 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file23" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ZUVZNVA3 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZUVZNVA3"
START_TIME=$(date +%s)

        source_pdf24=$(find . -name "*.pdf" -type f | head -1)
        source_file24="/home/nkmwicz/Desktop/zotero-storage-copy/ZUVZNVA3/$source_pdf24"
        target_file24="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZUVZNVA3/$source_pdf24"
        file_name24="$source_pdf24"
        if [ -z "$source_pdf24" ]; then
            echo "ERROR: Source file not found: $source_file24" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file24"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZUVZNVA3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZUVZNVA3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZUVZNVA3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZUVZNVA3"
            fi

            # OCR processing
            if [ -f "$target_file24" ]; then
                echo "SKIP: Output already exists: $file_name24" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file24"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZUVZNVA3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file24" "$target_file24"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name24 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file24" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 4BWWCABL - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/4BWWCABL"
START_TIME=$(date +%s)

        source_pdf25=$(find . -name "*.pdf" -type f | head -1)
        source_file25="/home/nkmwicz/Desktop/zotero-storage-copy/4BWWCABL/$source_pdf25"
        target_file25="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/4BWWCABL/$source_pdf25"
        file_name25="$source_pdf25"
        if [ -z "$source_pdf25" ]; then
            echo "ERROR: Source file not found: $source_file25" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file25"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/4BWWCABL" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/4BWWCABL"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/4BWWCABL"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/4BWWCABL"
            fi

            # OCR processing
            if [ -f "$target_file25" ]; then
                echo "SKIP: Output already exists: $file_name25" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file25"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/4BWWCABL"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file25" "$target_file25"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name25 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file25" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 479NNEH8 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/479NNEH8"
START_TIME=$(date +%s)

        source_pdf26=$(find . -name "*.pdf" -type f | head -1)
        source_file26="/home/nkmwicz/Desktop/zotero-storage-copy/479NNEH8/$source_pdf26"
        target_file26="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/479NNEH8/$source_pdf26"
        file_name26="$source_pdf26"
        if [ -z "$source_pdf26" ]; then
            echo "ERROR: Source file not found: $source_file26" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file26"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/479NNEH8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/479NNEH8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/479NNEH8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/479NNEH8"
            fi

            # OCR processing
            if [ -f "$target_file26" ]; then
                echo "SKIP: Output already exists: $file_name26" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file26"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/479NNEH8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file26" "$target_file26"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name26 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file26" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing B4GCAM3M - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/B4GCAM3M"
START_TIME=$(date +%s)

        source_pdf27=$(find . -name "*.pdf" -type f | head -1)
        source_file27="/home/nkmwicz/Desktop/zotero-storage-copy/B4GCAM3M/$source_pdf27"
        target_file27="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4GCAM3M/$source_pdf27"
        file_name27="$source_pdf27"
        if [ -z "$source_pdf27" ]; then
            echo "ERROR: Source file not found: $source_file27" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file27"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4GCAM3M" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4GCAM3M"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4GCAM3M"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4GCAM3M"
            fi

            # OCR processing
            if [ -f "$target_file27" ]; then
                echo "SKIP: Output already exists: $file_name27" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file27"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/B4GCAM3M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file27" "$target_file27"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name27 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file27" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing BF88EXXG - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/BF88EXXG"
START_TIME=$(date +%s)

        source_pdf28=$(find . -name "*.pdf" -type f | head -1)
        source_file28="/home/nkmwicz/Desktop/zotero-storage-copy/BF88EXXG/$source_pdf28"
        target_file28="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BF88EXXG/$source_pdf28"
        file_name28="$source_pdf28"
        if [ -z "$source_pdf28" ]; then
            echo "ERROR: Source file not found: $source_file28" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file28"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BF88EXXG" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BF88EXXG"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BF88EXXG"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BF88EXXG"
            fi

            # OCR processing
            if [ -f "$target_file28" ]; then
                echo "SKIP: Output already exists: $file_name28" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file28"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/BF88EXXG"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file28" "$target_file28"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name28 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file28" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ZBH5H6QU - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZBH5H6QU"
START_TIME=$(date +%s)

        source_pdf29=$(find . -name "*.pdf" -type f | head -1)
        source_file29="/home/nkmwicz/Desktop/zotero-storage-copy/ZBH5H6QU/$source_pdf29"
        target_file29="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZBH5H6QU/$source_pdf29"
        file_name29="$source_pdf29"
        if [ -z "$source_pdf29" ]; then
            echo "ERROR: Source file not found: $source_file29" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file29"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZBH5H6QU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZBH5H6QU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZBH5H6QU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZBH5H6QU"
            fi

            # OCR processing
            if [ -f "$target_file29" ]; then
                echo "SKIP: Output already exists: $file_name29" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file29"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZBH5H6QU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file29" "$target_file29"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name29 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file29" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EV4ICQST - Ancient Egypt: A Very Short Introduction..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/EV4ICQST"
START_TIME=$(date +%s)

        source_pdf30=$(find . -name "*.pdf" -type f | head -1)
        source_file30="/home/nkmwicz/Desktop/zotero-storage-copy/EV4ICQST/$source_pdf30"
        target_file30="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EV4ICQST/$source_pdf30"
        file_name30="$source_pdf30"
        if [ -z "$source_pdf30" ]; then
            echo "ERROR: Source file not found: $source_file30" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file30"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EV4ICQST" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EV4ICQST"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EV4ICQST"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EV4ICQST"
            fi

            # OCR processing
            if [ -f "$target_file30" ]; then
                echo "SKIP: Output already exists: $file_name30" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file30"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/EV4ICQST"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file30" "$target_file30"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name30 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file30" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PEJDL2B3 - An_Ottoman_Report_about_Martin_Luther-- Christine Isom-Verhaaren.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/PEJDL2B3"
START_TIME=$(date +%s)

        source_pdf31=$(find . -name "*.pdf" -type f | head -1)
        source_file31="/home/nkmwicz/Desktop/zotero-storage-copy/PEJDL2B3/$source_pdf31"
        target_file31="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PEJDL2B3/$source_pdf31"
        file_name31="$source_pdf31"
        if [ -z "$source_pdf31" ]; then
            echo "ERROR: Source file not found: $source_file31" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file31"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PEJDL2B3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PEJDL2B3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PEJDL2B3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PEJDL2B3"
            fi

            # OCR processing
            if [ -f "$target_file31" ]; then
                echo "SKIP: Output already exists: $file_name31" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file31"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/PEJDL2B3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file31" "$target_file31"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name31 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file31" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing IZTFBBPY - Renaissance Go-Betweens: Cultural Exchange in Early Modern Europe..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/IZTFBBPY"
START_TIME=$(date +%s)

        source_pdf32=$(find . -name "*.pdf" -type f | head -1)
        source_file32="/home/nkmwicz/Desktop/zotero-storage-copy/IZTFBBPY/$source_pdf32"
        target_file32="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/IZTFBBPY/$source_pdf32"
        file_name32="$source_pdf32"
        if [ -z "$source_pdf32" ]; then
            echo "ERROR: Source file not found: $source_file32" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file32"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/IZTFBBPY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/IZTFBBPY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/IZTFBBPY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/IZTFBBPY"
            fi

            # OCR processing
            if [ -f "$target_file32" ]; then
                echo "SKIP: Output already exists: $file_name32" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file32"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/IZTFBBPY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file32" "$target_file32"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name32 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file32" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XZ3XISCU - Gifts in motion: Ottoman-Safavid cultural exchange, 1501-1618..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XZ3XISCU"
START_TIME=$(date +%s)

        source_pdf33=$(find . -name "*.pdf" -type f | head -1)
        source_file33="/home/nkmwicz/Desktop/zotero-storage-copy/XZ3XISCU/$source_pdf33"
        target_file33="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XZ3XISCU/$source_pdf33"
        file_name33="$source_pdf33"
        if [ -z "$source_pdf33" ]; then
            echo "ERROR: Source file not found: $source_file33" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file33"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XZ3XISCU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XZ3XISCU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XZ3XISCU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XZ3XISCU"
            fi

            # OCR processing
            if [ -f "$target_file33" ]; then
                echo "SKIP: Output already exists: $file_name33" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file33"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XZ3XISCU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file33" "$target_file33"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name33 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file33" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing VRNCPXU7 - Catherine de Medici's Turkish Ladies-in-Waiting: A Dilemma in Franco-Ottoman Diplomtaic Relations..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/VRNCPXU7"
START_TIME=$(date +%s)

        source_pdf34=$(find . -name "*.pdf" -type f | head -1)
        source_file34="/home/nkmwicz/Desktop/zotero-storage-copy/VRNCPXU7/$source_pdf34"
        target_file34="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VRNCPXU7/$source_pdf34"
        file_name34="$source_pdf34"
        if [ -z "$source_pdf34" ]; then
            echo "ERROR: Source file not found: $source_file34" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file34"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VRNCPXU7" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VRNCPXU7"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VRNCPXU7"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VRNCPXU7"
            fi

            # OCR processing
            if [ -f "$target_file34" ]; then
                echo "SKIP: Output already exists: $file_name34" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file34"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/VRNCPXU7"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file34" "$target_file34"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name34 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file34" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XVICWEGR - Assimilation and Racialism in Seventeenth and Eighteenth-Century French Colonial Policy..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XVICWEGR"
START_TIME=$(date +%s)

        source_pdf35=$(find . -name "*.pdf" -type f | head -1)
        source_file35="/home/nkmwicz/Desktop/zotero-storage-copy/XVICWEGR/$source_pdf35"
        target_file35="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XVICWEGR/$source_pdf35"
        file_name35="$source_pdf35"
        if [ -z "$source_pdf35" ]; then
            echo "ERROR: Source file not found: $source_file35" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file35"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XVICWEGR" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XVICWEGR"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XVICWEGR"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XVICWEGR"
            fi

            # OCR processing
            if [ -f "$target_file35" ]; then
                echo "SKIP: Output already exists: $file_name35" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file35"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XVICWEGR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file35" "$target_file35"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name35 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file35" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing AGX42NX7 - Icons and Private Devotion Among Eighteenth-Century Moscow Townsfolk..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/AGX42NX7"
START_TIME=$(date +%s)

        source_pdf36=$(find . -name "*.pdf" -type f | head -1)
        source_file36="/home/nkmwicz/Desktop/zotero-storage-copy/AGX42NX7/$source_pdf36"
        target_file36="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/AGX42NX7/$source_pdf36"
        file_name36="$source_pdf36"
        if [ -z "$source_pdf36" ]; then
            echo "ERROR: Source file not found: $source_file36" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file36"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/AGX42NX7" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/AGX42NX7"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/AGX42NX7"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/AGX42NX7"
            fi

            # OCR processing
            if [ -f "$target_file36" ]; then
                echo "SKIP: Output already exists: $file_name36" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file36"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/AGX42NX7"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file36" "$target_file36"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name36 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file36" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EE7VXG84 - Tarih-i Selaniki..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/EE7VXG84"
START_TIME=$(date +%s)

        source_pdf37=$(find . -name "*.pdf" -type f | head -1)
        source_file37="/home/nkmwicz/Desktop/zotero-storage-copy/EE7VXG84/$source_pdf37"
        target_file37="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EE7VXG84/$source_pdf37"
        file_name37="$source_pdf37"
        if [ -z "$source_pdf37" ]; then
            echo "ERROR: Source file not found: $source_file37" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file37"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EE7VXG84" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EE7VXG84"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EE7VXG84"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EE7VXG84"
            fi

            # OCR processing
            if [ -f "$target_file37" ]; then
                echo "SKIP: Output already exists: $file_name37" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file37"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/EE7VXG84"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file37" "$target_file37"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name37 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file37" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 53T2GUZ3 - Justifier l'Injustifiable: l'alliance turque au miroir de la chrétienté (XVIeXVIIe siècles)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/53T2GUZ3"
START_TIME=$(date +%s)

        source_pdf38=$(find . -name "*.pdf" -type f | head -1)
        source_file38="/home/nkmwicz/Desktop/zotero-storage-copy/53T2GUZ3/$source_pdf38"
        target_file38="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/53T2GUZ3/$source_pdf38"
        file_name38="$source_pdf38"
        if [ -z "$source_pdf38" ]; then
            echo "ERROR: Source file not found: $source_file38" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file38"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/53T2GUZ3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/53T2GUZ3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/53T2GUZ3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/53T2GUZ3"
            fi

            # OCR processing
            if [ -f "$target_file38" ]; then
                echo "SKIP: Output already exists: $file_name38" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file38"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/53T2GUZ3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file38" "$target_file38"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name38 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file38" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MVZAR3EP - Brey.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/MVZAR3EP"
START_TIME=$(date +%s)

        source_pdf39=$(find . -name "*.pdf" -type f | head -1)
        source_file39="/home/nkmwicz/Desktop/zotero-storage-copy/MVZAR3EP/$source_pdf39"
        target_file39="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MVZAR3EP/$source_pdf39"
        file_name39="$source_pdf39"
        if [ -z "$source_pdf39" ]; then
            echo "ERROR: Source file not found: $source_file39" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file39"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MVZAR3EP" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MVZAR3EP"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MVZAR3EP"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MVZAR3EP"
            fi

            # OCR processing
            if [ -f "$target_file39" ]; then
                echo "SKIP: Output already exists: $file_name39" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file39"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/MVZAR3EP"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file39" "$target_file39"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name39 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file39" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing SLTRT7DB - The Wars of Religion, 1562-1598..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/SLTRT7DB"
START_TIME=$(date +%s)

        source_pdf40=$(find . -name "*.pdf" -type f | head -1)
        source_file40="/home/nkmwicz/Desktop/zotero-storage-copy/SLTRT7DB/$source_pdf40"
        target_file40="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SLTRT7DB/$source_pdf40"
        file_name40="$source_pdf40"
        if [ -z "$source_pdf40" ]; then
            echo "ERROR: Source file not found: $source_file40" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file40"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SLTRT7DB" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/SLTRT7DB"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/SLTRT7DB"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/SLTRT7DB"
            fi

            # OCR processing
            if [ -f "$target_file40" ]; then
                echo "SKIP: Output already exists: $file_name40" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file40"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/SLTRT7DB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file40" "$target_file40"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name40 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file40" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 2NSJ2AFB - Social Geography of French Protestantism..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/2NSJ2AFB"
START_TIME=$(date +%s)

        source_pdf41=$(find . -name "*.pdf" -type f | head -1)
        source_file41="/home/nkmwicz/Desktop/zotero-storage-copy/2NSJ2AFB/$source_pdf41"
        target_file41="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/2NSJ2AFB/$source_pdf41"
        file_name41="$source_pdf41"
        if [ -z "$source_pdf41" ]; then
            echo "ERROR: Source file not found: $source_file41" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file41"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/2NSJ2AFB" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/2NSJ2AFB"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/2NSJ2AFB"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/2NSJ2AFB"
            fi

            # OCR processing
            if [ -f "$target_file41" ]; then
                echo "SKIP: Output already exists: $file_name41" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file41"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/2NSJ2AFB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file41" "$target_file41"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name41 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file41" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XV8JE4XQ - The South..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XV8JE4XQ"
START_TIME=$(date +%s)

        source_pdf42=$(find . -name "*.pdf" -type f | head -1)
        source_file42="/home/nkmwicz/Desktop/zotero-storage-copy/XV8JE4XQ/$source_pdf42"
        target_file42="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XV8JE4XQ/$source_pdf42"
        file_name42="$source_pdf42"
        if [ -z "$source_pdf42" ]; then
            echo "ERROR: Source file not found: $source_file42" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file42"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XV8JE4XQ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XV8JE4XQ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XV8JE4XQ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XV8JE4XQ"
            fi

            # OCR processing
            if [ -f "$target_file42" ]; then
                echo "SKIP: Output already exists: $file_name42" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file42"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XV8JE4XQ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file42" "$target_file42"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name42 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file42" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 6227ASQ2 - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/6227ASQ2"
START_TIME=$(date +%s)

        source_pdf43=$(find . -name "*.pdf" -type f | head -1)
        source_file43="/home/nkmwicz/Desktop/zotero-storage-copy/6227ASQ2/$source_pdf43"
        target_file43="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6227ASQ2/$source_pdf43"
        file_name43="$source_pdf43"
        if [ -z "$source_pdf43" ]; then
            echo "ERROR: Source file not found: $source_file43" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file43"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6227ASQ2" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6227ASQ2"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6227ASQ2"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6227ASQ2"
            fi

            # OCR processing
            if [ -f "$target_file43" ]; then
                echo "SKIP: Output already exists: $file_name43" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file43"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/6227ASQ2"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file43" "$target_file43"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name43 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file43" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing T7I848CX - The Army of Flanders and the Spanish Road 1567-1659: The Logistics of Spanish Victory and Defeat in the Low Countries' War..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/T7I848CX"
START_TIME=$(date +%s)

        source_pdf44=$(find . -name "*.pdf" -type f | head -1)
        source_file44="/home/nkmwicz/Desktop/zotero-storage-copy/T7I848CX/$source_pdf44"
        target_file44="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/T7I848CX/$source_pdf44"
        file_name44="$source_pdf44"
        if [ -z "$source_pdf44" ]; then
            echo "ERROR: Source file not found: $source_file44" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file44"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/T7I848CX" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/T7I848CX"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/T7I848CX"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/T7I848CX"
            fi

            # OCR processing
            if [ -f "$target_file44" ]; then
                echo "SKIP: Output already exists: $file_name44" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file44"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/T7I848CX"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file44" "$target_file44"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name44 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file44" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing RR27EW2V - Akyavas. Yirmisekiz Celebi Mehmed Efendi'nin Fransa Sefaretnamesi.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/RR27EW2V"
START_TIME=$(date +%s)

        source_pdf45=$(find . -name "*.pdf" -type f | head -1)
        source_file45="/home/nkmwicz/Desktop/zotero-storage-copy/RR27EW2V/$source_pdf45"
        target_file45="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RR27EW2V/$source_pdf45"
        file_name45="$source_pdf45"
        if [ -z "$source_pdf45" ]; then
            echo "ERROR: Source file not found: $source_file45" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file45"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RR27EW2V" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RR27EW2V"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RR27EW2V"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RR27EW2V"
            fi

            # OCR processing
            if [ -f "$target_file45" ]; then
                echo "SKIP: Output already exists: $file_name45" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file45"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/RR27EW2V"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file45" "$target_file45"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name45 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file45" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing D29QI29M - Ahkam Defteri 906-1501 [ed. Emecen].pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/D29QI29M"
START_TIME=$(date +%s)

        source_pdf46=$(find . -name "*.pdf" -type f | head -1)
        source_file46="/home/nkmwicz/Desktop/zotero-storage-copy/D29QI29M/$source_pdf46"
        target_file46="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D29QI29M/$source_pdf46"
        file_name46="$source_pdf46"
        if [ -z "$source_pdf46" ]; then
            echo "ERROR: Source file not found: $source_file46" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file46"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D29QI29M" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D29QI29M"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/D29QI29M"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/D29QI29M"
            fi

            # OCR processing
            if [ -f "$target_file46" ]; then
                echo "SKIP: Output already exists: $file_name46" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file46"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/D29QI29M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file46" "$target_file46"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name46 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file46" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing P4RHKKHL - Muhimme 141.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/P4RHKKHL"
START_TIME=$(date +%s)

        source_pdf47=$(find . -name "*.pdf" -type f | head -1)
        source_file47="/home/nkmwicz/Desktop/zotero-storage-copy/P4RHKKHL/$source_pdf47"
        target_file47="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P4RHKKHL/$source_pdf47"
        file_name47="$source_pdf47"
        if [ -z "$source_pdf47" ]; then
            echo "ERROR: Source file not found: $source_file47" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file47"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P4RHKKHL" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P4RHKKHL"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/P4RHKKHL"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/P4RHKKHL"
            fi

            # OCR processing
            if [ -f "$target_file47" ]; then
                echo "SKIP: Output already exists: $file_name47" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file47"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/P4RHKKHL"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file47" "$target_file47"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name47 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file47" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing GQZ3KV5R - Muhimme 109-YOK.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/GQZ3KV5R"
START_TIME=$(date +%s)

        source_pdf48=$(find . -name "*.pdf" -type f | head -1)
        source_file48="/home/nkmwicz/Desktop/zotero-storage-copy/GQZ3KV5R/$source_pdf48"
        target_file48="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GQZ3KV5R/$source_pdf48"
        file_name48="$source_pdf48"
        if [ -z "$source_pdf48" ]; then
            echo "ERROR: Source file not found: $source_file48" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file48"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GQZ3KV5R" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GQZ3KV5R"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GQZ3KV5R"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GQZ3KV5R"
            fi

            # OCR processing
            if [ -f "$target_file48" ]; then
                echo "SKIP: Output already exists: $file_name48" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file48"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/GQZ3KV5R"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file48" "$target_file48"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name48 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file48" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ZLYSZLU5 - Muhimme 107.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZLYSZLU5"
START_TIME=$(date +%s)

        source_pdf49=$(find . -name "*.pdf" -type f | head -1)
        source_file49="/home/nkmwicz/Desktop/zotero-storage-copy/ZLYSZLU5/$source_pdf49"
        target_file49="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZLYSZLU5/$source_pdf49"
        file_name49="$source_pdf49"
        if [ -z "$source_pdf49" ]; then
            echo "ERROR: Source file not found: $source_file49" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file49"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZLYSZLU5" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZLYSZLU5"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZLYSZLU5"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZLYSZLU5"
            fi

            # OCR processing
            if [ -f "$target_file49" ]; then
                echo "SKIP: Output already exists: $file_name49" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file49"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZLYSZLU5"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file49" "$target_file49"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name49 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file49" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing D2J7HGAY - Muhimme 84.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/D2J7HGAY"
START_TIME=$(date +%s)

        source_pdf50=$(find . -name "*.pdf" -type f | head -1)
        source_file50="/home/nkmwicz/Desktop/zotero-storage-copy/D2J7HGAY/$source_pdf50"
        target_file50="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D2J7HGAY/$source_pdf50"
        file_name50="$source_pdf50"
        if [ -z "$source_pdf50" ]; then
            echo "ERROR: Source file not found: $source_file50" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file50"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D2J7HGAY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/D2J7HGAY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/D2J7HGAY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/D2J7HGAY"
            fi

            # OCR processing
            if [ -f "$target_file50" ]; then
                echo "SKIP: Output already exists: $file_name50" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file50"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/D2J7HGAY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file50" "$target_file50"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name50 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file50" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing F2IGQ6ND - Muhimme 63 (1587-1588).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/F2IGQ6ND"
START_TIME=$(date +%s)

        source_pdf51=$(find . -name "*.pdf" -type f | head -1)
        source_file51="/home/nkmwicz/Desktop/zotero-storage-copy/F2IGQ6ND/$source_pdf51"
        target_file51="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F2IGQ6ND/$source_pdf51"
        file_name51="$source_pdf51"
        if [ -z "$source_pdf51" ]; then
            echo "ERROR: Source file not found: $source_file51" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file51"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F2IGQ6ND" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F2IGQ6ND"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/F2IGQ6ND"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/F2IGQ6ND"
            fi

            # OCR processing
            if [ -f "$target_file51" ]; then
                echo "SKIP: Output already exists: $file_name51" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file51"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/F2IGQ6ND"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file51" "$target_file51"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name51 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file51" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WAMZQJUY - Muhimme 13 Zeyli (1727).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/WAMZQJUY"
START_TIME=$(date +%s)

        source_pdf52=$(find . -name "*.pdf" -type f | head -1)
        source_file52="/home/nkmwicz/Desktop/zotero-storage-copy/WAMZQJUY/$source_pdf52"
        target_file52="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WAMZQJUY/$source_pdf52"
        file_name52="$source_pdf52"
        if [ -z "$source_pdf52" ]; then
            echo "ERROR: Source file not found: $source_file52" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file52"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WAMZQJUY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WAMZQJUY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WAMZQJUY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WAMZQJUY"
            fi

            # OCR processing
            if [ -f "$target_file52" ]; then
                echo "SKIP: Output already exists: $file_name52" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file52"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/WAMZQJUY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file52" "$target_file52"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name52 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file52" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MLDGR7BT - Understanding diversity and mentoring diverse students.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/MLDGR7BT"
START_TIME=$(date +%s)

        source_pdf53=$(find . -name "*.pdf" -type f | head -1)
        source_file53="/home/nkmwicz/Desktop/zotero-storage-copy/MLDGR7BT/$source_pdf53"
        target_file53="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MLDGR7BT/$source_pdf53"
        file_name53="$source_pdf53"
        if [ -z "$source_pdf53" ]; then
            echo "ERROR: Source file not found: $source_file53" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file53"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MLDGR7BT" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MLDGR7BT"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MLDGR7BT"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MLDGR7BT"
            fi

            # OCR processing
            if [ -f "$target_file53" ]; then
                echo "SKIP: Output already exists: $file_name53" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file53"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/MLDGR7BT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file53" "$target_file53"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name53 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file53" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing LBXY7GVI - Paleographie des ecritures cursives en france du xv au xvii siecle..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/LBXY7GVI"
START_TIME=$(date +%s)

        source_pdf54=$(find . -name "*.pdf" -type f | head -1)
        source_file54="/home/nkmwicz/Desktop/zotero-storage-copy/LBXY7GVI/$source_pdf54"
        target_file54="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LBXY7GVI/$source_pdf54"
        file_name54="$source_pdf54"
        if [ -z "$source_pdf54" ]; then
            echo "ERROR: Source file not found: $source_file54" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file54"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LBXY7GVI" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LBXY7GVI"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/LBXY7GVI"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/LBXY7GVI"
            fi

            # OCR processing
            if [ -f "$target_file54" ]; then
                echo "SKIP: Output already exists: $file_name54" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file54"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/LBXY7GVI"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file54" "$target_file54"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name54 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file54" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing I4SY92HM - Henri Pirenne - Mohammed and Charlemagne (1959).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/I4SY92HM"
START_TIME=$(date +%s)

        source_pdf55=$(find . -name "*.pdf" -type f | head -1)
        source_file55="/home/nkmwicz/Desktop/zotero-storage-copy/I4SY92HM/$source_pdf55"
        target_file55="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I4SY92HM/$source_pdf55"
        file_name55="$source_pdf55"
        if [ -z "$source_pdf55" ]; then
            echo "ERROR: Source file not found: $source_file55" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file55"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I4SY92HM" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I4SY92HM"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I4SY92HM"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I4SY92HM"
            fi

            # OCR processing
            if [ -f "$target_file55" ]; then
                echo "SKIP: Output already exists: $file_name55" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file55"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/I4SY92HM"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file55" "$target_file55"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name55 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file55" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing YK3PE754 - The-Adventures-Of-Ibn-Battuta.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/YK3PE754"
START_TIME=$(date +%s)

        source_pdf56=$(find . -name "*.pdf" -type f | head -1)
        source_file56="/home/nkmwicz/Desktop/zotero-storage-copy/YK3PE754/$source_pdf56"
        target_file56="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YK3PE754/$source_pdf56"
        file_name56="$source_pdf56"
        if [ -z "$source_pdf56" ]; then
            echo "ERROR: Source file not found: $source_file56" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file56"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YK3PE754" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YK3PE754"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/YK3PE754"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/YK3PE754"
            fi

            # OCR processing
            if [ -f "$target_file56" ]; then
                echo "SKIP: Output already exists: $file_name56" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file56"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/YK3PE754"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file56" "$target_file56"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name56 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file56" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing BNIY6RS4 - Between Two Continental Wars: the Ottoman Naval Preparations in 1590-1592..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/BNIY6RS4"
START_TIME=$(date +%s)

        source_pdf57=$(find . -name "*.pdf" -type f | head -1)
        source_file57="/home/nkmwicz/Desktop/zotero-storage-copy/BNIY6RS4/$source_pdf57"
        target_file57="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BNIY6RS4/$source_pdf57"
        file_name57="$source_pdf57"
        if [ -z "$source_pdf57" ]; then
            echo "ERROR: Source file not found: $source_file57" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file57"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BNIY6RS4" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BNIY6RS4"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BNIY6RS4"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BNIY6RS4"
            fi

            # OCR processing
            if [ -f "$target_file57" ]; then
                echo "SKIP: Output already exists: $file_name57" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file57"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/BNIY6RS4"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file57" "$target_file57"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name57 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file57" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing GR3LU674 - Calendar of State Papers and Manuscripts Relating to English Affairs, existing in the Archives and Collections of Venice, and in Other Libraries in Northern Italy..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/GR3LU674"
START_TIME=$(date +%s)

        source_pdf58=$(find . -name "*.pdf" -type f | head -1)
        source_file58="/home/nkmwicz/Desktop/zotero-storage-copy/GR3LU674/$source_pdf58"
        target_file58="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GR3LU674/$source_pdf58"
        file_name58="$source_pdf58"
        if [ -z "$source_pdf58" ]; then
            echo "ERROR: Source file not found: $source_file58" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file58"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GR3LU674" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/GR3LU674"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GR3LU674"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/GR3LU674"
            fi

            # OCR processing
            if [ -f "$target_file58" ]; then
                echo "SKIP: Output already exists: $file_name58" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file58"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/GR3LU674"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file58" "$target_file58"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name58 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file58" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9PLDEPEZ - The Travels Of John Sanderson In The Levant (1584-1602)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/9PLDEPEZ"
START_TIME=$(date +%s)

        source_pdf59=$(find . -name "*.pdf" -type f | head -1)
        source_file59="/home/nkmwicz/Desktop/zotero-storage-copy/9PLDEPEZ/$source_pdf59"
        target_file59="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9PLDEPEZ/$source_pdf59"
        file_name59="$source_pdf59"
        if [ -z "$source_pdf59" ]; then
            echo "ERROR: Source file not found: $source_file59" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file59"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9PLDEPEZ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9PLDEPEZ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9PLDEPEZ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9PLDEPEZ"
            fi

            # OCR processing
            if [ -f "$target_file59" ]; then
                echo "SKIP: Output already exists: $file_name59" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file59"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/9PLDEPEZ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file59" "$target_file59"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name59 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file59" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3HBMR8NQ - Missions Diplomatiques de Claude du Bourg..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/3HBMR8NQ"
START_TIME=$(date +%s)

        source_pdf60=$(find . -name "*.pdf" -type f | head -1)
        source_file60="/home/nkmwicz/Desktop/zotero-storage-copy/3HBMR8NQ/$source_pdf60"
        target_file60="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3HBMR8NQ/$source_pdf60"
        file_name60="$source_pdf60"
        if [ -z "$source_pdf60" ]; then
            echo "ERROR: Source file not found: $source_file60" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file60"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3HBMR8NQ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3HBMR8NQ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3HBMR8NQ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3HBMR8NQ"
            fi

            # OCR processing
            if [ -f "$target_file60" ]; then
                echo "SKIP: Output already exists: $file_name60" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file60"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/3HBMR8NQ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file60" "$target_file60"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name60 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file60" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ISDW59XD - The Huguenots..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ISDW59XD"
START_TIME=$(date +%s)

        source_pdf61=$(find . -name "*.pdf" -type f | head -1)
        source_file61="/home/nkmwicz/Desktop/zotero-storage-copy/ISDW59XD/$source_pdf61"
        target_file61="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ISDW59XD/$source_pdf61"
        file_name61="$source_pdf61"
        if [ -z "$source_pdf61" ]; then
            echo "ERROR: Source file not found: $source_file61" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file61"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ISDW59XD" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ISDW59XD"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ISDW59XD"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ISDW59XD"
            fi

            # OCR processing
            if [ -f "$target_file61" ]; then
                echo "SKIP: Output already exists: $file_name61" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file61"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ISDW59XD"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file61" "$target_file61"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name61 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file61" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing TF65LMGS - Southeastern Europe under Ottoman Rule, 1354-1804..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/TF65LMGS"
START_TIME=$(date +%s)

        source_pdf62=$(find . -name "*.pdf" -type f | head -1)
        source_file62="/home/nkmwicz/Desktop/zotero-storage-copy/TF65LMGS/$source_pdf62"
        target_file62="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TF65LMGS/$source_pdf62"
        file_name62="$source_pdf62"
        if [ -z "$source_pdf62" ]; then
            echo "ERROR: Source file not found: $source_file62" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file62"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TF65LMGS" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TF65LMGS"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TF65LMGS"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TF65LMGS"
            fi

            # OCR processing
            if [ -f "$target_file62" ]; then
                echo "SKIP: Output already exists: $file_name62" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file62"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/TF65LMGS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file62" "$target_file62"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name62 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file62" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing QKP67EI3 - I "Documenti Turchi" dell'Archivio di Stato di Venezia..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/QKP67EI3"
START_TIME=$(date +%s)

        source_pdf63=$(find . -name "*.pdf" -type f | head -1)
        source_file63="/home/nkmwicz/Desktop/zotero-storage-copy/QKP67EI3/$source_pdf63"
        target_file63="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QKP67EI3/$source_pdf63"
        file_name63="$source_pdf63"
        if [ -z "$source_pdf63" ]; then
            echo "ERROR: Source file not found: $source_file63" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file63"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QKP67EI3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QKP67EI3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/QKP67EI3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/QKP67EI3"
            fi

            # OCR processing
            if [ -f "$target_file63" ]; then
                echo "SKIP: Output already exists: $file_name63" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file63"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/QKP67EI3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file63" "$target_file63"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name63 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file63" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing VIWEG2SN - The Bell Curve: Too Smooth to be True..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/VIWEG2SN"
START_TIME=$(date +%s)

        source_pdf64=$(find . -name "*.pdf" -type f | head -1)
        source_file64="/home/nkmwicz/Desktop/zotero-storage-copy/VIWEG2SN/$source_pdf64"
        target_file64="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VIWEG2SN/$source_pdf64"
        file_name64="$source_pdf64"
        if [ -z "$source_pdf64" ]; then
            echo "ERROR: Source file not found: $source_file64" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file64"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VIWEG2SN" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VIWEG2SN"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VIWEG2SN"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VIWEG2SN"
            fi

            # OCR processing
            if [ -f "$target_file64" ]; then
                echo "SKIP: Output already exists: $file_name64" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file64"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/VIWEG2SN"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file64" "$target_file64"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name64 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file64" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing B9CHN9XR - Mémoires de la vie de François de Scepeaux: sire de Vielleville et comte de Duretal, maréchal de ......"
cd "/home/nkmwicz/Desktop/zotero-storage-copy/B9CHN9XR"
START_TIME=$(date +%s)

        source_pdf65=$(find . -name "*.pdf" -type f | head -1)
        source_file65="/home/nkmwicz/Desktop/zotero-storage-copy/B9CHN9XR/$source_pdf65"
        target_file65="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B9CHN9XR/$source_pdf65"
        file_name65="$source_pdf65"
        if [ -z "$source_pdf65" ]; then
            echo "ERROR: Source file not found: $source_file65" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file65"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B9CHN9XR" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B9CHN9XR"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B9CHN9XR"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B9CHN9XR"
            fi

            # OCR processing
            if [ -f "$target_file65" ]; then
                echo "SKIP: Output already exists: $file_name65" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file65"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/B9CHN9XR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file65" "$target_file65"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name65 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file65" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing TN5EITB3 - Western Travelers, Eastern Antiquities, and the Image of the Turk in Early Modern Europe..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/TN5EITB3"
START_TIME=$(date +%s)

        source_pdf66=$(find . -name "*.pdf" -type f | head -1)
        source_file66="/home/nkmwicz/Desktop/zotero-storage-copy/TN5EITB3/$source_pdf66"
        target_file66="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TN5EITB3/$source_pdf66"
        file_name66="$source_pdf66"
        if [ -z "$source_pdf66" ]; then
            echo "ERROR: Source file not found: $source_file66" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file66"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TN5EITB3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TN5EITB3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TN5EITB3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TN5EITB3"
            fi

            # OCR processing
            if [ -f "$target_file66" ]; then
                echo "SKIP: Output already exists: $file_name66" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file66"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/TN5EITB3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file66" "$target_file66"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name66 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file66" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing G5P87E8M - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/G5P87E8M"
START_TIME=$(date +%s)

        source_pdf67=$(find . -name "*.pdf" -type f | head -1)
        source_file67="/home/nkmwicz/Desktop/zotero-storage-copy/G5P87E8M/$source_pdf67"
        target_file67="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G5P87E8M/$source_pdf67"
        file_name67="$source_pdf67"
        if [ -z "$source_pdf67" ]; then
            echo "ERROR: Source file not found: $source_file67" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file67"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G5P87E8M" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G5P87E8M"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G5P87E8M"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G5P87E8M"
            fi

            # OCR processing
            if [ -f "$target_file67" ]; then
                echo "SKIP: Output already exists: $file_name67" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file67"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/G5P87E8M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file67" "$target_file67"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name67 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file67" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing QNXW9DBZ - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/QNXW9DBZ"
START_TIME=$(date +%s)

        source_pdf68=$(find . -name "*.pdf" -type f | head -1)
        source_file68="/home/nkmwicz/Desktop/zotero-storage-copy/QNXW9DBZ/$source_pdf68"
        target_file68="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QNXW9DBZ/$source_pdf68"
        file_name68="$source_pdf68"
        if [ -z "$source_pdf68" ]; then
            echo "ERROR: Source file not found: $source_file68" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file68"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QNXW9DBZ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/QNXW9DBZ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/QNXW9DBZ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/QNXW9DBZ"
            fi

            # OCR processing
            if [ -f "$target_file68" ]; then
                echo "SKIP: Output already exists: $file_name68" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file68"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/QNXW9DBZ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file68" "$target_file68"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name68 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file68" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XUBEJCTB - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XUBEJCTB"
START_TIME=$(date +%s)

        source_pdf69=$(find . -name "*.pdf" -type f | head -1)
        source_file69="/home/nkmwicz/Desktop/zotero-storage-copy/XUBEJCTB/$source_pdf69"
        target_file69="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XUBEJCTB/$source_pdf69"
        file_name69="$source_pdf69"
        if [ -z "$source_pdf69" ]; then
            echo "ERROR: Source file not found: $source_file69" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file69"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XUBEJCTB" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XUBEJCTB"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XUBEJCTB"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XUBEJCTB"
            fi

            # OCR processing
            if [ -f "$target_file69" ]; then
                echo "SKIP: Output already exists: $file_name69" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file69"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XUBEJCTB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file69" "$target_file69"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name69 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file69" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 36QXTIFY - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/36QXTIFY"
START_TIME=$(date +%s)

        source_pdf70=$(find . -name "*.pdf" -type f | head -1)
        source_file70="/home/nkmwicz/Desktop/zotero-storage-copy/36QXTIFY/$source_pdf70"
        target_file70="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/36QXTIFY/$source_pdf70"
        file_name70="$source_pdf70"
        if [ -z "$source_pdf70" ]; then
            echo "ERROR: Source file not found: $source_file70" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file70"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/36QXTIFY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/36QXTIFY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/36QXTIFY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/36QXTIFY"
            fi

            # OCR processing
            if [ -f "$target_file70" ]; then
                echo "SKIP: Output already exists: $file_name70" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file70"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/36QXTIFY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file70" "$target_file70"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name70 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file70" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing Q54SLTSI - Plato: A Very Short Introduction..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/Q54SLTSI"
START_TIME=$(date +%s)

        source_pdf71=$(find . -name "*.pdf" -type f | head -1)
        source_file71="/home/nkmwicz/Desktop/zotero-storage-copy/Q54SLTSI/$source_pdf71"
        target_file71="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Q54SLTSI/$source_pdf71"
        file_name71="$source_pdf71"
        if [ -z "$source_pdf71" ]; then
            echo "ERROR: Source file not found: $source_file71" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file71"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Q54SLTSI" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Q54SLTSI"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/Q54SLTSI"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/Q54SLTSI"
            fi

            # OCR processing
            if [ -f "$target_file71" ]; then
                echo "SKIP: Output already exists: $file_name71" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file71"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/Q54SLTSI"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file71" "$target_file71"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name71 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file71" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ZMBZ7N8B - Oeuvre complètes..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZMBZ7N8B"
START_TIME=$(date +%s)

        source_pdf72=$(find . -name "*.pdf" -type f | head -1)
        source_file72="/home/nkmwicz/Desktop/zotero-storage-copy/ZMBZ7N8B/$source_pdf72"
        target_file72="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZMBZ7N8B/$source_pdf72"
        file_name72="$source_pdf72"
        if [ -z "$source_pdf72" ]; then
            echo "ERROR: Source file not found: $source_file72" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file72"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZMBZ7N8B" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZMBZ7N8B"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZMBZ7N8B"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZMBZ7N8B"
            fi

            # OCR processing
            if [ -f "$target_file72" ]; then
                echo "SKIP: Output already exists: $file_name72" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file72"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZMBZ7N8B"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file72" "$target_file72"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name72 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file72" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing JG2TS3WB - Inalcik. A Case Study in Renaissance Diplomacy 342-368.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/JG2TS3WB"
START_TIME=$(date +%s)

        source_pdf73=$(find . -name "*.pdf" -type f | head -1)
        source_file73="/home/nkmwicz/Desktop/zotero-storage-copy/JG2TS3WB/$source_pdf73"
        target_file73="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JG2TS3WB/$source_pdf73"
        file_name73="$source_pdf73"
        if [ -z "$source_pdf73" ]; then
            echo "ERROR: Source file not found: $source_file73" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file73"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JG2TS3WB" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JG2TS3WB"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JG2TS3WB"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JG2TS3WB"
            fi

            # OCR processing
            if [ -f "$target_file73" ]; then
                echo "SKIP: Output already exists: $file_name73" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file73"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/JG2TS3WB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file73" "$target_file73"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name73 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file73" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing S4YPN4RV - Négociations de la France dans le Levant..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/S4YPN4RV"
START_TIME=$(date +%s)

        source_pdf74=$(find . -name "*.pdf" -type f | head -1)
        source_file74="/home/nkmwicz/Desktop/zotero-storage-copy/S4YPN4RV/$source_pdf74"
        target_file74="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/S4YPN4RV/$source_pdf74"
        file_name74="$source_pdf74"
        if [ -z "$source_pdf74" ]; then
            echo "ERROR: Source file not found: $source_file74" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file74"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/S4YPN4RV" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/S4YPN4RV"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/S4YPN4RV"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/S4YPN4RV"
            fi

            # OCR processing
            if [ -f "$target_file74" ]; then
                echo "SKIP: Output already exists: $file_name74" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file74"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/S4YPN4RV"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file74" "$target_file74"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name74 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file74" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UJFI55VP - A Rome of One's Own: A Reflection on Cultural Geography and Identity in the Lands of Rum..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UJFI55VP"
START_TIME=$(date +%s)

        source_pdf75=$(find . -name "*.pdf" -type f | head -1)
        source_file75="/home/nkmwicz/Desktop/zotero-storage-copy/UJFI55VP/$source_pdf75"
        target_file75="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UJFI55VP/$source_pdf75"
        file_name75="$source_pdf75"
        if [ -z "$source_pdf75" ]; then
            echo "ERROR: Source file not found: $source_file75" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file75"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UJFI55VP" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UJFI55VP"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UJFI55VP"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UJFI55VP"
            fi

            # OCR processing
            if [ -f "$target_file75" ]; then
                echo "SKIP: Output already exists: $file_name75" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file75"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UJFI55VP"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file75" "$target_file75"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name75 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file75" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing C7PIXBT8 - Recueil des traités de la Porte ottomane avec les puissances étrangères depuis le premier traité conclu en 1536, entre Suléyman I et François I, jusqu'à nos jours...."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/C7PIXBT8"
START_TIME=$(date +%s)

        source_pdf76=$(find . -name "*.pdf" -type f | head -1)
        source_file76="/home/nkmwicz/Desktop/zotero-storage-copy/C7PIXBT8/$source_pdf76"
        target_file76="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7PIXBT8/$source_pdf76"
        file_name76="$source_pdf76"
        if [ -z "$source_pdf76" ]; then
            echo "ERROR: Source file not found: $source_file76" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file76"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7PIXBT8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7PIXBT8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7PIXBT8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7PIXBT8"
            fi

            # OCR processing
            if [ -f "$target_file76" ]; then
                echo "SKIP: Output already exists: $file_name76" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file76"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/C7PIXBT8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file76" "$target_file76"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name76 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file76" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing B4ZII4VX - Locating the Ottomans Among Early Modern Empires..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/B4ZII4VX"
START_TIME=$(date +%s)

        source_pdf77=$(find . -name "*.pdf" -type f | head -1)
        source_file77="/home/nkmwicz/Desktop/zotero-storage-copy/B4ZII4VX/$source_pdf77"
        target_file77="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4ZII4VX/$source_pdf77"
        file_name77="$source_pdf77"
        if [ -z "$source_pdf77" ]; then
            echo "ERROR: Source file not found: $source_file77" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file77"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4ZII4VX" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4ZII4VX"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4ZII4VX"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/B4ZII4VX"
            fi

            # OCR processing
            if [ -f "$target_file77" ]; then
                echo "SKIP: Output already exists: $file_name77" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file77"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/B4ZII4VX"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file77" "$target_file77"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name77 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file77" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing E7QUBUE3 - Family Matters: The Emigration of Elderly Jews from Vienna to the United States, 1938–1941..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/E7QUBUE3"
START_TIME=$(date +%s)

        source_pdf78=$(find . -name "*.pdf" -type f | head -1)
        source_file78="/home/nkmwicz/Desktop/zotero-storage-copy/E7QUBUE3/$source_pdf78"
        target_file78="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E7QUBUE3/$source_pdf78"
        file_name78="$source_pdf78"
        if [ -z "$source_pdf78" ]; then
            echo "ERROR: Source file not found: $source_file78" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file78"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E7QUBUE3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E7QUBUE3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/E7QUBUE3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/E7QUBUE3"
            fi

            # OCR processing
            if [ -f "$target_file78" ]; then
                echo "SKIP: Output already exists: $file_name78" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file78"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/E7QUBUE3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file78" "$target_file78"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name78 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file78" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UKXE6NSX - Reading the Power of Printed Orality in Afghanistan: Popular Pashto Literature as Historical Evidence and Public Intervention..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UKXE6NSX"
START_TIME=$(date +%s)

        source_pdf79=$(find . -name "*.pdf" -type f | head -1)
        source_file79="/home/nkmwicz/Desktop/zotero-storage-copy/UKXE6NSX/$source_pdf79"
        target_file79="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UKXE6NSX/$source_pdf79"
        file_name79="$source_pdf79"
        if [ -z "$source_pdf79" ]; then
            echo "ERROR: Source file not found: $source_file79" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file79"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UKXE6NSX" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UKXE6NSX"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UKXE6NSX"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UKXE6NSX"
            fi

            # OCR processing
            if [ -f "$target_file79" ]; then
                echo "SKIP: Output already exists: $file_name79" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file79"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UKXE6NSX"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file79" "$target_file79"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name79 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file79" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PVCTI8ZP - Memoires de Mess martin et guillaume de bellay vols. 1 et 2.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/PVCTI8ZP"
START_TIME=$(date +%s)

        source_pdf80=$(find . -name "*.pdf" -type f | head -1)
        source_file80="/home/nkmwicz/Desktop/zotero-storage-copy/PVCTI8ZP/$source_pdf80"
        target_file80="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PVCTI8ZP/$source_pdf80"
        file_name80="$source_pdf80"
        if [ -z "$source_pdf80" ]; then
            echo "ERROR: Source file not found: $source_file80" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file80"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PVCTI8ZP" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PVCTI8ZP"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PVCTI8ZP"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PVCTI8ZP"
            fi

            # OCR processing
            if [ -f "$target_file80" ]; then
                echo "SKIP: Output already exists: $file_name80" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file80"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/PVCTI8ZP"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file80" "$target_file80"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name80 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file80" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 365UWQQK - Striker Finishing Drills..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/365UWQQK"
START_TIME=$(date +%s)

        source_pdf81=$(find . -name "*.pdf" -type f | head -1)
        source_file81="/home/nkmwicz/Desktop/zotero-storage-copy/365UWQQK/$source_pdf81"
        target_file81="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/365UWQQK/$source_pdf81"
        file_name81="$source_pdf81"
        if [ -z "$source_pdf81" ]; then
            echo "ERROR: Source file not found: $source_file81" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file81"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/365UWQQK" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/365UWQQK"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/365UWQQK"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/365UWQQK"
            fi

            # OCR processing
            if [ -f "$target_file81" ]; then
                echo "SKIP: Output already exists: $file_name81" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file81"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/365UWQQK"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file81" "$target_file81"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name81 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file81" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing K2QPJSVE - The Reformation in European Perspective..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/K2QPJSVE"
START_TIME=$(date +%s)

        source_pdf82=$(find . -name "*.pdf" -type f | head -1)
        source_file82="/home/nkmwicz/Desktop/zotero-storage-copy/K2QPJSVE/$source_pdf82"
        target_file82="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K2QPJSVE/$source_pdf82"
        file_name82="$source_pdf82"
        if [ -z "$source_pdf82" ]; then
            echo "ERROR: Source file not found: $source_file82" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file82"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K2QPJSVE" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K2QPJSVE"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K2QPJSVE"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K2QPJSVE"
            fi

            # OCR processing
            if [ -f "$target_file82" ]; then
                echo "SKIP: Output already exists: $file_name82" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file82"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/K2QPJSVE"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file82" "$target_file82"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name82 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file82" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WQPWABRQ - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/WQPWABRQ"
START_TIME=$(date +%s)

        source_pdf83=$(find . -name "*.pdf" -type f | head -1)
        source_file83="/home/nkmwicz/Desktop/zotero-storage-copy/WQPWABRQ/$source_pdf83"
        target_file83="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WQPWABRQ/$source_pdf83"
        file_name83="$source_pdf83"
        if [ -z "$source_pdf83" ]; then
            echo "ERROR: Source file not found: $source_file83" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file83"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WQPWABRQ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WQPWABRQ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WQPWABRQ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WQPWABRQ"
            fi

            # OCR processing
            if [ -f "$target_file83" ]; then
                echo "SKIP: Output already exists: $file_name83" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file83"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/WQPWABRQ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file83" "$target_file83"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name83 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file83" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing CK3DKZGJ - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/CK3DKZGJ"
START_TIME=$(date +%s)

        source_pdf84=$(find . -name "*.pdf" -type f | head -1)
        source_file84="/home/nkmwicz/Desktop/zotero-storage-copy/CK3DKZGJ/$source_pdf84"
        target_file84="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CK3DKZGJ/$source_pdf84"
        file_name84="$source_pdf84"
        if [ -z "$source_pdf84" ]; then
            echo "ERROR: Source file not found: $source_file84" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file84"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CK3DKZGJ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CK3DKZGJ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CK3DKZGJ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CK3DKZGJ"
            fi

            # OCR processing
            if [ -f "$target_file84" ]; then
                echo "SKIP: Output already exists: $file_name84" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file84"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/CK3DKZGJ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file84" "$target_file84"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name84 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file84" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing K3JLL2GT - The Peace of Westphalia, 1648-1948..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/K3JLL2GT"
START_TIME=$(date +%s)

        source_pdf85=$(find . -name "*.pdf" -type f | head -1)
        source_file85="/home/nkmwicz/Desktop/zotero-storage-copy/K3JLL2GT/$source_pdf85"
        target_file85="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K3JLL2GT/$source_pdf85"
        file_name85="$source_pdf85"
        if [ -z "$source_pdf85" ]; then
            echo "ERROR: Source file not found: $source_file85" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file85"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K3JLL2GT" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K3JLL2GT"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K3JLL2GT"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K3JLL2GT"
            fi

            # OCR processing
            if [ -f "$target_file85" ]; then
                echo "SKIP: Output already exists: $file_name85" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file85"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/K3JLL2GT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file85" "$target_file85"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name85 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file85" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EF7CTRYN - Muhimm 85 (1040 1630-1631).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/EF7CTRYN"
START_TIME=$(date +%s)

        source_pdf86=$(find . -name "*.pdf" -type f | head -1)
        source_file86="/home/nkmwicz/Desktop/zotero-storage-copy/EF7CTRYN/$source_pdf86"
        target_file86="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EF7CTRYN/$source_pdf86"
        file_name86="$source_pdf86"
        if [ -z "$source_pdf86" ]; then
            echo "ERROR: Source file not found: $source_file86" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file86"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EF7CTRYN" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EF7CTRYN"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EF7CTRYN"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EF7CTRYN"
            fi

            # OCR processing
            if [ -f "$target_file86" ]; then
                echo "SKIP: Output already exists: $file_name86" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file86"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/EF7CTRYN"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file86" "$target_file86"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name86 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file86" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing C7S7MA6R - Samples from treaties from the ottoman archives.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/C7S7MA6R"
START_TIME=$(date +%s)

        source_pdf87=$(find . -name "*.pdf" -type f | head -1)
        source_file87="/home/nkmwicz/Desktop/zotero-storage-copy/C7S7MA6R/$source_pdf87"
        target_file87="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7S7MA6R/$source_pdf87"
        file_name87="$source_pdf87"
        if [ -z "$source_pdf87" ]; then
            echo "ERROR: Source file not found: $source_file87" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file87"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7S7MA6R" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7S7MA6R"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7S7MA6R"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C7S7MA6R"
            fi

            # OCR processing
            if [ -f "$target_file87" ]; then
                echo "SKIP: Output already exists: $file_name87" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file87"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/C7S7MA6R"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file87" "$target_file87"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name87 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file87" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing BPFXLVK2 - Yirmisekiz. 1720. Fransa Sefaretnamesi.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/BPFXLVK2"
START_TIME=$(date +%s)

        source_pdf88=$(find . -name "*.pdf" -type f | head -1)
        source_file88="/home/nkmwicz/Desktop/zotero-storage-copy/BPFXLVK2/$source_pdf88"
        target_file88="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BPFXLVK2/$source_pdf88"
        file_name88="$source_pdf88"
        if [ -z "$source_pdf88" ]; then
            echo "ERROR: Source file not found: $source_file88" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file88"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BPFXLVK2" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/BPFXLVK2"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BPFXLVK2"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/BPFXLVK2"
            fi

            # OCR processing
            if [ -f "$target_file88" ]; then
                echo "SKIP: Output already exists: $file_name88" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file88"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/BPFXLVK2"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file88" "$target_file88"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name88 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file88" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 6T4TWQGD - Muhimme E-12321.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/6T4TWQGD"
START_TIME=$(date +%s)

        source_pdf89=$(find . -name "*.pdf" -type f | head -1)
        source_file89="/home/nkmwicz/Desktop/zotero-storage-copy/6T4TWQGD/$source_pdf89"
        target_file89="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6T4TWQGD/$source_pdf89"
        file_name89="$source_pdf89"
        if [ -z "$source_pdf89" ]; then
            echo "ERROR: Source file not found: $source_file89" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file89"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6T4TWQGD" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6T4TWQGD"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6T4TWQGD"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6T4TWQGD"
            fi

            # OCR processing
            if [ -f "$target_file89" ]; then
                echo "SKIP: Output already exists: $file_name89" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file89"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/6T4TWQGD"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file89" "$target_file89"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name89 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file89" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing LLNU7WJR - Muhimme 888.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/LLNU7WJR"
START_TIME=$(date +%s)

        source_pdf90=$(find . -name "*.pdf" -type f | head -1)
        source_file90="/home/nkmwicz/Desktop/zotero-storage-copy/LLNU7WJR/$source_pdf90"
        target_file90="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LLNU7WJR/$source_pdf90"
        file_name90="$source_pdf90"
        if [ -z "$source_pdf90" ]; then
            echo "ERROR: Source file not found: $source_file90" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file90"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LLNU7WJR" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/LLNU7WJR"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/LLNU7WJR"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/LLNU7WJR"
            fi

            # OCR processing
            if [ -f "$target_file90" ]; then
                echo "SKIP: Output already exists: $file_name90" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file90"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/LLNU7WJR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file90" "$target_file90"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name90 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file90" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing FFIBP2NA - Muhimme 128 (1717).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/FFIBP2NA"
START_TIME=$(date +%s)

        source_pdf91=$(find . -name "*.pdf" -type f | head -1)
        source_file91="/home/nkmwicz/Desktop/zotero-storage-copy/FFIBP2NA/$source_pdf91"
        target_file91="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/FFIBP2NA/$source_pdf91"
        file_name91="$source_pdf91"
        if [ -z "$source_pdf91" ]; then
            echo "ERROR: Source file not found: $source_file91" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file91"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/FFIBP2NA" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/FFIBP2NA"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/FFIBP2NA"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/FFIBP2NA"
            fi

            # OCR processing
            if [ -f "$target_file91" ]; then
                echo "SKIP: Output already exists: $file_name91" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file91"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/FFIBP2NA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file91" "$target_file91"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name91 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file91" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ZHJWIHZS - Muhimme 107-YOK.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZHJWIHZS"
START_TIME=$(date +%s)

        source_pdf92=$(find . -name "*.pdf" -type f | head -1)
        source_file92="/home/nkmwicz/Desktop/zotero-storage-copy/ZHJWIHZS/$source_pdf92"
        target_file92="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZHJWIHZS/$source_pdf92"
        file_name92="$source_pdf92"
        if [ -z "$source_pdf92" ]; then
            echo "ERROR: Source file not found: $source_file92" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file92"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZHJWIHZS" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZHJWIHZS"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZHJWIHZS"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ZHJWIHZS"
            fi

            # OCR processing
            if [ -f "$target_file92" ]; then
                echo "SKIP: Output already exists: $file_name92" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file92"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ZHJWIHZS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file92" "$target_file92"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name92 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file92" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XHN2V337 - Muhimme 63-YOK (1587-1588).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XHN2V337"
START_TIME=$(date +%s)

        source_pdf93=$(find . -name "*.pdf" -type f | head -1)
        source_file93="/home/nkmwicz/Desktop/zotero-storage-copy/XHN2V337/$source_pdf93"
        target_file93="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XHN2V337/$source_pdf93"
        file_name93="$source_pdf93"
        if [ -z "$source_pdf93" ]; then
            echo "ERROR: Source file not found: $source_file93" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file93"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XHN2V337" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XHN2V337"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XHN2V337"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XHN2V337"
            fi

            # OCR processing
            if [ -f "$target_file93" ]; then
                echo "SKIP: Output already exists: $file_name93" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file93"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XHN2V337"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file93" "$target_file93"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name93 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file93" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3LUG5H9R - Muhimme 68-YOK (1589-1590).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/3LUG5H9R"
START_TIME=$(date +%s)

        source_pdf94=$(find . -name "*.pdf" -type f | head -1)
        source_file94="/home/nkmwicz/Desktop/zotero-storage-copy/3LUG5H9R/$source_pdf94"
        target_file94="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LUG5H9R/$source_pdf94"
        file_name94="$source_pdf94"
        if [ -z "$source_pdf94" ]; then
            echo "ERROR: Source file not found: $source_file94" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file94"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LUG5H9R" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LUG5H9R"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LUG5H9R"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LUG5H9R"
            fi

            # OCR processing
            if [ -f "$target_file94" ]; then
                echo "SKIP: Output already exists: $file_name94" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file94"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/3LUG5H9R"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file94" "$target_file94"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name94 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file94" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing F3PCQRK6 - Les envoyés ottomanes à la cour de France..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/F3PCQRK6"
START_TIME=$(date +%s)

        source_pdf95=$(find . -name "*.pdf" -type f | head -1)
        source_file95="/home/nkmwicz/Desktop/zotero-storage-copy/F3PCQRK6/$source_pdf95"
        target_file95="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F3PCQRK6/$source_pdf95"
        file_name95="$source_pdf95"
        if [ -z "$source_pdf95" ]; then
            echo "ERROR: Source file not found: $source_file95" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file95"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F3PCQRK6" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/F3PCQRK6"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/F3PCQRK6"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/F3PCQRK6"
            fi

            # OCR processing
            if [ -f "$target_file95" ]; then
                echo "SKIP: Output already exists: $file_name95" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file95"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/F3PCQRK6"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file95" "$target_file95"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name95 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file95" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3LXTWQYH - De l’utilité commerciale des consuls. L’institution consulaire et les marchands dans le monde méditerranéen (XVIIe-XXe siècle)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/3LXTWQYH"
START_TIME=$(date +%s)

        source_pdf96=$(find . -name "*.pdf" -type f | head -1)
        source_file96="/home/nkmwicz/Desktop/zotero-storage-copy/3LXTWQYH/$source_pdf96"
        target_file96="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LXTWQYH/$source_pdf96"
        file_name96="$source_pdf96"
        if [ -z "$source_pdf96" ]; then
            echo "ERROR: Source file not found: $source_file96" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file96"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LXTWQYH" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LXTWQYH"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LXTWQYH"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3LXTWQYH"
            fi

            # OCR processing
            if [ -f "$target_file96" ]; then
                echo "SKIP: Output already exists: $file_name96" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file96"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/3LXTWQYH"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language fra "$source_file96" "$target_file96"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name96 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file96" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing K954RUH2 - (Women in Culture and Society) Martha C. Howell - Women, Production, and Patriarchy in Late Medieval Cities-University of Chicago Press (1986).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/K954RUH2"
START_TIME=$(date +%s)

        source_pdf97=$(find . -name "*.pdf" -type f | head -1)
        source_file97="/home/nkmwicz/Desktop/zotero-storage-copy/K954RUH2/$source_pdf97"
        target_file97="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K954RUH2/$source_pdf97"
        file_name97="$source_pdf97"
        if [ -z "$source_pdf97" ]; then
            echo "ERROR: Source file not found: $source_file97" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file97"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K954RUH2" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/K954RUH2"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K954RUH2"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/K954RUH2"
            fi

            # OCR processing
            if [ -f "$target_file97" ]; then
                echo "SKIP: Output already exists: $file_name97" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file97"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/K954RUH2"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file97" "$target_file97"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name97 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file97" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing G2VI7RFW - Mémoires-journaux de Pierre de L'Estoile: Édition pour la première fois complète et entièrement ......"
cd "/home/nkmwicz/Desktop/zotero-storage-copy/G2VI7RFW"
START_TIME=$(date +%s)

        source_pdf98=$(find . -name "*.pdf" -type f | head -1)
        source_file98="/home/nkmwicz/Desktop/zotero-storage-copy/G2VI7RFW/$source_pdf98"
        target_file98="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G2VI7RFW/$source_pdf98"
        file_name98="$source_pdf98"
        if [ -z "$source_pdf98" ]; then
            echo "ERROR: Source file not found: $source_file98" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file98"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G2VI7RFW" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G2VI7RFW"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G2VI7RFW"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G2VI7RFW"
            fi

            # OCR processing
            if [ -f "$target_file98" ]; then
                echo "SKIP: Output already exists: $file_name98" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file98"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/G2VI7RFW"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file98" "$target_file98"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name98 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file98" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XWNEY3VS - Les ambassadeurs du roi de France auprès de Philippe II, du traité du Cateau-Cambrésis (1559) à la mort de Henri III (1589): Diplomatie et espionnage..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/XWNEY3VS"
START_TIME=$(date +%s)

        source_pdf99=$(find . -name "*.pdf" -type f | head -1)
        source_file99="/home/nkmwicz/Desktop/zotero-storage-copy/XWNEY3VS/$source_pdf99"
        target_file99="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XWNEY3VS/$source_pdf99"
        file_name99="$source_pdf99"
        if [ -z "$source_pdf99" ]; then
            echo "ERROR: Source file not found: $source_file99" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file99"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XWNEY3VS" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/XWNEY3VS"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XWNEY3VS"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/XWNEY3VS"
            fi

            # OCR processing
            if [ -f "$target_file99" ]; then
                echo "SKIP: Output already exists: $file_name99" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file99"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/XWNEY3VS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file99" "$target_file99"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name99 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file99" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MHQSNLVU - La politique orientale de François Ier, (1515-1547)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/MHQSNLVU"
START_TIME=$(date +%s)

        source_pdf100=$(find . -name "*.pdf" -type f | head -1)
        source_file100="/home/nkmwicz/Desktop/zotero-storage-copy/MHQSNLVU/$source_pdf100"
        target_file100="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MHQSNLVU/$source_pdf100"
        file_name100="$source_pdf100"
        if [ -z "$source_pdf100" ]; then
            echo "ERROR: Source file not found: $source_file100" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file100"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MHQSNLVU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/MHQSNLVU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MHQSNLVU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/MHQSNLVU"
            fi

            # OCR processing
            if [ -f "$target_file100" ]; then
                echo "SKIP: Output already exists: $file_name100" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file100"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/MHQSNLVU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file100" "$target_file100"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name100 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file100" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing E8RWP3FA - Les Relations Franco-Ottomanes a L'Épreuve des Guerres de Religion (1560-1594)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/E8RWP3FA"
START_TIME=$(date +%s)

        source_pdf101=$(find . -name "*.pdf" -type f | head -1)
        source_file101="/home/nkmwicz/Desktop/zotero-storage-copy/E8RWP3FA/$source_pdf101"
        target_file101="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E8RWP3FA/$source_pdf101"
        file_name101="$source_pdf101"
        if [ -z "$source_pdf101" ]; then
            echo "ERROR: Source file not found: $source_file101" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file101"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E8RWP3FA" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/E8RWP3FA"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/E8RWP3FA"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/E8RWP3FA"
            fi

            # OCR processing
            if [ -f "$target_file101" ]; then
                echo "SKIP: Output already exists: $file_name101" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file101"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/E8RWP3FA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file101" "$target_file101"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name101 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file101" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 6LAGL93T - The Crusades through Arab eyes..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/6LAGL93T"
START_TIME=$(date +%s)

        source_pdf102=$(find . -name "*.pdf" -type f | head -1)
        source_file102="/home/nkmwicz/Desktop/zotero-storage-copy/6LAGL93T/$source_pdf102"
        target_file102="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6LAGL93T/$source_pdf102"
        file_name102="$source_pdf102"
        if [ -z "$source_pdf102" ]; then
            echo "ERROR: Source file not found: $source_file102" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file102"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6LAGL93T" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6LAGL93T"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6LAGL93T"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6LAGL93T"
            fi

            # OCR processing
            if [ -f "$target_file102" ]; then
                echo "SKIP: Output already exists: $file_name102" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file102"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/6LAGL93T"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file102" "$target_file102"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name102 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file102" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing NVW7E9EL - I "Documenti Turchi" dell'Archivio di Stato di Venezia..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/NVW7E9EL"
START_TIME=$(date +%s)

        source_pdf103=$(find . -name "*.pdf" -type f | head -1)
        source_file103="/home/nkmwicz/Desktop/zotero-storage-copy/NVW7E9EL/$source_pdf103"
        target_file103="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/NVW7E9EL/$source_pdf103"
        file_name103="$source_pdf103"
        if [ -z "$source_pdf103" ]; then
            echo "ERROR: Source file not found: $source_file103" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file103"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/NVW7E9EL" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/NVW7E9EL"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/NVW7E9EL"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/NVW7E9EL"
            fi

            # OCR processing
            if [ -f "$target_file103" ]; then
                echo "SKIP: Output already exists: $file_name103" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file103"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/NVW7E9EL"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file103" "$target_file103"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name103 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file103" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing HXF89J9M - Muhimme 3 [ed. Tas, MA].pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/HXF89J9M"
START_TIME=$(date +%s)

        source_pdf104=$(find . -name "*.pdf" -type f | head -1)
        source_file104="/home/nkmwicz/Desktop/zotero-storage-copy/HXF89J9M/$source_pdf104"
        target_file104="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/HXF89J9M/$source_pdf104"
        file_name104="$source_pdf104"
        if [ -z "$source_pdf104" ]; then
            echo "ERROR: Source file not found: $source_file104" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file104"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/HXF89J9M" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/HXF89J9M"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/HXF89J9M"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/HXF89J9M"
            fi

            # OCR processing
            if [ -f "$target_file104" ]; then
                echo "SKIP: Output already exists: $file_name104" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file104"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/HXF89J9M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file104" "$target_file104"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name104 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file104" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing ACDKDBP3 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/ACDKDBP3"
START_TIME=$(date +%s)

        source_pdf105=$(find . -name "*.pdf" -type f | head -1)
        source_file105="/home/nkmwicz/Desktop/zotero-storage-copy/ACDKDBP3/$source_pdf105"
        target_file105="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ACDKDBP3/$source_pdf105"
        file_name105="$source_pdf105"
        if [ -z "$source_pdf105" ]; then
            echo "ERROR: Source file not found: $source_file105" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file105"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ACDKDBP3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/ACDKDBP3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ACDKDBP3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/ACDKDBP3"
            fi

            # OCR processing
            if [ -f "$target_file105" ]; then
                echo "SKIP: Output already exists: $file_name105" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file105"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/ACDKDBP3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file105" "$target_file105"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name105 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file105" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WEWRBZKI - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/WEWRBZKI"
START_TIME=$(date +%s)

        source_pdf106=$(find . -name "*.pdf" -type f | head -1)
        source_file106="/home/nkmwicz/Desktop/zotero-storage-copy/WEWRBZKI/$source_pdf106"
        target_file106="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WEWRBZKI/$source_pdf106"
        file_name106="$source_pdf106"
        if [ -z "$source_pdf106" ]; then
            echo "ERROR: Source file not found: $source_file106" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file106"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WEWRBZKI" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WEWRBZKI"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WEWRBZKI"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WEWRBZKI"
            fi

            # OCR processing
            if [ -f "$target_file106" ]; then
                echo "SKIP: Output already exists: $file_name106" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file106"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/WEWRBZKI"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file106" "$target_file106"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name106 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file106" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EWB5G63T - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/EWB5G63T"
START_TIME=$(date +%s)

        source_pdf107=$(find . -name "*.pdf" -type f | head -1)
        source_file107="/home/nkmwicz/Desktop/zotero-storage-copy/EWB5G63T/$source_pdf107"
        target_file107="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EWB5G63T/$source_pdf107"
        file_name107="$source_pdf107"
        if [ -z "$source_pdf107" ]; then
            echo "ERROR: Source file not found: $source_file107" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file107"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EWB5G63T" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EWB5G63T"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EWB5G63T"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EWB5G63T"
            fi

            # OCR processing
            if [ -f "$target_file107" ]; then
                echo "SKIP: Output already exists: $file_name107" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file107"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/EWB5G63T"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file107" "$target_file107"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name107 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file107" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing G4WN2AKA - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/G4WN2AKA"
START_TIME=$(date +%s)

        source_pdf108=$(find . -name "*.pdf" -type f | head -1)
        source_file108="/home/nkmwicz/Desktop/zotero-storage-copy/G4WN2AKA/$source_pdf108"
        target_file108="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G4WN2AKA/$source_pdf108"
        file_name108="$source_pdf108"
        if [ -z "$source_pdf108" ]; then
            echo "ERROR: Source file not found: $source_file108" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file108"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G4WN2AKA" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/G4WN2AKA"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G4WN2AKA"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/G4WN2AKA"
            fi

            # OCR processing
            if [ -f "$target_file108" ]; then
                echo "SKIP: Output already exists: $file_name108" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file108"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/G4WN2AKA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file108" "$target_file108"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name108 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file108" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PCLMXMQU - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/PCLMXMQU"
START_TIME=$(date +%s)

        source_pdf109=$(find . -name "*.pdf" -type f | head -1)
        source_file109="/home/nkmwicz/Desktop/zotero-storage-copy/PCLMXMQU/$source_pdf109"
        target_file109="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PCLMXMQU/$source_pdf109"
        file_name109="$source_pdf109"
        if [ -z "$source_pdf109" ]; then
            echo "ERROR: Source file not found: $source_file109" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file109"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PCLMXMQU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/PCLMXMQU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PCLMXMQU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/PCLMXMQU"
            fi

            # OCR processing
            if [ -f "$target_file109" ]; then
                echo "SKIP: Output already exists: $file_name109" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file109"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/PCLMXMQU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file109" "$target_file109"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name109 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file109" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing JIC38VUU - Idolatrous Cultures and the Practice of Religion*..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/JIC38VUU"
START_TIME=$(date +%s)

        source_pdf110=$(find . -name "*.pdf" -type f | head -1)
        source_file110="/home/nkmwicz/Desktop/zotero-storage-copy/JIC38VUU/$source_pdf110"
        target_file110="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JIC38VUU/$source_pdf110"
        file_name110="$source_pdf110"
        if [ -z "$source_pdf110" ]; then
            echo "ERROR: Source file not found: $source_file110" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file110"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JIC38VUU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JIC38VUU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JIC38VUU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JIC38VUU"
            fi

            # OCR processing
            if [ -f "$target_file110" ]; then
                echo "SKIP: Output already exists: $file_name110" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file110"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/JIC38VUU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file110" "$target_file110"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name110 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file110" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing V3RT8IFJ - D'Alexandrie a Istanbul - Bernard Yvelise.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/V3RT8IFJ"
START_TIME=$(date +%s)

        source_pdf111=$(find . -name "*.pdf" -type f | head -1)
        source_file111="/home/nkmwicz/Desktop/zotero-storage-copy/V3RT8IFJ/$source_pdf111"
        target_file111="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/V3RT8IFJ/$source_pdf111"
        file_name111="$source_pdf111"
        if [ -z "$source_pdf111" ]; then
            echo "ERROR: Source file not found: $source_file111" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file111"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/V3RT8IFJ" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/V3RT8IFJ"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/V3RT8IFJ"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/V3RT8IFJ"
            fi

            # OCR processing
            if [ -f "$target_file111" ]; then
                echo "SKIP: Output already exists: $file_name111" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file111"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/V3RT8IFJ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file111" "$target_file111"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name111 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file111" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing I5KRH76I - Ottoman-Habsburg_Relations_in_the_Second half of the sixteenth century--Gunes Isiksel.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/I5KRH76I"
START_TIME=$(date +%s)

        source_pdf112=$(find . -name "*.pdf" -type f | head -1)
        source_file112="/home/nkmwicz/Desktop/zotero-storage-copy/I5KRH76I/$source_pdf112"
        target_file112="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5KRH76I/$source_pdf112"
        file_name112="$source_pdf112"
        if [ -z "$source_pdf112" ]; then
            echo "ERROR: Source file not found: $source_file112" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file112"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5KRH76I" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5KRH76I"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5KRH76I"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/I5KRH76I"
            fi

            # OCR processing
            if [ -f "$target_file112" ]; then
                echo "SKIP: Output already exists: $file_name112" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file112"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/I5KRH76I"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file112" "$target_file112"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name112 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file112" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 48TEPDF2 - Auto Thrill Shows and Destruction Derbies, 1922–1965: Establishing the Cultural Logic of the Deliberate Car Crash in America..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/48TEPDF2"
START_TIME=$(date +%s)

        source_pdf113=$(find . -name "*.pdf" -type f | head -1)
        source_file113="/home/nkmwicz/Desktop/zotero-storage-copy/48TEPDF2/$source_pdf113"
        target_file113="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/48TEPDF2/$source_pdf113"
        file_name113="$source_pdf113"
        if [ -z "$source_pdf113" ]; then
            echo "ERROR: Source file not found: $source_file113" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file113"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/48TEPDF2" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/48TEPDF2"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/48TEPDF2"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/48TEPDF2"
            fi

            # OCR processing
            if [ -f "$target_file113" ]; then
                echo "SKIP: Output already exists: $file_name113" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file113"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/48TEPDF2"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file113" "$target_file113"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name113 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file113" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing C6QQX25V - henri de mesmes--memoires.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/C6QQX25V"
START_TIME=$(date +%s)

        source_pdf114=$(find . -name "*.pdf" -type f | head -1)
        source_file114="/home/nkmwicz/Desktop/zotero-storage-copy/C6QQX25V/$source_pdf114"
        target_file114="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C6QQX25V/$source_pdf114"
        file_name114="$source_pdf114"
        if [ -z "$source_pdf114" ]; then
            echo "ERROR: Source file not found: $source_file114" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file114"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C6QQX25V" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/C6QQX25V"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C6QQX25V"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/C6QQX25V"
            fi

            # OCR processing
            if [ -f "$target_file114" ]; then
                echo "SKIP: Output already exists: $file_name114" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file114"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/C6QQX25V"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file114" "$target_file114"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name114 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file114" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing R7MVJUWR - Deny and Laroch-Lexpedition en provence.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/R7MVJUWR"
START_TIME=$(date +%s)

        source_pdf115=$(find . -name "*.pdf" -type f | head -1)
        source_file115="/home/nkmwicz/Desktop/zotero-storage-copy/R7MVJUWR/$source_pdf115"
        target_file115="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/R7MVJUWR/$source_pdf115"
        file_name115="$source_pdf115"
        if [ -z "$source_pdf115" ]; then
            echo "ERROR: Source file not found: $source_file115" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file115"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/R7MVJUWR" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/R7MVJUWR"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/R7MVJUWR"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/R7MVJUWR"
            fi

            # OCR processing
            if [ -f "$target_file115" ]; then
                echo "SKIP: Output already exists: $file_name115" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file115"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/R7MVJUWR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file115" "$target_file115"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name115 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file115" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UWA9IJV8 - Knowledge and Nonknowledge..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UWA9IJV8"
START_TIME=$(date +%s)

        source_pdf116=$(find . -name "*.pdf" -type f | head -1)
        source_file116="/home/nkmwicz/Desktop/zotero-storage-copy/UWA9IJV8/$source_pdf116"
        target_file116="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWA9IJV8/$source_pdf116"
        file_name116="$source_pdf116"
        if [ -z "$source_pdf116" ]; then
            echo "ERROR: Source file not found: $source_file116" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file116"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWA9IJV8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWA9IJV8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWA9IJV8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWA9IJV8"
            fi

            # OCR processing
            if [ -f "$target_file116" ]; then
                echo "SKIP: Output already exists: $file_name116" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file116"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UWA9IJV8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file116" "$target_file116"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name116 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file116" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing KIPBDJIG - The Question of Ottoman Decline..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/KIPBDJIG"
START_TIME=$(date +%s)

        source_pdf117=$(find . -name "*.pdf" -type f | head -1)
        source_file117="/home/nkmwicz/Desktop/zotero-storage-copy/KIPBDJIG/$source_pdf117"
        target_file117="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KIPBDJIG/$source_pdf117"
        file_name117="$source_pdf117"
        if [ -z "$source_pdf117" ]; then
            echo "ERROR: Source file not found: $source_file117" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file117"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KIPBDJIG" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KIPBDJIG"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/KIPBDJIG"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/KIPBDJIG"
            fi

            # OCR processing
            if [ -f "$target_file117" ]; then
                echo "SKIP: Output already exists: $file_name117" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file117"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/KIPBDJIG"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file117" "$target_file117"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name117 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file117" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing JWZ7SGZE - Ottoman-French Interaction, 1480-1580: A Sixteenth-Century Encounter..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/JWZ7SGZE"
START_TIME=$(date +%s)

        source_pdf118=$(find . -name "*.pdf" -type f | head -1)
        source_file118="/home/nkmwicz/Desktop/zotero-storage-copy/JWZ7SGZE/$source_pdf118"
        target_file118="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JWZ7SGZE/$source_pdf118"
        file_name118="$source_pdf118"
        if [ -z "$source_pdf118" ]; then
            echo "ERROR: Source file not found: $source_file118" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file118"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JWZ7SGZE" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/JWZ7SGZE"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JWZ7SGZE"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/JWZ7SGZE"
            fi

            # OCR processing
            if [ -f "$target_file118" ]; then
                echo "SKIP: Output already exists: $file_name118" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file118"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/JWZ7SGZE"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file118" "$target_file118"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name118 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file118" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing CB2R2ZG6 - Commentaires_de_messire_Blaise_de_Montlu.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/CB2R2ZG6"
START_TIME=$(date +%s)

        source_pdf119=$(find . -name "*.pdf" -type f | head -1)
        source_file119="/home/nkmwicz/Desktop/zotero-storage-copy/CB2R2ZG6/$source_pdf119"
        target_file119="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CB2R2ZG6/$source_pdf119"
        file_name119="$source_pdf119"
        if [ -z "$source_pdf119" ]; then
            echo "ERROR: Source file not found: $source_file119" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file119"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CB2R2ZG6" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/CB2R2ZG6"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CB2R2ZG6"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/CB2R2ZG6"
            fi

            # OCR processing
            if [ -f "$target_file119" ]; then
                echo "SKIP: Output already exists: $file_name119" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file119"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/CB2R2ZG6"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file119" "$target_file119"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name119 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file119" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing KQR42N39 - Consuls and nations in the Levant from 1570 to 1650..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/KQR42N39"
START_TIME=$(date +%s)

        source_pdf120=$(find . -name "*.pdf" -type f | head -1)
        source_file120="/home/nkmwicz/Desktop/zotero-storage-copy/KQR42N39/$source_pdf120"
        target_file120="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KQR42N39/$source_pdf120"
        file_name120="$source_pdf120"
        if [ -z "$source_pdf120" ]; then
            echo "ERROR: Source file not found: $source_file120" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file120"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KQR42N39" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/KQR42N39"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/KQR42N39"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/KQR42N39"
            fi

            # OCR processing
            if [ -f "$target_file120" ]; then
                echo "SKIP: Output already exists: $file_name120" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file120"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/KQR42N39"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file120" "$target_file120"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name120 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file120" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing TK3AB8KU - Gold, frankincense, and myrrh: French consuls and commercial diplomacy in the Ottoman Levant, 1660--1699..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/TK3AB8KU"
START_TIME=$(date +%s)

        source_pdf121=$(find . -name "*.pdf" -type f | head -1)
        source_file121="/home/nkmwicz/Desktop/zotero-storage-copy/TK3AB8KU/$source_pdf121"
        target_file121="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TK3AB8KU/$source_pdf121"
        file_name121="$source_pdf121"
        if [ -z "$source_pdf121" ]; then
            echo "ERROR: Source file not found: $source_file121" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file121"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TK3AB8KU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/TK3AB8KU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TK3AB8KU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/TK3AB8KU"
            fi

            # OCR processing
            if [ -f "$target_file121" ]; then
                echo "SKIP: Output already exists: $file_name121" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file121"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/TK3AB8KU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file121" "$target_file121"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name121 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file121" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing Z3SZJNF7 - Ottoman Orientalism..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/Z3SZJNF7"
START_TIME=$(date +%s)

        source_pdf122=$(find . -name "*.pdf" -type f | head -1)
        source_file122="/home/nkmwicz/Desktop/zotero-storage-copy/Z3SZJNF7/$source_pdf122"
        target_file122="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Z3SZJNF7/$source_pdf122"
        file_name122="$source_pdf122"
        if [ -z "$source_pdf122" ]; then
            echo "ERROR: Source file not found: $source_file122" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file122"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Z3SZJNF7" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/Z3SZJNF7"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/Z3SZJNF7"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/Z3SZJNF7"
            fi

            # OCR processing
            if [ -f "$target_file122" ]; then
                echo "SKIP: Output already exists: $file_name122" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file122"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/Z3SZJNF7"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file122" "$target_file122"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name122 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file122" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing VZEJ8UNN - Martens.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/VZEJ8UNN"
START_TIME=$(date +%s)

        source_pdf123=$(find . -name "*.pdf" -type f | head -1)
        source_file123="/home/nkmwicz/Desktop/zotero-storage-copy/VZEJ8UNN/$source_pdf123"
        target_file123="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VZEJ8UNN/$source_pdf123"
        file_name123="$source_pdf123"
        if [ -z "$source_pdf123" ]; then
            echo "ERROR: Source file not found: $source_file123" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file123"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VZEJ8UNN" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/VZEJ8UNN"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VZEJ8UNN"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/VZEJ8UNN"
            fi

            # OCR processing
            if [ -f "$target_file123" ]; then
                echo "SKIP: Output already exists: $file_name123" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file123"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/VZEJ8UNN"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file123" "$target_file123"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name123 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file123" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UK47CPEY - Industrial Revolution [precondition excerpts]..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UK47CPEY"
START_TIME=$(date +%s)

        source_pdf124=$(find . -name "*.pdf" -type f | head -1)
        source_file124="/home/nkmwicz/Desktop/zotero-storage-copy/UK47CPEY/$source_pdf124"
        target_file124="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UK47CPEY/$source_pdf124"
        file_name124="$source_pdf124"
        if [ -z "$source_pdf124" ]; then
            echo "ERROR: Source file not found: $source_file124" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file124"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UK47CPEY" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UK47CPEY"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UK47CPEY"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UK47CPEY"
            fi

            # OCR processing
            if [ -f "$target_file124" ]; then
                echo "SKIP: Output already exists: $file_name124" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file124"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UK47CPEY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file124" "$target_file124"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name124 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file124" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3WN3CXKH - Muhımme 91 (1646-1647).pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/3WN3CXKH"
START_TIME=$(date +%s)

        source_pdf125=$(find . -name "*.pdf" -type f | head -1)
        source_file125="/home/nkmwicz/Desktop/zotero-storage-copy/3WN3CXKH/$source_pdf125"
        target_file125="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3WN3CXKH/$source_pdf125"
        file_name125="$source_pdf125"
        if [ -z "$source_pdf125" ]; then
            echo "ERROR: Source file not found: $source_file125" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file125"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3WN3CXKH" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/3WN3CXKH"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3WN3CXKH"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/3WN3CXKH"
            fi

            # OCR processing
            if [ -f "$target_file125" ]; then
                echo "SKIP: Output already exists: $file_name125" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file125"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/3WN3CXKH"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file125" "$target_file125"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name125 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file125" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EX6X34ZR - Warfare, state and society on the Black Sea steppe: 1500-1700..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/EX6X34ZR"
START_TIME=$(date +%s)

        source_pdf126=$(find . -name "*.pdf" -type f | head -1)
        source_file126="/home/nkmwicz/Desktop/zotero-storage-copy/EX6X34ZR/$source_pdf126"
        target_file126="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EX6X34ZR/$source_pdf126"
        file_name126="$source_pdf126"
        if [ -z "$source_pdf126" ]; then
            echo "ERROR: Source file not found: $source_file126" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file126"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EX6X34ZR" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/EX6X34ZR"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EX6X34ZR"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/EX6X34ZR"
            fi

            # OCR processing
            if [ -f "$target_file126" ]; then
                echo "SKIP: Output already exists: $file_name126" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file126"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/EX6X34ZR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file126" "$target_file126"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name126 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file126" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing UWCDEBDF - The Travels of Johns Sanderson..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/UWCDEBDF"
START_TIME=$(date +%s)

        source_pdf127=$(find . -name "*.pdf" -type f | head -1)
        source_file127="/home/nkmwicz/Desktop/zotero-storage-copy/UWCDEBDF/$source_pdf127"
        target_file127="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWCDEBDF/$source_pdf127"
        file_name127="$source_pdf127"
        if [ -z "$source_pdf127" ]; then
            echo "ERROR: Source file not found: $source_file127" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file127"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWCDEBDF" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWCDEBDF"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWCDEBDF"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/UWCDEBDF"
            fi

            # OCR processing
            if [ -f "$target_file127" ]; then
                echo "SKIP: Output already exists: $file_name127" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file127"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/UWCDEBDF"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file127" "$target_file127"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name127 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file127" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 27Q8EZ55 - 334336858-Christian-Muslim-Relations-Vol-I.pdf..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/27Q8EZ55"
START_TIME=$(date +%s)

        source_pdf128=$(find . -name "*.pdf" -type f | head -1)
        source_file128="/home/nkmwicz/Desktop/zotero-storage-copy/27Q8EZ55/$source_pdf128"
        target_file128="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/27Q8EZ55/$source_pdf128"
        file_name128="$source_pdf128"
        if [ -z "$source_pdf128" ]; then
            echo "ERROR: Source file not found: $source_file128" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file128"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/27Q8EZ55" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/27Q8EZ55"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/27Q8EZ55"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/27Q8EZ55"
            fi

            # OCR processing
            if [ -f "$target_file128" ]; then
                echo "SKIP: Output already exists: $file_name128" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file128"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/27Q8EZ55"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file128" "$target_file128"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name128 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file128" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 23WYT9X8 - Joseph Nasi, duc de Naxos..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/23WYT9X8"
START_TIME=$(date +%s)

        source_pdf129=$(find . -name "*.pdf" -type f | head -1)
        source_file129="/home/nkmwicz/Desktop/zotero-storage-copy/23WYT9X8/$source_pdf129"
        target_file129="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/23WYT9X8/$source_pdf129"
        file_name129="$source_pdf129"
        if [ -z "$source_pdf129" ]; then
            echo "ERROR: Source file not found: $source_file129" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file129"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/23WYT9X8" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/23WYT9X8"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/23WYT9X8"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/23WYT9X8"
            fi

            # OCR processing
            if [ -f "$target_file129" ]; then
                echo "SKIP: Output already exists: $file_name129" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file129"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/23WYT9X8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file129" "$target_file129"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name129 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file129" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 6ZYY4MWU - Calendar of State Papers and Manuscripts Relating to English Affairs, existing in the Archives and Collections of Venice, and in Other Libraries in Northern Italy..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/6ZYY4MWU"
START_TIME=$(date +%s)

        source_pdf130=$(find . -name "*.pdf" -type f | head -1)
        source_file130="/home/nkmwicz/Desktop/zotero-storage-copy/6ZYY4MWU/$source_pdf130"
        target_file130="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6ZYY4MWU/$source_pdf130"
        file_name130="$source_pdf130"
        if [ -z "$source_pdf130" ]; then
            echo "ERROR: Source file not found: $source_file130" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file130"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6ZYY4MWU" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/6ZYY4MWU"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6ZYY4MWU"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/6ZYY4MWU"
            fi

            # OCR processing
            if [ -f "$target_file130" ]; then
                echo "SKIP: Output already exists: $file_name130" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file130"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/6ZYY4MWU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file130" "$target_file130"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name130 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file130" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing YUW6MMFA - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/YUW6MMFA"
START_TIME=$(date +%s)

        source_pdf131=$(find . -name "*.pdf" -type f | head -1)
        source_file131="/home/nkmwicz/Desktop/zotero-storage-copy/YUW6MMFA/$source_pdf131"
        target_file131="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YUW6MMFA/$source_pdf131"
        file_name131="$source_pdf131"
        if [ -z "$source_pdf131" ]; then
            echo "ERROR: Source file not found: $source_file131" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file131"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YUW6MMFA" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/YUW6MMFA"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/YUW6MMFA"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/YUW6MMFA"
            fi

            # OCR processing
            if [ -f "$target_file131" ]; then
                echo "SKIP: Output already exists: $file_name131" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file131"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/YUW6MMFA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file131" "$target_file131"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name131 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file131" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9JFTEKE3 - Relazioni degli stati europei lette al Senato dagli ambasciatori Veneti nel secolo decimosettimo..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/9JFTEKE3"
START_TIME=$(date +%s)

        source_pdf132=$(find . -name "*.pdf" -type f | head -1)
        source_file132="/home/nkmwicz/Desktop/zotero-storage-copy/9JFTEKE3/$source_pdf132"
        target_file132="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9JFTEKE3/$source_pdf132"
        file_name132="$source_pdf132"
        if [ -z "$source_pdf132" ]; then
            echo "ERROR: Source file not found: $source_file132" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file132"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9JFTEKE3" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/9JFTEKE3"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9JFTEKE3"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/9JFTEKE3"
            fi

            # OCR processing
            if [ -f "$target_file132" ]; then
                echo "SKIP: Output already exists: $file_name132" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file132"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/9JFTEKE3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file132" "$target_file132"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name132 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file132" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing RIADT9AI - Global Politics in the 1580s: One Canal, Twenty Thousand Cannibals, and an Ottoman Plot to Rule the World..."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/RIADT9AI"
START_TIME=$(date +%s)

        source_pdf133=$(find . -name "*.pdf" -type f | head -1)
        source_file133="/home/nkmwicz/Desktop/zotero-storage-copy/RIADT9AI/$source_pdf133"
        target_file133="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RIADT9AI/$source_pdf133"
        file_name133="$source_pdf133"
        if [ -z "$source_pdf133" ]; then
            echo "ERROR: Source file not found: $source_file133" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file133"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RIADT9AI" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/RIADT9AI"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RIADT9AI"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/RIADT9AI"
            fi

            # OCR processing
            if [ -f "$target_file133" ]; then
                echo "SKIP: Output already exists: $file_name133" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file133"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/RIADT9AI"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file133" "$target_file133"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name133 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file133" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WK5SPVN4 - Articles accordez par le Grand Seigneur [Selim] en faveur du roy & de ses subjets, à messire Claude du Bourg, Chevalier, Sieur de Guerine, Conseillier du Roy & Tresorier de France: pour la liberté & seurté du traffiq, commerce & passage és pays & mers de Levant...."
cd "/home/nkmwicz/Desktop/zotero-storage-copy/WK5SPVN4"
START_TIME=$(date +%s)

        source_pdf134=$(find . -name "*.pdf" -type f | head -1)
        source_file134="/home/nkmwicz/Desktop/zotero-storage-copy/WK5SPVN4/$source_pdf134"
        target_file134="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WK5SPVN4/$source_pdf134"
        file_name134="$source_pdf134"
        if [ -z "$source_pdf134" ]; then
            echo "ERROR: Source file not found: $source_file134" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file134"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WK5SPVN4" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/WK5SPVN4"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WK5SPVN4"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/WK5SPVN4"
            fi

            # OCR processing
            if [ -f "$target_file134" ]; then
                echo "SKIP: Output already exists: $file_name134" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file134"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/WK5SPVN4"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file134" "$target_file134"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name134 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file134" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing P8VTJQQT - Commentaires de messire Blaise de Monluc, maréchal de France ; Blasi Monluci, Franciae mareschalli, tumulus......"
cd "/home/nkmwicz/Desktop/zotero-storage-copy/P8VTJQQT"
START_TIME=$(date +%s)

        source_pdf135=$(find . -name "*.pdf" -type f | head -1)
        source_file135="/home/nkmwicz/Desktop/zotero-storage-copy/P8VTJQQT/$source_pdf135"
        target_file135="/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P8VTJQQT/$source_pdf135"
        file_name135="$source_pdf135"
        if [ -z "$source_pdf135" ]; then
            echo "ERROR: Source file not found: $source_file135" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file135"

            # Create target directory
            if [ ! -d "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P8VTJQQT" ]; then
                mkdir -p "/home/nkmwicz/home/research/zotero-ocr/ocr_folders/P8VTJQQT"
                echo "Created target directory: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/P8VTJQQT"
            else
                echo "Target directory already exists: /home/nkmwicz/home/research/zotero-ocr/ocr_folders/P8VTJQQT"
            fi

            # OCR processing
            if [ -f "$target_file135" ]; then
                echo "SKIP: Output already exists: $file_name135" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file135"
                cd "/home/nkmwicz/Desktop/zotero-storage-copy/P8VTJQQT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file135" "$target_file135"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name135 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file135" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        echo "\n=== OCR PROCESSING COMPLETE ==="
echo "Total files: $TOTAL_FILES"
echo "Successful: $SUCCESS"
echo "Failed: $FAILED"
echo "Completion: $(date)"
echo "\nProcessing Summary: $(date)" >> "$LOG_FILE"
echo "Success: $SUCCESS, Failed: $FAILED" >> "$LOG_FILE"
