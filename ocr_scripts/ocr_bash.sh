#!/bin/bash

set -e  # Exit on any error
set -u  # Exit on undefined variables

TOTAL_FILES=164
CURRENT=0
SUCCESS=0
FAILED=0

LOG_FILE=/home/nathan/home/research/tests/ocr_scripts/ocr_log.txt
echo "OCR Processing Started: $(date)" > "$LOG_FILE"

CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MVZAR3EP - Brey.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/MVZAR3EP"
START_TIME=$(date +%s)

        source_pdf0=$(find . -name "*.pdf" -type f | head -1)
        source_file0="/home/nathan/Desktop/zotero-storage-copy/MVZAR3EP/$source_pdf0"
        target_file0="/home/nathan/home/research/tests/ocr_folders/MVZAR3EP/$source_pdf0"
        file_name0="$source_pdf0"
        if [ -z "$source_pdf0" ]; then
            echo "ERROR: Source file not found: $source_file0" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file0"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/MVZAR3EP" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/MVZAR3EP"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/MVZAR3EP"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/MVZAR3EP"
            fi

            # OCR processing
            if [ -f "$target_file0" ]; then
                echo "SKIP: Output already exists: $file_name0" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file0"
                cd "/home/nathan/Desktop/zotero-storage-copy/MVZAR3EP"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 2NSJ2AFB - Social Geography of French Protestantism..."
cd "/home/nathan/Desktop/zotero-storage-copy/2NSJ2AFB"
START_TIME=$(date +%s)

        source_pdf1=$(find . -name "*.pdf" -type f | head -1)
        source_file1="/home/nathan/Desktop/zotero-storage-copy/2NSJ2AFB/$source_pdf1"
        target_file1="/home/nathan/home/research/tests/ocr_folders/2NSJ2AFB/$source_pdf1"
        file_name1="$source_pdf1"
        if [ -z "$source_pdf1" ]; then
            echo "ERROR: Source file not found: $source_file1" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file1"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/2NSJ2AFB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/2NSJ2AFB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/2NSJ2AFB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/2NSJ2AFB"
            fi

            # OCR processing
            if [ -f "$target_file1" ]; then
                echo "SKIP: Output already exists: $file_name1" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file1"
                cd "/home/nathan/Desktop/zotero-storage-copy/2NSJ2AFB"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9X3K4NSM - Muslim Ambassadors to Venice up to the 16th century..."
cd "/home/nathan/Desktop/zotero-storage-copy/9X3K4NSM"
START_TIME=$(date +%s)

        source_pdf2=$(find . -name "*.pdf" -type f | head -1)
        source_file2="/home/nathan/Desktop/zotero-storage-copy/9X3K4NSM/$source_pdf2"
        target_file2="/home/nathan/home/research/tests/ocr_folders/9X3K4NSM/$source_pdf2"
        file_name2="$source_pdf2"
        if [ -z "$source_pdf2" ]; then
            echo "ERROR: Source file not found: $source_file2" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file2"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9X3K4NSM" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9X3K4NSM"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9X3K4NSM"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9X3K4NSM"
            fi

            # OCR processing
            if [ -f "$target_file2" ]; then
                echo "SKIP: Output already exists: $file_name2" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file2"
                cd "/home/nathan/Desktop/zotero-storage-copy/9X3K4NSM"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 8IF4KLRD - Industrial Revolution [Consequences excerpts]..."
cd "/home/nathan/Desktop/zotero-storage-copy/8IF4KLRD"
START_TIME=$(date +%s)

        source_pdf3=$(find . -name "*.pdf" -type f | head -1)
        source_file3="/home/nathan/Desktop/zotero-storage-copy/8IF4KLRD/$source_pdf3"
        target_file3="/home/nathan/home/research/tests/ocr_folders/8IF4KLRD/$source_pdf3"
        file_name3="$source_pdf3"
        if [ -z "$source_pdf3" ]; then
            echo "ERROR: Source file not found: $source_file3" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file3"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/8IF4KLRD" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/8IF4KLRD"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/8IF4KLRD"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/8IF4KLRD"
            fi

            # OCR processing
            if [ -f "$target_file3" ]; then
                echo "SKIP: Output already exists: $file_name3" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file3"
                cd "/home/nathan/Desktop/zotero-storage-copy/8IF4KLRD"
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
echo "[$CURRENT/$TOTAL_FILES] Processing WQPWABRQ - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nathan/Desktop/zotero-storage-copy/WQPWABRQ"
START_TIME=$(date +%s)

        source_pdf4=$(find . -name "*.pdf" -type f | head -1)
        source_file4="/home/nathan/Desktop/zotero-storage-copy/WQPWABRQ/$source_pdf4"
        target_file4="/home/nathan/home/research/tests/ocr_folders/WQPWABRQ/$source_pdf4"
        file_name4="$source_pdf4"
        if [ -z "$source_pdf4" ]; then
            echo "ERROR: Source file not found: $source_file4" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file4"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/WQPWABRQ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/WQPWABRQ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/WQPWABRQ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/WQPWABRQ"
            fi

            # OCR processing
            if [ -f "$target_file4" ]; then
                echo "SKIP: Output already exists: $file_name4" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file4"
                cd "/home/nathan/Desktop/zotero-storage-copy/WQPWABRQ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing RR27EW2V - Akyavas. Yirmisekiz Celebi Mehmed Efendi'nin Fransa Sefaretnamesi.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/RR27EW2V"
START_TIME=$(date +%s)

        source_pdf5=$(find . -name "*.pdf" -type f | head -1)
        source_file5="/home/nathan/Desktop/zotero-storage-copy/RR27EW2V/$source_pdf5"
        target_file5="/home/nathan/home/research/tests/ocr_folders/RR27EW2V/$source_pdf5"
        file_name5="$source_pdf5"
        if [ -z "$source_pdf5" ]; then
            echo "ERROR: Source file not found: $source_file5" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file5"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RR27EW2V" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RR27EW2V"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RR27EW2V"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RR27EW2V"
            fi

            # OCR processing
            if [ -f "$target_file5" ]; then
                echo "SKIP: Output already exists: $file_name5" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file5"
                cd "/home/nathan/Desktop/zotero-storage-copy/RR27EW2V"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 6T4TWQGD - Muhimme E-12321.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/6T4TWQGD"
START_TIME=$(date +%s)

        source_pdf6=$(find . -name "*.pdf" -type f | head -1)
        source_file6="/home/nathan/Desktop/zotero-storage-copy/6T4TWQGD/$source_pdf6"
        target_file6="/home/nathan/home/research/tests/ocr_folders/6T4TWQGD/$source_pdf6"
        file_name6="$source_pdf6"
        if [ -z "$source_pdf6" ]; then
            echo "ERROR: Source file not found: $source_file6" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file6"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/6T4TWQGD" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/6T4TWQGD"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/6T4TWQGD"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/6T4TWQGD"
            fi

            # OCR processing
            if [ -f "$target_file6" ]; then
                echo "SKIP: Output already exists: $file_name6" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file6"
                cd "/home/nathan/Desktop/zotero-storage-copy/6T4TWQGD"
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
echo "[$CURRENT/$TOTAL_FILES] Processing MCQRDT29 - Muhimme 141 (1148).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/MCQRDT29"
START_TIME=$(date +%s)

        source_pdf7=$(find . -name "*.pdf" -type f | head -1)
        source_file7="/home/nathan/Desktop/zotero-storage-copy/MCQRDT29/$source_pdf7"
        target_file7="/home/nathan/home/research/tests/ocr_folders/MCQRDT29/$source_pdf7"
        file_name7="$source_pdf7"
        if [ -z "$source_pdf7" ]; then
            echo "ERROR: Source file not found: $source_file7" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file7"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/MCQRDT29" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/MCQRDT29"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/MCQRDT29"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/MCQRDT29"
            fi

            # OCR processing
            if [ -f "$target_file7" ]; then
                echo "SKIP: Output already exists: $file_name7" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file7"
                cd "/home/nathan/Desktop/zotero-storage-copy/MCQRDT29"
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
echo "[$CURRENT/$TOTAL_FILES] Processing FFIBP2NA - Muhimme 128 (1717).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/FFIBP2NA"
START_TIME=$(date +%s)

        source_pdf8=$(find . -name "*.pdf" -type f | head -1)
        source_file8="/home/nathan/Desktop/zotero-storage-copy/FFIBP2NA/$source_pdf8"
        target_file8="/home/nathan/home/research/tests/ocr_folders/FFIBP2NA/$source_pdf8"
        file_name8="$source_pdf8"
        if [ -z "$source_pdf8" ]; then
            echo "ERROR: Source file not found: $source_file8" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file8"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/FFIBP2NA" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/FFIBP2NA"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/FFIBP2NA"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/FFIBP2NA"
            fi

            # OCR processing
            if [ -f "$target_file8" ]; then
                echo "SKIP: Output already exists: $file_name8" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file8"
                cd "/home/nathan/Desktop/zotero-storage-copy/FFIBP2NA"
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
echo "[$CURRENT/$TOTAL_FILES] Processing EX6X34ZR - Warfare, state and society on the Black Sea steppe: 1500-1700..."
cd "/home/nathan/Desktop/zotero-storage-copy/EX6X34ZR"
START_TIME=$(date +%s)

        source_pdf9=$(find . -name "*.pdf" -type f | head -1)
        source_file9="/home/nathan/Desktop/zotero-storage-copy/EX6X34ZR/$source_pdf9"
        target_file9="/home/nathan/home/research/tests/ocr_folders/EX6X34ZR/$source_pdf9"
        file_name9="$source_pdf9"
        if [ -z "$source_pdf9" ]; then
            echo "ERROR: Source file not found: $source_file9" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file9"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EX6X34ZR" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EX6X34ZR"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EX6X34ZR"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EX6X34ZR"
            fi

            # OCR processing
            if [ -f "$target_file9" ]; then
                echo "SKIP: Output already exists: $file_name9" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file9"
                cd "/home/nathan/Desktop/zotero-storage-copy/EX6X34ZR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file9" "$target_file9"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing 3LXTWQYH - De l’utilité commerciale des consuls. L’institution consulaire et les marchands dans le monde méditerranéen (XVIIe-XXe siècle)..."
cd "/home/nathan/Desktop/zotero-storage-copy/3LXTWQYH"
START_TIME=$(date +%s)

        source_pdf10=$(find . -name "*.pdf" -type f | head -1)
        source_file10="/home/nathan/Desktop/zotero-storage-copy/3LXTWQYH/$source_pdf10"
        target_file10="/home/nathan/home/research/tests/ocr_folders/3LXTWQYH/$source_pdf10"
        file_name10="$source_pdf10"
        if [ -z "$source_pdf10" ]; then
            echo "ERROR: Source file not found: $source_file10" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file10"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3LXTWQYH" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3LXTWQYH"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3LXTWQYH"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3LXTWQYH"
            fi

            # OCR processing
            if [ -f "$target_file10" ]; then
                echo "SKIP: Output already exists: $file_name10" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file10"
                cd "/home/nathan/Desktop/zotero-storage-copy/3LXTWQYH"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language fra "$source_file10" "$target_file10"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing YK3PE754 - The-Adventures-Of-Ibn-Battuta.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/YK3PE754"
START_TIME=$(date +%s)

        source_pdf11=$(find . -name "*.pdf" -type f | head -1)
        source_file11="/home/nathan/Desktop/zotero-storage-copy/YK3PE754/$source_pdf11"
        target_file11="/home/nathan/home/research/tests/ocr_folders/YK3PE754/$source_pdf11"
        file_name11="$source_pdf11"
        if [ -z "$source_pdf11" ]; then
            echo "ERROR: Source file not found: $source_file11" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file11"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/YK3PE754" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/YK3PE754"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/YK3PE754"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/YK3PE754"
            fi

            # OCR processing
            if [ -f "$target_file11" ]; then
                echo "SKIP: Output already exists: $file_name11" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file11"
                cd "/home/nathan/Desktop/zotero-storage-copy/YK3PE754"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 8EN5CRZ4 - L''Histoire universelle du sieur d''Aubigné......"
cd "/home/nathan/Desktop/zotero-storage-copy/8EN5CRZ4"
START_TIME=$(date +%s)

        source_pdf12=$(find . -name "*.pdf" -type f | head -1)
        source_file12="/home/nathan/Desktop/zotero-storage-copy/8EN5CRZ4/$source_pdf12"
        target_file12="/home/nathan/home/research/tests/ocr_folders/8EN5CRZ4/$source_pdf12"
        file_name12="$source_pdf12"
        if [ -z "$source_pdf12" ]; then
            echo "ERROR: Source file not found: $source_file12" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file12"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/8EN5CRZ4" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/8EN5CRZ4"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/8EN5CRZ4"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/8EN5CRZ4"
            fi

            # OCR processing
            if [ -f "$target_file12" ]; then
                echo "SKIP: Output already exists: $file_name12" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file12"
                cd "/home/nathan/Desktop/zotero-storage-copy/8EN5CRZ4"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language fra "$source_file12" "$target_file12"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing 27Q8EZ55 - 334336858-Christian-Muslim-Relations-Vol-I.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/27Q8EZ55"
START_TIME=$(date +%s)

        source_pdf13=$(find . -name "*.pdf" -type f | head -1)
        source_file13="/home/nathan/Desktop/zotero-storage-copy/27Q8EZ55/$source_pdf13"
        target_file13="/home/nathan/home/research/tests/ocr_folders/27Q8EZ55/$source_pdf13"
        file_name13="$source_pdf13"
        if [ -z "$source_pdf13" ]; then
            echo "ERROR: Source file not found: $source_file13" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file13"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/27Q8EZ55" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/27Q8EZ55"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/27Q8EZ55"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/27Q8EZ55"
            fi

            # OCR processing
            if [ -f "$target_file13" ]; then
                echo "SKIP: Output already exists: $file_name13" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file13"
                cd "/home/nathan/Desktop/zotero-storage-copy/27Q8EZ55"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XWNEY3VS - Les ambassadeurs du roi de France auprès de Philippe II, du traité du Cateau-Cambrésis (1559) à la mort de Henri III (1589): Diplomatie et espionnage..."
cd "/home/nathan/Desktop/zotero-storage-copy/XWNEY3VS"
START_TIME=$(date +%s)

        source_pdf14=$(find . -name "*.pdf" -type f | head -1)
        source_file14="/home/nathan/Desktop/zotero-storage-copy/XWNEY3VS/$source_pdf14"
        target_file14="/home/nathan/home/research/tests/ocr_folders/XWNEY3VS/$source_pdf14"
        file_name14="$source_pdf14"
        if [ -z "$source_pdf14" ]; then
            echo "ERROR: Source file not found: $source_file14" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file14"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XWNEY3VS" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XWNEY3VS"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XWNEY3VS"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XWNEY3VS"
            fi

            # OCR processing
            if [ -f "$target_file14" ]; then
                echo "SKIP: Output already exists: $file_name14" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file14"
                cd "/home/nathan/Desktop/zotero-storage-copy/XWNEY3VS"
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
echo "[$CURRENT/$TOTAL_FILES] Processing H57Q8F5M - Dépêches originales de divers ambassadeurs et agents français à Constantinople. IV Années 1605-1623...."
cd "/home/nathan/Desktop/zotero-storage-copy/H57Q8F5M"
START_TIME=$(date +%s)

        source_pdf15=$(find . -name "*.pdf" -type f | head -1)
        source_file15="/home/nathan/Desktop/zotero-storage-copy/H57Q8F5M/$source_pdf15"
        target_file15="/home/nathan/home/research/tests/ocr_folders/H57Q8F5M/$source_pdf15"
        file_name15="$source_pdf15"
        if [ -z "$source_pdf15" ]; then
            echo "ERROR: Source file not found: $source_file15" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file15"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/H57Q8F5M" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/H57Q8F5M"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/H57Q8F5M"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/H57Q8F5M"
            fi

            # OCR processing
            if [ -f "$target_file15" ]; then
                echo "SKIP: Output already exists: $file_name15" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file15"
                cd "/home/nathan/Desktop/zotero-storage-copy/H57Q8F5M"
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
echo "[$CURRENT/$TOTAL_FILES] Processing E8RWP3FA - Les Relations Franco-Ottomanes a L'Épreuve des Guerres de Religion (1560-1594)..."
cd "/home/nathan/Desktop/zotero-storage-copy/E8RWP3FA"
START_TIME=$(date +%s)

        source_pdf16=$(find . -name "*.pdf" -type f | head -1)
        source_file16="/home/nathan/Desktop/zotero-storage-copy/E8RWP3FA/$source_pdf16"
        target_file16="/home/nathan/home/research/tests/ocr_folders/E8RWP3FA/$source_pdf16"
        file_name16="$source_pdf16"
        if [ -z "$source_pdf16" ]; then
            echo "ERROR: Source file not found: $source_file16" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file16"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/E8RWP3FA" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/E8RWP3FA"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/E8RWP3FA"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/E8RWP3FA"
            fi

            # OCR processing
            if [ -f "$target_file16" ]; then
                echo "SKIP: Output already exists: $file_name16" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file16"
                cd "/home/nathan/Desktop/zotero-storage-copy/E8RWP3FA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file16" "$target_file16"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing 3HBMR8NQ - Missions Diplomatiques de Claude du Bourg..."
cd "/home/nathan/Desktop/zotero-storage-copy/3HBMR8NQ"
START_TIME=$(date +%s)

        source_pdf17=$(find . -name "*.pdf" -type f | head -1)
        source_file17="/home/nathan/Desktop/zotero-storage-copy/3HBMR8NQ/$source_pdf17"
        target_file17="/home/nathan/home/research/tests/ocr_folders/3HBMR8NQ/$source_pdf17"
        file_name17="$source_pdf17"
        if [ -z "$source_pdf17" ]; then
            echo "ERROR: Source file not found: $source_file17" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file17"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3HBMR8NQ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3HBMR8NQ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3HBMR8NQ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3HBMR8NQ"
            fi

            # OCR processing
            if [ -f "$target_file17" ]; then
                echo "SKIP: Output already exists: $file_name17" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file17"
                cd "/home/nathan/Desktop/zotero-storage-copy/3HBMR8NQ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 6LAGL93T - The Crusades through Arab eyes..."
cd "/home/nathan/Desktop/zotero-storage-copy/6LAGL93T"
START_TIME=$(date +%s)

        source_pdf18=$(find . -name "*.pdf" -type f | head -1)
        source_file18="/home/nathan/Desktop/zotero-storage-copy/6LAGL93T/$source_pdf18"
        target_file18="/home/nathan/home/research/tests/ocr_folders/6LAGL93T/$source_pdf18"
        file_name18="$source_pdf18"
        if [ -z "$source_pdf18" ]; then
            echo "ERROR: Source file not found: $source_file18" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file18"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/6LAGL93T" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/6LAGL93T"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/6LAGL93T"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/6LAGL93T"
            fi

            # OCR processing
            if [ -f "$target_file18" ]; then
                echo "SKIP: Output already exists: $file_name18" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file18"
                cd "/home/nathan/Desktop/zotero-storage-copy/6LAGL93T"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 8F7FTAYQ - The Gap Between Science and Policy in The Bell Curve..."
cd "/home/nathan/Desktop/zotero-storage-copy/8F7FTAYQ"
START_TIME=$(date +%s)

        source_pdf19=$(find . -name "*.pdf" -type f | head -1)
        source_file19="/home/nathan/Desktop/zotero-storage-copy/8F7FTAYQ/$source_pdf19"
        target_file19="/home/nathan/home/research/tests/ocr_folders/8F7FTAYQ/$source_pdf19"
        file_name19="$source_pdf19"
        if [ -z "$source_pdf19" ]; then
            echo "ERROR: Source file not found: $source_file19" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file19"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/8F7FTAYQ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/8F7FTAYQ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/8F7FTAYQ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/8F7FTAYQ"
            fi

            # OCR processing
            if [ -f "$target_file19" ]; then
                echo "SKIP: Output already exists: $file_name19" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file19"
                cd "/home/nathan/Desktop/zotero-storage-copy/8F7FTAYQ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ZUVZNVA3 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/ZUVZNVA3"
START_TIME=$(date +%s)

        source_pdf20=$(find . -name "*.pdf" -type f | head -1)
        source_file20="/home/nathan/Desktop/zotero-storage-copy/ZUVZNVA3/$source_pdf20"
        target_file20="/home/nathan/home/research/tests/ocr_folders/ZUVZNVA3/$source_pdf20"
        file_name20="$source_pdf20"
        if [ -z "$source_pdf20" ]; then
            echo "ERROR: Source file not found: $source_file20" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file20"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ZUVZNVA3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ZUVZNVA3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ZUVZNVA3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ZUVZNVA3"
            fi

            # OCR processing
            if [ -f "$target_file20" ]; then
                echo "SKIP: Output already exists: $file_name20" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file20"
                cd "/home/nathan/Desktop/zotero-storage-copy/ZUVZNVA3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 4BWWCABL - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/4BWWCABL"
START_TIME=$(date +%s)

        source_pdf21=$(find . -name "*.pdf" -type f | head -1)
        source_file21="/home/nathan/Desktop/zotero-storage-copy/4BWWCABL/$source_pdf21"
        target_file21="/home/nathan/home/research/tests/ocr_folders/4BWWCABL/$source_pdf21"
        file_name21="$source_pdf21"
        if [ -z "$source_pdf21" ]; then
            echo "ERROR: Source file not found: $source_file21" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file21"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/4BWWCABL" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/4BWWCABL"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/4BWWCABL"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/4BWWCABL"
            fi

            # OCR processing
            if [ -f "$target_file21" ]; then
                echo "SKIP: Output already exists: $file_name21" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file21"
                cd "/home/nathan/Desktop/zotero-storage-copy/4BWWCABL"
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
echo "[$CURRENT/$TOTAL_FILES] Processing WEWRBZKI - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/WEWRBZKI"
START_TIME=$(date +%s)

        source_pdf22=$(find . -name "*.pdf" -type f | head -1)
        source_file22="/home/nathan/Desktop/zotero-storage-copy/WEWRBZKI/$source_pdf22"
        target_file22="/home/nathan/home/research/tests/ocr_folders/WEWRBZKI/$source_pdf22"
        file_name22="$source_pdf22"
        if [ -z "$source_pdf22" ]; then
            echo "ERROR: Source file not found: $source_file22" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file22"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/WEWRBZKI" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/WEWRBZKI"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/WEWRBZKI"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/WEWRBZKI"
            fi

            # OCR processing
            if [ -f "$target_file22" ]; then
                echo "SKIP: Output already exists: $file_name22" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file22"
                cd "/home/nathan/Desktop/zotero-storage-copy/WEWRBZKI"
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
echo "[$CURRENT/$TOTAL_FILES] Processing EWB5G63T - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/EWB5G63T"
START_TIME=$(date +%s)

        source_pdf23=$(find . -name "*.pdf" -type f | head -1)
        source_file23="/home/nathan/Desktop/zotero-storage-copy/EWB5G63T/$source_pdf23"
        target_file23="/home/nathan/home/research/tests/ocr_folders/EWB5G63T/$source_pdf23"
        file_name23="$source_pdf23"
        if [ -z "$source_pdf23" ]; then
            echo "ERROR: Source file not found: $source_file23" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file23"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EWB5G63T" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EWB5G63T"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EWB5G63T"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EWB5G63T"
            fi

            # OCR processing
            if [ -f "$target_file23" ]; then
                echo "SKIP: Output already exists: $file_name23" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file23"
                cd "/home/nathan/Desktop/zotero-storage-copy/EWB5G63T"
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
echo "[$CURRENT/$TOTAL_FILES] Processing JIC38VUU - Idolatrous Cultures and the Practice of Religion*..."
cd "/home/nathan/Desktop/zotero-storage-copy/JIC38VUU"
START_TIME=$(date +%s)

        source_pdf24=$(find . -name "*.pdf" -type f | head -1)
        source_file24="/home/nathan/Desktop/zotero-storage-copy/JIC38VUU/$source_pdf24"
        target_file24="/home/nathan/home/research/tests/ocr_folders/JIC38VUU/$source_pdf24"
        file_name24="$source_pdf24"
        if [ -z "$source_pdf24" ]; then
            echo "ERROR: Source file not found: $source_file24" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file24"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/JIC38VUU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/JIC38VUU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/JIC38VUU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/JIC38VUU"
            fi

            # OCR processing
            if [ -f "$target_file24" ]; then
                echo "SKIP: Output already exists: $file_name24" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file24"
                cd "/home/nathan/Desktop/zotero-storage-copy/JIC38VUU"
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
echo "[$CURRENT/$TOTAL_FILES] Processing EV4ICQST - Ancient Egypt: A Very Short Introduction..."
cd "/home/nathan/Desktop/zotero-storage-copy/EV4ICQST"
START_TIME=$(date +%s)

        source_pdf25=$(find . -name "*.pdf" -type f | head -1)
        source_file25="/home/nathan/Desktop/zotero-storage-copy/EV4ICQST/$source_pdf25"
        target_file25="/home/nathan/home/research/tests/ocr_folders/EV4ICQST/$source_pdf25"
        file_name25="$source_pdf25"
        if [ -z "$source_pdf25" ]; then
            echo "ERROR: Source file not found: $source_file25" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file25"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EV4ICQST" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EV4ICQST"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EV4ICQST"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EV4ICQST"
            fi

            # OCR processing
            if [ -f "$target_file25" ]; then
                echo "SKIP: Output already exists: $file_name25" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file25"
                cd "/home/nathan/Desktop/zotero-storage-copy/EV4ICQST"
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
echo "[$CURRENT/$TOTAL_FILES] Processing S4YPN4RV - Négociations de la France dans le Levant..."
cd "/home/nathan/Desktop/zotero-storage-copy/S4YPN4RV"
START_TIME=$(date +%s)

        source_pdf26=$(find . -name "*.pdf" -type f | head -1)
        source_file26="/home/nathan/Desktop/zotero-storage-copy/S4YPN4RV/$source_pdf26"
        target_file26="/home/nathan/home/research/tests/ocr_folders/S4YPN4RV/$source_pdf26"
        file_name26="$source_pdf26"
        if [ -z "$source_pdf26" ]; then
            echo "ERROR: Source file not found: $source_file26" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file26"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/S4YPN4RV" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/S4YPN4RV"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/S4YPN4RV"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/S4YPN4RV"
            fi

            # OCR processing
            if [ -f "$target_file26" ]; then
                echo "SKIP: Output already exists: $file_name26" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file26"
                cd "/home/nathan/Desktop/zotero-storage-copy/S4YPN4RV"
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
echo "[$CURRENT/$TOTAL_FILES] Processing VRNCPXU7 - Catherine de Medici's Turkish Ladies-in-Waiting: A Dilemma in Franco-Ottoman Diplomtaic Relations..."
cd "/home/nathan/Desktop/zotero-storage-copy/VRNCPXU7"
START_TIME=$(date +%s)

        source_pdf27=$(find . -name "*.pdf" -type f | head -1)
        source_file27="/home/nathan/Desktop/zotero-storage-copy/VRNCPXU7/$source_pdf27"
        target_file27="/home/nathan/home/research/tests/ocr_folders/VRNCPXU7/$source_pdf27"
        file_name27="$source_pdf27"
        if [ -z "$source_pdf27" ]; then
            echo "ERROR: Source file not found: $source_file27" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file27"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/VRNCPXU7" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/VRNCPXU7"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/VRNCPXU7"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/VRNCPXU7"
            fi

            # OCR processing
            if [ -f "$target_file27" ]; then
                echo "SKIP: Output already exists: $file_name27" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file27"
                cd "/home/nathan/Desktop/zotero-storage-copy/VRNCPXU7"
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
echo "[$CURRENT/$TOTAL_FILES] Processing B4ZII4VX - Locating the Ottomans Among Early Modern Empires..."
cd "/home/nathan/Desktop/zotero-storage-copy/B4ZII4VX"
START_TIME=$(date +%s)

        source_pdf28=$(find . -name "*.pdf" -type f | head -1)
        source_file28="/home/nathan/Desktop/zotero-storage-copy/B4ZII4VX/$source_pdf28"
        target_file28="/home/nathan/home/research/tests/ocr_folders/B4ZII4VX/$source_pdf28"
        file_name28="$source_pdf28"
        if [ -z "$source_pdf28" ]; then
            echo "ERROR: Source file not found: $source_file28" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file28"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/B4ZII4VX" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/B4ZII4VX"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/B4ZII4VX"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/B4ZII4VX"
            fi

            # OCR processing
            if [ -f "$target_file28" ]; then
                echo "SKIP: Output already exists: $file_name28" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file28"
                cd "/home/nathan/Desktop/zotero-storage-copy/B4ZII4VX"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 4ZUW433W - NAF 22048..."
cd "/home/nathan/Desktop/zotero-storage-copy/4ZUW433W"
START_TIME=$(date +%s)

        source_pdf29=$(find . -name "*.pdf" -type f | head -1)
        source_file29="/home/nathan/Desktop/zotero-storage-copy/4ZUW433W/$source_pdf29"
        target_file29="/home/nathan/home/research/tests/ocr_folders/4ZUW433W/$source_pdf29"
        file_name29="$source_pdf29"
        if [ -z "$source_pdf29" ]; then
            echo "ERROR: Source file not found: $source_file29" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file29"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/4ZUW433W" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/4ZUW433W"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/4ZUW433W"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/4ZUW433W"
            fi

            # OCR processing
            if [ -f "$target_file29" ]; then
                echo "SKIP: Output already exists: $file_name29" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file29"
                cd "/home/nathan/Desktop/zotero-storage-copy/4ZUW433W"
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
echo "[$CURRENT/$TOTAL_FILES] Processing E7QUBUE3 - Family Matters: The Emigration of Elderly Jews from Vienna to the United States, 1938–1941..."
cd "/home/nathan/Desktop/zotero-storage-copy/E7QUBUE3"
START_TIME=$(date +%s)

        source_pdf30=$(find . -name "*.pdf" -type f | head -1)
        source_file30="/home/nathan/Desktop/zotero-storage-copy/E7QUBUE3/$source_pdf30"
        target_file30="/home/nathan/home/research/tests/ocr_folders/E7QUBUE3/$source_pdf30"
        file_name30="$source_pdf30"
        if [ -z "$source_pdf30" ]; then
            echo "ERROR: Source file not found: $source_file30" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file30"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/E7QUBUE3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/E7QUBUE3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/E7QUBUE3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/E7QUBUE3"
            fi

            # OCR processing
            if [ -f "$target_file30" ]; then
                echo "SKIP: Output already exists: $file_name30" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file30"
                cd "/home/nathan/Desktop/zotero-storage-copy/E7QUBUE3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing AGX42NX7 - Icons and Private Devotion Among Eighteenth-Century Moscow Townsfolk..."
cd "/home/nathan/Desktop/zotero-storage-copy/AGX42NX7"
START_TIME=$(date +%s)

        source_pdf31=$(find . -name "*.pdf" -type f | head -1)
        source_file31="/home/nathan/Desktop/zotero-storage-copy/AGX42NX7/$source_pdf31"
        target_file31="/home/nathan/home/research/tests/ocr_folders/AGX42NX7/$source_pdf31"
        file_name31="$source_pdf31"
        if [ -z "$source_pdf31" ]; then
            echo "ERROR: Source file not found: $source_file31" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file31"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/AGX42NX7" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/AGX42NX7"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/AGX42NX7"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/AGX42NX7"
            fi

            # OCR processing
            if [ -f "$target_file31" ]; then
                echo "SKIP: Output already exists: $file_name31" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file31"
                cd "/home/nathan/Desktop/zotero-storage-copy/AGX42NX7"
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
echo "[$CURRENT/$TOTAL_FILES] Processing C6QQX25V - henri de mesmes--memoires.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/C6QQX25V"
START_TIME=$(date +%s)

        source_pdf32=$(find . -name "*.pdf" -type f | head -1)
        source_file32="/home/nathan/Desktop/zotero-storage-copy/C6QQX25V/$source_pdf32"
        target_file32="/home/nathan/home/research/tests/ocr_folders/C6QQX25V/$source_pdf32"
        file_name32="$source_pdf32"
        if [ -z "$source_pdf32" ]; then
            echo "ERROR: Source file not found: $source_file32" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file32"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/C6QQX25V" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/C6QQX25V"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/C6QQX25V"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/C6QQX25V"
            fi

            # OCR processing
            if [ -f "$target_file32" ]; then
                echo "SKIP: Output already exists: $file_name32" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file32"
                cd "/home/nathan/Desktop/zotero-storage-copy/C6QQX25V"
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
echo "[$CURRENT/$TOTAL_FILES] Processing GJMJ8Q4V - « Extraict du registre des despesches receues et envoyées au voyage et legation de messire FRANÇOIS DE NOAILLES, evesque d'Acqs... envoyé par Sa Majesté resider son ambassadeur à la Porte du Grand Seigneur, au pays du Levant... ». 1571-1576..."
cd "/home/nathan/Desktop/zotero-storage-copy/GJMJ8Q4V"
START_TIME=$(date +%s)

        source_pdf33=$(find . -name "*.pdf" -type f | head -1)
        source_file33="/home/nathan/Desktop/zotero-storage-copy/GJMJ8Q4V/$source_pdf33"
        target_file33="/home/nathan/home/research/tests/ocr_folders/GJMJ8Q4V/$source_pdf33"
        file_name33="$source_pdf33"
        if [ -z "$source_pdf33" ]; then
            echo "ERROR: Source file not found: $source_file33" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file33"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/GJMJ8Q4V" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/GJMJ8Q4V"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/GJMJ8Q4V"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/GJMJ8Q4V"
            fi

            # OCR processing
            if [ -f "$target_file33" ]; then
                echo "SKIP: Output already exists: $file_name33" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file33"
                cd "/home/nathan/Desktop/zotero-storage-copy/GJMJ8Q4V"
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
echo "[$CURRENT/$TOTAL_FILES] Processing RCQSFD5W - Dépêches originales de divers ambassadeurs et agents français à Constantinople. II Années 1579-1584..."
cd "/home/nathan/Desktop/zotero-storage-copy/RCQSFD5W"
START_TIME=$(date +%s)

        source_pdf34=$(find . -name "*.pdf" -type f | head -1)
        source_file34="/home/nathan/Desktop/zotero-storage-copy/RCQSFD5W/$source_pdf34"
        target_file34="/home/nathan/home/research/tests/ocr_folders/RCQSFD5W/$source_pdf34"
        file_name34="$source_pdf34"
        if [ -z "$source_pdf34" ]; then
            echo "ERROR: Source file not found: $source_file34" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file34"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RCQSFD5W" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RCQSFD5W"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RCQSFD5W"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RCQSFD5W"
            fi

            # OCR processing
            if [ -f "$target_file34" ]; then
                echo "SKIP: Output already exists: $file_name34" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file34"
                cd "/home/nathan/Desktop/zotero-storage-copy/RCQSFD5W"
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
echo "[$CURRENT/$TOTAL_FILES] Processing JWZ7SGZE - Ottoman-French Interaction, 1480-1580: A Sixteenth-Century Encounter..."
cd "/home/nathan/Desktop/zotero-storage-copy/JWZ7SGZE"
START_TIME=$(date +%s)

        source_pdf35=$(find . -name "*.pdf" -type f | head -1)
        source_file35="/home/nathan/Desktop/zotero-storage-copy/JWZ7SGZE/$source_pdf35"
        target_file35="/home/nathan/home/research/tests/ocr_folders/JWZ7SGZE/$source_pdf35"
        file_name35="$source_pdf35"
        if [ -z "$source_pdf35" ]; then
            echo "ERROR: Source file not found: $source_file35" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file35"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/JWZ7SGZE" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/JWZ7SGZE"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/JWZ7SGZE"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/JWZ7SGZE"
            fi

            # OCR processing
            if [ -f "$target_file35" ]; then
                echo "SKIP: Output already exists: $file_name35" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file35"
                cd "/home/nathan/Desktop/zotero-storage-copy/JWZ7SGZE"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 4G888FDC - Ambassades à Constantinople de François de Noailles, Savary de Lancosmc, Savary de Brèves, Harlay de Césy et M. de Marcheville. (1572-1632)..."
cd "/home/nathan/Desktop/zotero-storage-copy/4G888FDC"
START_TIME=$(date +%s)

        source_pdf36=$(find . -name "*.pdf" -type f | head -1)
        source_file36="/home/nathan/Desktop/zotero-storage-copy/4G888FDC/$source_pdf36"
        target_file36="/home/nathan/home/research/tests/ocr_folders/4G888FDC/$source_pdf36"
        file_name36="$source_pdf36"
        if [ -z "$source_pdf36" ]; then
            echo "ERROR: Source file not found: $source_file36" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file36"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/4G888FDC" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/4G888FDC"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/4G888FDC"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/4G888FDC"
            fi

            # OCR processing
            if [ -f "$target_file36" ]; then
                echo "SKIP: Output already exists: $file_name36" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file36"
                cd "/home/nathan/Desktop/zotero-storage-copy/4G888FDC"
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
echo "[$CURRENT/$TOTAL_FILES] Processing PVCTI8ZP - Memoires de Mess martin et guillaume de bellay vols. 1 et 2.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/PVCTI8ZP"
START_TIME=$(date +%s)

        source_pdf37=$(find . -name "*.pdf" -type f | head -1)
        source_file37="/home/nathan/Desktop/zotero-storage-copy/PVCTI8ZP/$source_pdf37"
        target_file37="/home/nathan/home/research/tests/ocr_folders/PVCTI8ZP/$source_pdf37"
        file_name37="$source_pdf37"
        if [ -z "$source_pdf37" ]; then
            echo "ERROR: Source file not found: $source_file37" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file37"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PVCTI8ZP" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PVCTI8ZP"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PVCTI8ZP"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PVCTI8ZP"
            fi

            # OCR processing
            if [ -f "$target_file37" ]; then
                echo "SKIP: Output already exists: $file_name37" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file37"
                cd "/home/nathan/Desktop/zotero-storage-copy/PVCTI8ZP"
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
echo "[$CURRENT/$TOTAL_FILES] Processing CB2R2ZG6 - Commentaires_de_messire_Blaise_de_Montlu.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/CB2R2ZG6"
START_TIME=$(date +%s)

        source_pdf38=$(find . -name "*.pdf" -type f | head -1)
        source_file38="/home/nathan/Desktop/zotero-storage-copy/CB2R2ZG6/$source_pdf38"
        target_file38="/home/nathan/home/research/tests/ocr_folders/CB2R2ZG6/$source_pdf38"
        file_name38="$source_pdf38"
        if [ -z "$source_pdf38" ]; then
            echo "ERROR: Source file not found: $source_file38" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file38"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/CB2R2ZG6" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/CB2R2ZG6"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/CB2R2ZG6"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/CB2R2ZG6"
            fi

            # OCR processing
            if [ -f "$target_file38" ]; then
                echo "SKIP: Output already exists: $file_name38" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file38"
                cd "/home/nathan/Desktop/zotero-storage-copy/CB2R2ZG6"
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
echo "[$CURRENT/$TOTAL_FILES] Processing E5JNN4Z6 - Copies de pièces diverses, lettres, mémoires, etc., concernant la Turquie, et principalement les ambassades en ce pays de Jacques Savary, sieur de Lancosme, de François Savary, sieur de Brèves, de Jean de Gontaut, baron de Salagnac, et de Jacques de Gontaut, sr de Carla. (1574-1610)..."
cd "/home/nathan/Desktop/zotero-storage-copy/E5JNN4Z6"
START_TIME=$(date +%s)

        source_pdf39=$(find . -name "*.pdf" -type f | head -1)
        source_file39="/home/nathan/Desktop/zotero-storage-copy/E5JNN4Z6/$source_pdf39"
        target_file39="/home/nathan/home/research/tests/ocr_folders/E5JNN4Z6/$source_pdf39"
        file_name39="$source_pdf39"
        if [ -z "$source_pdf39" ]; then
            echo "ERROR: Source file not found: $source_file39" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file39"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/E5JNN4Z6" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/E5JNN4Z6"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/E5JNN4Z6"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/E5JNN4Z6"
            fi

            # OCR processing
            if [ -f "$target_file39" ]; then
                echo "SKIP: Output already exists: $file_name39" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file39"
                cd "/home/nathan/Desktop/zotero-storage-copy/E5JNN4Z6"
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
echo "[$CURRENT/$TOTAL_FILES] Processing HNS77AT9 - « Traictez faicts entre le Grand-Seigneur et les roys de France, potentats et républiques de l'Europe, depuis le règne du roy François premier, 1528, jusques à Louis XIII, 1634, avec autres pièces et mémoires servans à l'histoire de Turquie » ; aventures de Djem ou Zizim ; pièces sur les États barbaresques, l'Égypte, etc..."
cd "/home/nathan/Desktop/zotero-storage-copy/HNS77AT9"
START_TIME=$(date +%s)

        source_pdf40=$(find . -name "*.pdf" -type f | head -1)
        source_file40="/home/nathan/Desktop/zotero-storage-copy/HNS77AT9/$source_pdf40"
        target_file40="/home/nathan/home/research/tests/ocr_folders/HNS77AT9/$source_pdf40"
        file_name40="$source_pdf40"
        if [ -z "$source_pdf40" ]; then
            echo "ERROR: Source file not found: $source_file40" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file40"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/HNS77AT9" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/HNS77AT9"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/HNS77AT9"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/HNS77AT9"
            fi

            # OCR processing
            if [ -f "$target_file40" ]; then
                echo "SKIP: Output already exists: $file_name40" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file40"
                cd "/home/nathan/Desktop/zotero-storage-copy/HNS77AT9"
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
echo "[$CURRENT/$TOTAL_FILES] Processing WK5SPVN4 - Articles accordez par le Grand Seigneur [Selim] en faveur du roy & de ses subjets, à messire Claude du Bourg, Chevalier, Sieur de Guerine, Conseillier du Roy & Tresorier de France: pour la liberté & seurté du traffiq, commerce & passage és pays & mers de Levant...."
cd "/home/nathan/Desktop/zotero-storage-copy/WK5SPVN4"
START_TIME=$(date +%s)

        source_pdf41=$(find . -name "*.pdf" -type f | head -1)
        source_file41="/home/nathan/Desktop/zotero-storage-copy/WK5SPVN4/$source_pdf41"
        target_file41="/home/nathan/home/research/tests/ocr_folders/WK5SPVN4/$source_pdf41"
        file_name41="$source_pdf41"
        if [ -z "$source_pdf41" ]; then
            echo "ERROR: Source file not found: $source_file41" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file41"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/WK5SPVN4" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/WK5SPVN4"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/WK5SPVN4"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/WK5SPVN4"
            fi

            # OCR processing
            if [ -f "$target_file41" ]; then
                echo "SKIP: Output already exists: $file_name41" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file41"
                cd "/home/nathan/Desktop/zotero-storage-copy/WK5SPVN4"
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
echo "[$CURRENT/$TOTAL_FILES] Processing R2GIIFIV - Dépêches originales de divers ambassadeurs et agents français à Constantinople. I Années 1569-1577..."
cd "/home/nathan/Desktop/zotero-storage-copy/R2GIIFIV"
START_TIME=$(date +%s)

        source_pdf42=$(find . -name "*.pdf" -type f | head -1)
        source_file42="/home/nathan/Desktop/zotero-storage-copy/R2GIIFIV/$source_pdf42"
        target_file42="/home/nathan/home/research/tests/ocr_folders/R2GIIFIV/$source_pdf42"
        file_name42="$source_pdf42"
        if [ -z "$source_pdf42" ]; then
            echo "ERROR: Source file not found: $source_file42" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file42"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/R2GIIFIV" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/R2GIIFIV"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/R2GIIFIV"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/R2GIIFIV"
            fi

            # OCR processing
            if [ -f "$target_file42" ]; then
                echo "SKIP: Output already exists: $file_name42" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file42"
                cd "/home/nathan/Desktop/zotero-storage-copy/R2GIIFIV"
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
echo "[$CURRENT/$TOTAL_FILES] Processing VZEJ8UNN - Martens.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/VZEJ8UNN"
START_TIME=$(date +%s)

        source_pdf43=$(find . -name "*.pdf" -type f | head -1)
        source_file43="/home/nathan/Desktop/zotero-storage-copy/VZEJ8UNN/$source_pdf43"
        target_file43="/home/nathan/home/research/tests/ocr_folders/VZEJ8UNN/$source_pdf43"
        file_name43="$source_pdf43"
        if [ -z "$source_pdf43" ]; then
            echo "ERROR: Source file not found: $source_file43" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file43"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/VZEJ8UNN" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/VZEJ8UNN"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/VZEJ8UNN"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/VZEJ8UNN"
            fi

            # OCR processing
            if [ -f "$target_file43" ]; then
                echo "SKIP: Output already exists: $file_name43" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file43"
                cd "/home/nathan/Desktop/zotero-storage-copy/VZEJ8UNN"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 93QXHL5F - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nathan/Desktop/zotero-storage-copy/93QXHL5F"
START_TIME=$(date +%s)

        source_pdf44=$(find . -name "*.pdf" -type f | head -1)
        source_file44="/home/nathan/Desktop/zotero-storage-copy/93QXHL5F/$source_pdf44"
        target_file44="/home/nathan/home/research/tests/ocr_folders/93QXHL5F/$source_pdf44"
        file_name44="$source_pdf44"
        if [ -z "$source_pdf44" ]; then
            echo "ERROR: Source file not found: $source_file44" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file44"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/93QXHL5F" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/93QXHL5F"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/93QXHL5F"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/93QXHL5F"
            fi

            # OCR processing
            if [ -f "$target_file44" ]; then
                echo "SKIP: Output already exists: $file_name44" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file44"
                cd "/home/nathan/Desktop/zotero-storage-copy/93QXHL5F"
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
echo "[$CURRENT/$TOTAL_FILES] Processing T7I848CX - The Army of Flanders and the Spanish Road 1567-1659: The Logistics of Spanish Victory and Defeat in the Low Countries' War..."
cd "/home/nathan/Desktop/zotero-storage-copy/T7I848CX"
START_TIME=$(date +%s)

        source_pdf45=$(find . -name "*.pdf" -type f | head -1)
        source_file45="/home/nathan/Desktop/zotero-storage-copy/T7I848CX/$source_pdf45"
        target_file45="/home/nathan/home/research/tests/ocr_folders/T7I848CX/$source_pdf45"
        file_name45="$source_pdf45"
        if [ -z "$source_pdf45" ]; then
            echo "ERROR: Source file not found: $source_file45" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file45"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/T7I848CX" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/T7I848CX"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/T7I848CX"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/T7I848CX"
            fi

            # OCR processing
            if [ -f "$target_file45" ]; then
                echo "SKIP: Output already exists: $file_name45" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file45"
                cd "/home/nathan/Desktop/zotero-storage-copy/T7I848CX"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file45" "$target_file45"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing K3JLL2GT - The Peace of Westphalia, 1648-1948..."
cd "/home/nathan/Desktop/zotero-storage-copy/K3JLL2GT"
START_TIME=$(date +%s)

        source_pdf46=$(find . -name "*.pdf" -type f | head -1)
        source_file46="/home/nathan/Desktop/zotero-storage-copy/K3JLL2GT/$source_pdf46"
        target_file46="/home/nathan/home/research/tests/ocr_folders/K3JLL2GT/$source_pdf46"
        file_name46="$source_pdf46"
        if [ -z "$source_pdf46" ]; then
            echo "ERROR: Source file not found: $source_file46" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file46"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/K3JLL2GT" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/K3JLL2GT"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/K3JLL2GT"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/K3JLL2GT"
            fi

            # OCR processing
            if [ -f "$target_file46" ]; then
                echo "SKIP: Output already exists: $file_name46" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file46"
                cd "/home/nathan/Desktop/zotero-storage-copy/K3JLL2GT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file46" "$target_file46"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing EF7CTRYN - Muhimm 85 (1040 1630-1631).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/EF7CTRYN"
START_TIME=$(date +%s)

        source_pdf47=$(find . -name "*.pdf" -type f | head -1)
        source_file47="/home/nathan/Desktop/zotero-storage-copy/EF7CTRYN/$source_pdf47"
        target_file47="/home/nathan/home/research/tests/ocr_folders/EF7CTRYN/$source_pdf47"
        file_name47="$source_pdf47"
        if [ -z "$source_pdf47" ]; then
            echo "ERROR: Source file not found: $source_file47" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file47"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EF7CTRYN" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EF7CTRYN"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EF7CTRYN"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EF7CTRYN"
            fi

            # OCR processing
            if [ -f "$target_file47" ]; then
                echo "SKIP: Output already exists: $file_name47" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file47"
                cd "/home/nathan/Desktop/zotero-storage-copy/EF7CTRYN"
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
echo "[$CURRENT/$TOTAL_FILES] Processing P4RHKKHL - Muhimme 141.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/P4RHKKHL"
START_TIME=$(date +%s)

        source_pdf48=$(find . -name "*.pdf" -type f | head -1)
        source_file48="/home/nathan/Desktop/zotero-storage-copy/P4RHKKHL/$source_pdf48"
        target_file48="/home/nathan/home/research/tests/ocr_folders/P4RHKKHL/$source_pdf48"
        file_name48="$source_pdf48"
        if [ -z "$source_pdf48" ]; then
            echo "ERROR: Source file not found: $source_file48" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file48"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/P4RHKKHL" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/P4RHKKHL"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/P4RHKKHL"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/P4RHKKHL"
            fi

            # OCR processing
            if [ -f "$target_file48" ]; then
                echo "SKIP: Output already exists: $file_name48" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file48"
                cd "/home/nathan/Desktop/zotero-storage-copy/P4RHKKHL"
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
echo "[$CURRENT/$TOTAL_FILES] Processing SHHITQCB - Muhimme 124 (1128).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/SHHITQCB"
START_TIME=$(date +%s)

        source_pdf49=$(find . -name "*.pdf" -type f | head -1)
        source_file49="/home/nathan/Desktop/zotero-storage-copy/SHHITQCB/$source_pdf49"
        target_file49="/home/nathan/home/research/tests/ocr_folders/SHHITQCB/$source_pdf49"
        file_name49="$source_pdf49"
        if [ -z "$source_pdf49" ]; then
            echo "ERROR: Source file not found: $source_file49" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file49"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/SHHITQCB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/SHHITQCB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/SHHITQCB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/SHHITQCB"
            fi

            # OCR processing
            if [ -f "$target_file49" ]; then
                echo "SKIP: Output already exists: $file_name49" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file49"
                cd "/home/nathan/Desktop/zotero-storage-copy/SHHITQCB"
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
echo "[$CURRENT/$TOTAL_FILES] Processing GQZ3KV5R - Muhimme 109-YOK.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/GQZ3KV5R"
START_TIME=$(date +%s)

        source_pdf50=$(find . -name "*.pdf" -type f | head -1)
        source_file50="/home/nathan/Desktop/zotero-storage-copy/GQZ3KV5R/$source_pdf50"
        target_file50="/home/nathan/home/research/tests/ocr_folders/GQZ3KV5R/$source_pdf50"
        file_name50="$source_pdf50"
        if [ -z "$source_pdf50" ]; then
            echo "ERROR: Source file not found: $source_file50" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file50"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/GQZ3KV5R" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/GQZ3KV5R"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/GQZ3KV5R"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/GQZ3KV5R"
            fi

            # OCR processing
            if [ -f "$target_file50" ]; then
                echo "SKIP: Output already exists: $file_name50" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file50"
                cd "/home/nathan/Desktop/zotero-storage-copy/GQZ3KV5R"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XAWTQXYS - Muhimme 75 (p1-171).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/XAWTQXYS"
START_TIME=$(date +%s)

        source_pdf51=$(find . -name "*.pdf" -type f | head -1)
        source_file51="/home/nathan/Desktop/zotero-storage-copy/XAWTQXYS/$source_pdf51"
        target_file51="/home/nathan/home/research/tests/ocr_folders/XAWTQXYS/$source_pdf51"
        file_name51="$source_pdf51"
        if [ -z "$source_pdf51" ]; then
            echo "ERROR: Source file not found: $source_file51" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file51"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XAWTQXYS" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XAWTQXYS"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XAWTQXYS"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XAWTQXYS"
            fi

            # OCR processing
            if [ -f "$target_file51" ]; then
                echo "SKIP: Output already exists: $file_name51" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file51"
                cd "/home/nathan/Desktop/zotero-storage-copy/XAWTQXYS"
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
echo "[$CURRENT/$TOTAL_FILES] Processing F2IGQ6ND - Muhimme 63 (1587-1588).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/F2IGQ6ND"
START_TIME=$(date +%s)

        source_pdf52=$(find . -name "*.pdf" -type f | head -1)
        source_file52="/home/nathan/Desktop/zotero-storage-copy/F2IGQ6ND/$source_pdf52"
        target_file52="/home/nathan/home/research/tests/ocr_folders/F2IGQ6ND/$source_pdf52"
        file_name52="$source_pdf52"
        if [ -z "$source_pdf52" ]; then
            echo "ERROR: Source file not found: $source_file52" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file52"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/F2IGQ6ND" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/F2IGQ6ND"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/F2IGQ6ND"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/F2IGQ6ND"
            fi

            # OCR processing
            if [ -f "$target_file52" ]; then
                echo "SKIP: Output already exists: $file_name52" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file52"
                cd "/home/nathan/Desktop/zotero-storage-copy/F2IGQ6ND"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 3MHUC7ET - Muhimme 51-YOK (1583).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/3MHUC7ET"
START_TIME=$(date +%s)

        source_pdf53=$(find . -name "*.pdf" -type f | head -1)
        source_file53="/home/nathan/Desktop/zotero-storage-copy/3MHUC7ET/$source_pdf53"
        target_file53="/home/nathan/home/research/tests/ocr_folders/3MHUC7ET/$source_pdf53"
        file_name53="$source_pdf53"
        if [ -z "$source_pdf53" ]; then
            echo "ERROR: Source file not found: $source_file53" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file53"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3MHUC7ET" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3MHUC7ET"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3MHUC7ET"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3MHUC7ET"
            fi

            # OCR processing
            if [ -f "$target_file53" ]; then
                echo "SKIP: Output already exists: $file_name53" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file53"
                cd "/home/nathan/Desktop/zotero-storage-copy/3MHUC7ET"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file53" "$target_file53"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing F3PCQRK6 - Les envoyés ottomanes à la cour de France..."
cd "/home/nathan/Desktop/zotero-storage-copy/F3PCQRK6"
START_TIME=$(date +%s)

        source_pdf54=$(find . -name "*.pdf" -type f | head -1)
        source_file54="/home/nathan/Desktop/zotero-storage-copy/F3PCQRK6/$source_pdf54"
        target_file54="/home/nathan/home/research/tests/ocr_folders/F3PCQRK6/$source_pdf54"
        file_name54="$source_pdf54"
        if [ -z "$source_pdf54" ]; then
            echo "ERROR: Source file not found: $source_file54" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file54"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/F3PCQRK6" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/F3PCQRK6"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/F3PCQRK6"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/F3PCQRK6"
            fi

            # OCR processing
            if [ -f "$target_file54" ]; then
                echo "SKIP: Output already exists: $file_name54" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file54"
                cd "/home/nathan/Desktop/zotero-storage-copy/F3PCQRK6"
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
echo "[$CURRENT/$TOTAL_FILES] Processing RLIR69BL - The forgotten frontier: a history of the sixteenth century Ibero-African frontier..."
cd "/home/nathan/Desktop/zotero-storage-copy/RLIR69BL"
START_TIME=$(date +%s)

        source_pdf55=$(find . -name "*.pdf" -type f | head -1)
        source_file55="/home/nathan/Desktop/zotero-storage-copy/RLIR69BL/$source_pdf55"
        target_file55="/home/nathan/home/research/tests/ocr_folders/RLIR69BL/$source_pdf55"
        file_name55="$source_pdf55"
        if [ -z "$source_pdf55" ]; then
            echo "ERROR: Source file not found: $source_file55" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file55"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RLIR69BL" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RLIR69BL"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RLIR69BL"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RLIR69BL"
            fi

            # OCR processing
            if [ -f "$target_file55" ]; then
                echo "SKIP: Output already exists: $file_name55" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file55"
                cd "/home/nathan/Desktop/zotero-storage-copy/RLIR69BL"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9AVIX9QT - Crusading Commonplaces: La Noue, Lucinge and Rhetoric against the Turks..."
cd "/home/nathan/Desktop/zotero-storage-copy/9AVIX9QT"
START_TIME=$(date +%s)

        source_pdf56=$(find . -name "*.pdf" -type f | head -1)
        source_file56="/home/nathan/Desktop/zotero-storage-copy/9AVIX9QT/$source_pdf56"
        target_file56="/home/nathan/home/research/tests/ocr_folders/9AVIX9QT/$source_pdf56"
        file_name56="$source_pdf56"
        if [ -z "$source_pdf56" ]; then
            echo "ERROR: Source file not found: $source_file56" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file56"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9AVIX9QT" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9AVIX9QT"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9AVIX9QT"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9AVIX9QT"
            fi

            # OCR processing
            if [ -f "$target_file56" ]; then
                echo "SKIP: Output already exists: $file_name56" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file56"
                cd "/home/nathan/Desktop/zotero-storage-copy/9AVIX9QT"
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
echo "[$CURRENT/$TOTAL_FILES] Processing THBFU9JY - Inventaires des Archives de la Chambre de commerce de Marseille.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/THBFU9JY"
START_TIME=$(date +%s)

        source_pdf57=$(find . -name "*.pdf" -type f | head -1)
        source_file57="/home/nathan/Desktop/zotero-storage-copy/THBFU9JY/$source_pdf57"
        target_file57="/home/nathan/home/research/tests/ocr_folders/THBFU9JY/$source_pdf57"
        file_name57="$source_pdf57"
        if [ -z "$source_pdf57" ]; then
            echo "ERROR: Source file not found: $source_file57" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file57"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/THBFU9JY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/THBFU9JY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/THBFU9JY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/THBFU9JY"
            fi

            # OCR processing
            if [ -f "$target_file57" ]; then
                echo "SKIP: Output already exists: $file_name57" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file57"
                cd "/home/nathan/Desktop/zotero-storage-copy/THBFU9JY"
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
echo "[$CURRENT/$TOTAL_FILES] Processing K954RUH2 - (Women in Culture and Society) Martha C. Howell - Women, Production, and Patriarchy in Late Medieval Cities-University of Chicago Press (1986).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/K954RUH2"
START_TIME=$(date +%s)

        source_pdf58=$(find . -name "*.pdf" -type f | head -1)
        source_file58="/home/nathan/Desktop/zotero-storage-copy/K954RUH2/$source_pdf58"
        target_file58="/home/nathan/home/research/tests/ocr_folders/K954RUH2/$source_pdf58"
        file_name58="$source_pdf58"
        if [ -z "$source_pdf58" ]; then
            echo "ERROR: Source file not found: $source_file58" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file58"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/K954RUH2" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/K954RUH2"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/K954RUH2"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/K954RUH2"
            fi

            # OCR processing
            if [ -f "$target_file58" ]; then
                echo "SKIP: Output already exists: $file_name58" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file58"
                cd "/home/nathan/Desktop/zotero-storage-copy/K954RUH2"
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
echo "[$CURRENT/$TOTAL_FILES] Processing UPEMRQ2N - De la république des Turcs : & là où l'occasion s'offrera, des moeurs & loy de tous les Muhamédistes..."
cd "/home/nathan/Desktop/zotero-storage-copy/UPEMRQ2N"
START_TIME=$(date +%s)

        source_pdf59=$(find . -name "*.pdf" -type f | head -1)
        source_file59="/home/nathan/Desktop/zotero-storage-copy/UPEMRQ2N/$source_pdf59"
        target_file59="/home/nathan/home/research/tests/ocr_folders/UPEMRQ2N/$source_pdf59"
        file_name59="$source_pdf59"
        if [ -z "$source_pdf59" ]; then
            echo "ERROR: Source file not found: $source_file59" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file59"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UPEMRQ2N" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UPEMRQ2N"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UPEMRQ2N"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UPEMRQ2N"
            fi

            # OCR processing
            if [ -f "$target_file59" ]; then
                echo "SKIP: Output already exists: $file_name59" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file59"
                cd "/home/nathan/Desktop/zotero-storage-copy/UPEMRQ2N"
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
echo "[$CURRENT/$TOTAL_FILES] Processing G2VI7RFW - Mémoires-journaux de Pierre de L'Estoile: Édition pour la première fois complète et entièrement ......"
cd "/home/nathan/Desktop/zotero-storage-copy/G2VI7RFW"
START_TIME=$(date +%s)

        source_pdf60=$(find . -name "*.pdf" -type f | head -1)
        source_file60="/home/nathan/Desktop/zotero-storage-copy/G2VI7RFW/$source_pdf60"
        target_file60="/home/nathan/home/research/tests/ocr_folders/G2VI7RFW/$source_pdf60"
        file_name60="$source_pdf60"
        if [ -z "$source_pdf60" ]; then
            echo "ERROR: Source file not found: $source_file60" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file60"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/G2VI7RFW" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/G2VI7RFW"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/G2VI7RFW"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/G2VI7RFW"
            fi

            # OCR processing
            if [ -f "$target_file60" ]; then
                echo "SKIP: Output already exists: $file_name60" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file60"
                cd "/home/nathan/Desktop/zotero-storage-copy/G2VI7RFW"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 23WYT9X8 - Joseph Nasi, duc de Naxos..."
cd "/home/nathan/Desktop/zotero-storage-copy/23WYT9X8"
START_TIME=$(date +%s)

        source_pdf61=$(find . -name "*.pdf" -type f | head -1)
        source_file61="/home/nathan/Desktop/zotero-storage-copy/23WYT9X8/$source_pdf61"
        target_file61="/home/nathan/home/research/tests/ocr_folders/23WYT9X8/$source_pdf61"
        file_name61="$source_pdf61"
        if [ -z "$source_pdf61" ]; then
            echo "ERROR: Source file not found: $source_file61" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file61"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/23WYT9X8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/23WYT9X8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/23WYT9X8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/23WYT9X8"
            fi

            # OCR processing
            if [ -f "$target_file61" ]; then
                echo "SKIP: Output already exists: $file_name61" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file61"
                cd "/home/nathan/Desktop/zotero-storage-copy/23WYT9X8"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9PLDEPEZ - The Travels Of John Sanderson In The Levant (1584-1602)..."
cd "/home/nathan/Desktop/zotero-storage-copy/9PLDEPEZ"
START_TIME=$(date +%s)

        source_pdf62=$(find . -name "*.pdf" -type f | head -1)
        source_file62="/home/nathan/Desktop/zotero-storage-copy/9PLDEPEZ/$source_pdf62"
        target_file62="/home/nathan/home/research/tests/ocr_folders/9PLDEPEZ/$source_pdf62"
        file_name62="$source_pdf62"
        if [ -z "$source_pdf62" ]; then
            echo "ERROR: Source file not found: $source_file62" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file62"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9PLDEPEZ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9PLDEPEZ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9PLDEPEZ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9PLDEPEZ"
            fi

            # OCR processing
            if [ -f "$target_file62" ]; then
                echo "SKIP: Output already exists: $file_name62" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file62"
                cd "/home/nathan/Desktop/zotero-storage-copy/9PLDEPEZ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing J82TM6Z4 - Zar-o_Zur_Gold_and_Force_Safavid_Iran_as.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/J82TM6Z4"
START_TIME=$(date +%s)

        source_pdf63=$(find . -name "*.pdf" -type f | head -1)
        source_file63="/home/nathan/Desktop/zotero-storage-copy/J82TM6Z4/$source_pdf63"
        target_file63="/home/nathan/home/research/tests/ocr_folders/J82TM6Z4/$source_pdf63"
        file_name63="$source_pdf63"
        if [ -z "$source_pdf63" ]; then
            echo "ERROR: Source file not found: $source_file63" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file63"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/J82TM6Z4" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/J82TM6Z4"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/J82TM6Z4"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/J82TM6Z4"
            fi

            # OCR processing
            if [ -f "$target_file63" ]; then
                echo "SKIP: Output already exists: $file_name63" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file63"
                cd "/home/nathan/Desktop/zotero-storage-copy/J82TM6Z4"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XZKGVQSA - « Negotiation de Mre François DE NOAILLES, evesque d'Ars, ambassadeur pour le Roy à la Porte du Grand Seigneur, depuis l'année 1572 jusques en 1574 »..."
cd "/home/nathan/Desktop/zotero-storage-copy/XZKGVQSA"
START_TIME=$(date +%s)

        source_pdf64=$(find . -name "*.pdf" -type f | head -1)
        source_file64="/home/nathan/Desktop/zotero-storage-copy/XZKGVQSA/$source_pdf64"
        target_file64="/home/nathan/home/research/tests/ocr_folders/XZKGVQSA/$source_pdf64"
        file_name64="$source_pdf64"
        if [ -z "$source_pdf64" ]; then
            echo "ERROR: Source file not found: $source_file64" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file64"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XZKGVQSA" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XZKGVQSA"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XZKGVQSA"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XZKGVQSA"
            fi

            # OCR processing
            if [ -f "$target_file64" ]; then
                echo "SKIP: Output already exists: $file_name64" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file64"
                cd "/home/nathan/Desktop/zotero-storage-copy/XZKGVQSA"
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
echo "[$CURRENT/$TOTAL_FILES] Processing QKP67EI3 - I "Documenti Turchi" dell'Archivio di Stato di Venezia..."
cd "/home/nathan/Desktop/zotero-storage-copy/QKP67EI3"
START_TIME=$(date +%s)

        source_pdf65=$(find . -name "*.pdf" -type f | head -1)
        source_file65="/home/nathan/Desktop/zotero-storage-copy/QKP67EI3/$source_pdf65"
        target_file65="/home/nathan/home/research/tests/ocr_folders/QKP67EI3/$source_pdf65"
        file_name65="$source_pdf65"
        if [ -z "$source_pdf65" ]; then
            echo "ERROR: Source file not found: $source_file65" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file65"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/QKP67EI3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/QKP67EI3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/QKP67EI3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/QKP67EI3"
            fi

            # OCR processing
            if [ -f "$target_file65" ]; then
                echo "SKIP: Output already exists: $file_name65" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file65"
                cd "/home/nathan/Desktop/zotero-storage-copy/QKP67EI3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing VIWEG2SN - The Bell Curve: Too Smooth to be True..."
cd "/home/nathan/Desktop/zotero-storage-copy/VIWEG2SN"
START_TIME=$(date +%s)

        source_pdf66=$(find . -name "*.pdf" -type f | head -1)
        source_file66="/home/nathan/Desktop/zotero-storage-copy/VIWEG2SN/$source_pdf66"
        target_file66="/home/nathan/home/research/tests/ocr_folders/VIWEG2SN/$source_pdf66"
        file_name66="$source_pdf66"
        if [ -z "$source_pdf66" ]; then
            echo "ERROR: Source file not found: $source_file66" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file66"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/VIWEG2SN" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/VIWEG2SN"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/VIWEG2SN"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/VIWEG2SN"
            fi

            # OCR processing
            if [ -f "$target_file66" ]; then
                echo "SKIP: Output already exists: $file_name66" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file66"
                cd "/home/nathan/Desktop/zotero-storage-copy/VIWEG2SN"
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
echo "[$CURRENT/$TOTAL_FILES] Processing B9CHN9XR - Mémoires de la vie de François de Scepeaux: sire de Vielleville et comte de Duretal, maréchal de ......"
cd "/home/nathan/Desktop/zotero-storage-copy/B9CHN9XR"
START_TIME=$(date +%s)

        source_pdf67=$(find . -name "*.pdf" -type f | head -1)
        source_file67="/home/nathan/Desktop/zotero-storage-copy/B9CHN9XR/$source_pdf67"
        target_file67="/home/nathan/home/research/tests/ocr_folders/B9CHN9XR/$source_pdf67"
        file_name67="$source_pdf67"
        if [ -z "$source_pdf67" ]; then
            echo "ERROR: Source file not found: $source_file67" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file67"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/B9CHN9XR" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/B9CHN9XR"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/B9CHN9XR"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/B9CHN9XR"
            fi

            # OCR processing
            if [ -f "$target_file67" ]; then
                echo "SKIP: Output already exists: $file_name67" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file67"
                cd "/home/nathan/Desktop/zotero-storage-copy/B9CHN9XR"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9MGLNI3B - Français 3954..."
cd "/home/nathan/Desktop/zotero-storage-copy/9MGLNI3B"
START_TIME=$(date +%s)

        source_pdf68=$(find . -name "*.pdf" -type f | head -1)
        source_file68="/home/nathan/Desktop/zotero-storage-copy/9MGLNI3B/$source_pdf68"
        target_file68="/home/nathan/home/research/tests/ocr_folders/9MGLNI3B/$source_pdf68"
        file_name68="$source_pdf68"
        if [ -z "$source_pdf68" ]; then
            echo "ERROR: Source file not found: $source_file68" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file68"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9MGLNI3B" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9MGLNI3B"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9MGLNI3B"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9MGLNI3B"
            fi

            # OCR processing
            if [ -f "$target_file68" ]; then
                echo "SKIP: Output already exists: $file_name68" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file68"
                cd "/home/nathan/Desktop/zotero-storage-copy/9MGLNI3B"
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
echo "[$CURRENT/$TOTAL_FILES] Processing TN5EITB3 - Western Travelers, Eastern Antiquities, and the Image of the Turk in Early Modern Europe..."
cd "/home/nathan/Desktop/zotero-storage-copy/TN5EITB3"
START_TIME=$(date +%s)

        source_pdf69=$(find . -name "*.pdf" -type f | head -1)
        source_file69="/home/nathan/Desktop/zotero-storage-copy/TN5EITB3/$source_pdf69"
        target_file69="/home/nathan/home/research/tests/ocr_folders/TN5EITB3/$source_pdf69"
        file_name69="$source_pdf69"
        if [ -z "$source_pdf69" ]; then
            echo "ERROR: Source file not found: $source_file69" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file69"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/TN5EITB3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/TN5EITB3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/TN5EITB3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/TN5EITB3"
            fi

            # OCR processing
            if [ -f "$target_file69" ]; then
                echo "SKIP: Output already exists: $file_name69" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file69"
                cd "/home/nathan/Desktop/zotero-storage-copy/TN5EITB3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing YUW6MMFA - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/YUW6MMFA"
START_TIME=$(date +%s)

        source_pdf70=$(find . -name "*.pdf" -type f | head -1)
        source_file70="/home/nathan/Desktop/zotero-storage-copy/YUW6MMFA/$source_pdf70"
        target_file70="/home/nathan/home/research/tests/ocr_folders/YUW6MMFA/$source_pdf70"
        file_name70="$source_pdf70"
        if [ -z "$source_pdf70" ]; then
            echo "ERROR: Source file not found: $source_file70" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file70"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/YUW6MMFA" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/YUW6MMFA"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/YUW6MMFA"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/YUW6MMFA"
            fi

            # OCR processing
            if [ -f "$target_file70" ]; then
                echo "SKIP: Output already exists: $file_name70" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file70"
                cd "/home/nathan/Desktop/zotero-storage-copy/YUW6MMFA"
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
cd "/home/nathan/Desktop/zotero-storage-copy/Q54SLTSI"
START_TIME=$(date +%s)

        source_pdf71=$(find . -name "*.pdf" -type f | head -1)
        source_file71="/home/nathan/Desktop/zotero-storage-copy/Q54SLTSI/$source_pdf71"
        target_file71="/home/nathan/home/research/tests/ocr_folders/Q54SLTSI/$source_pdf71"
        file_name71="$source_pdf71"
        if [ -z "$source_pdf71" ]; then
            echo "ERROR: Source file not found: $source_file71" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file71"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/Q54SLTSI" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/Q54SLTSI"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/Q54SLTSI"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/Q54SLTSI"
            fi

            # OCR processing
            if [ -f "$target_file71" ]; then
                echo "SKIP: Output already exists: $file_name71" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file71"
                cd "/home/nathan/Desktop/zotero-storage-copy/Q54SLTSI"
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
echo "[$CURRENT/$TOTAL_FILES] Processing V3RT8IFJ - D'Alexandrie a Istanbul - Bernard Yvelise.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/V3RT8IFJ"
START_TIME=$(date +%s)

        source_pdf72=$(find . -name "*.pdf" -type f | head -1)
        source_file72="/home/nathan/Desktop/zotero-storage-copy/V3RT8IFJ/$source_pdf72"
        target_file72="/home/nathan/home/research/tests/ocr_folders/V3RT8IFJ/$source_pdf72"
        file_name72="$source_pdf72"
        if [ -z "$source_pdf72" ]; then
            echo "ERROR: Source file not found: $source_file72" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file72"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/V3RT8IFJ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/V3RT8IFJ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/V3RT8IFJ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/V3RT8IFJ"
            fi

            # OCR processing
            if [ -f "$target_file72" ]; then
                echo "SKIP: Output already exists: $file_name72" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file72"
                cd "/home/nathan/Desktop/zotero-storage-copy/V3RT8IFJ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ZMBZ7N8B - Oeuvre complètes..."
cd "/home/nathan/Desktop/zotero-storage-copy/ZMBZ7N8B"
START_TIME=$(date +%s)

        source_pdf73=$(find . -name "*.pdf" -type f | head -1)
        source_file73="/home/nathan/Desktop/zotero-storage-copy/ZMBZ7N8B/$source_pdf73"
        target_file73="/home/nathan/home/research/tests/ocr_folders/ZMBZ7N8B/$source_pdf73"
        file_name73="$source_pdf73"
        if [ -z "$source_pdf73" ]; then
            echo "ERROR: Source file not found: $source_file73" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file73"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ZMBZ7N8B" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ZMBZ7N8B"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ZMBZ7N8B"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ZMBZ7N8B"
            fi

            # OCR processing
            if [ -f "$target_file73" ]; then
                echo "SKIP: Output already exists: $file_name73" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file73"
                cd "/home/nathan/Desktop/zotero-storage-copy/ZMBZ7N8B"
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
echo "[$CURRENT/$TOTAL_FILES] Processing JG2TS3WB - Inalcik. A Case Study in Renaissance Diplomacy 342-368.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/JG2TS3WB"
START_TIME=$(date +%s)

        source_pdf75=$(find . -name "*.pdf" -type f | head -1)
        source_file75="/home/nathan/Desktop/zotero-storage-copy/JG2TS3WB/$source_pdf75"
        target_file75="/home/nathan/home/research/tests/ocr_folders/JG2TS3WB/$source_pdf75"
        file_name75="$source_pdf75"
        if [ -z "$source_pdf75" ]; then
            echo "ERROR: Source file not found: $source_file75" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file75"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/JG2TS3WB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/JG2TS3WB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/JG2TS3WB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/JG2TS3WB"
            fi

            # OCR processing
            if [ -f "$target_file75" ]; then
                echo "SKIP: Output already exists: $file_name75" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file75"
                cd "/home/nathan/Desktop/zotero-storage-copy/JG2TS3WB"
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
echo "[$CURRENT/$TOTAL_FILES] Processing IZTFBBPY - Renaissance Go-Betweens: Cultural Exchange in Early Modern Europe..."
cd "/home/nathan/Desktop/zotero-storage-copy/IZTFBBPY"
START_TIME=$(date +%s)

        source_pdf76=$(find . -name "*.pdf" -type f | head -1)
        source_file76="/home/nathan/Desktop/zotero-storage-copy/IZTFBBPY/$source_pdf76"
        target_file76="/home/nathan/home/research/tests/ocr_folders/IZTFBBPY/$source_pdf76"
        file_name76="$source_pdf76"
        if [ -z "$source_pdf76" ]; then
            echo "ERROR: Source file not found: $source_file76" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file76"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/IZTFBBPY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/IZTFBBPY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/IZTFBBPY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/IZTFBBPY"
            fi

            # OCR processing
            if [ -f "$target_file76" ]; then
                echo "SKIP: Output already exists: $file_name76" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file76"
                cd "/home/nathan/Desktop/zotero-storage-copy/IZTFBBPY"
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
echo "[$CURRENT/$TOTAL_FILES] Processing RQ4VBP6B - Recueil de correspondances d'ambassadeurs français des XVIe et XVIIe siècles. II..."
cd "/home/nathan/Desktop/zotero-storage-copy/RQ4VBP6B"
START_TIME=$(date +%s)

        source_pdf77=$(find . -name "*.pdf" -type f | head -1)
        source_file77="/home/nathan/Desktop/zotero-storage-copy/RQ4VBP6B/$source_pdf77"
        target_file77="/home/nathan/home/research/tests/ocr_folders/RQ4VBP6B/$source_pdf77"
        file_name77="$source_pdf77"
        if [ -z "$source_pdf77" ]; then
            echo "ERROR: Source file not found: $source_file77" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file77"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RQ4VBP6B" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RQ4VBP6B"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RQ4VBP6B"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RQ4VBP6B"
            fi

            # OCR processing
            if [ -f "$target_file77" ]; then
                echo "SKIP: Output already exists: $file_name77" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file77"
                cd "/home/nathan/Desktop/zotero-storage-copy/RQ4VBP6B"
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
echo "[$CURRENT/$TOTAL_FILES] Processing UJFI55VP - A Rome of One's Own: A Reflection on Cultural Geography and Identity in the Lands of Rum..."
cd "/home/nathan/Desktop/zotero-storage-copy/UJFI55VP"
START_TIME=$(date +%s)

        source_pdf78=$(find . -name "*.pdf" -type f | head -1)
        source_file78="/home/nathan/Desktop/zotero-storage-copy/UJFI55VP/$source_pdf78"
        target_file78="/home/nathan/home/research/tests/ocr_folders/UJFI55VP/$source_pdf78"
        file_name78="$source_pdf78"
        if [ -z "$source_pdf78" ]; then
            echo "ERROR: Source file not found: $source_file78" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file78"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UJFI55VP" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UJFI55VP"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UJFI55VP"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UJFI55VP"
            fi

            # OCR processing
            if [ -f "$target_file78" ]; then
                echo "SKIP: Output already exists: $file_name78" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file78"
                cd "/home/nathan/Desktop/zotero-storage-copy/UJFI55VP"
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
echo "[$CURRENT/$TOTAL_FILES] Processing C7PIXBT8 - Recueil des traités de la Porte ottomane avec les puissances étrangères depuis le premier traité conclu en 1536, entre Suléyman I et François I, jusqu'à nos jours...."
cd "/home/nathan/Desktop/zotero-storage-copy/C7PIXBT8"
START_TIME=$(date +%s)

        source_pdf79=$(find . -name "*.pdf" -type f | head -1)
        source_file79="/home/nathan/Desktop/zotero-storage-copy/C7PIXBT8/$source_pdf79"
        target_file79="/home/nathan/home/research/tests/ocr_folders/C7PIXBT8/$source_pdf79"
        file_name79="$source_pdf79"
        if [ -z "$source_pdf79" ]; then
            echo "ERROR: Source file not found: $source_file79" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file79"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/C7PIXBT8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/C7PIXBT8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/C7PIXBT8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/C7PIXBT8"
            fi

            # OCR processing
            if [ -f "$target_file79" ]; then
                echo "SKIP: Output already exists: $file_name79" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file79"
                cd "/home/nathan/Desktop/zotero-storage-copy/C7PIXBT8"
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
echo "[$CURRENT/$TOTAL_FILES] Processing PI4AINWG - Correspondance de Jacques de Germigny, baron de Germolles, ambassadeur de France en Levant (1578-1584).XVIe siècle...."
cd "/home/nathan/Desktop/zotero-storage-copy/PI4AINWG"
START_TIME=$(date +%s)

        source_pdf80=$(find . -name "*.pdf" -type f | head -1)
        source_file80="/home/nathan/Desktop/zotero-storage-copy/PI4AINWG/$source_pdf80"
        target_file80="/home/nathan/home/research/tests/ocr_folders/PI4AINWG/$source_pdf80"
        file_name80="$source_pdf80"
        if [ -z "$source_pdf80" ]; then
            echo "ERROR: Source file not found: $source_file80" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file80"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PI4AINWG" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PI4AINWG"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PI4AINWG"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PI4AINWG"
            fi

            # OCR processing
            if [ -f "$target_file80" ]; then
                echo "SKIP: Output already exists: $file_name80" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file80"
                cd "/home/nathan/Desktop/zotero-storage-copy/PI4AINWG"
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
echo "[$CURRENT/$TOTAL_FILES] Processing AUFJHBJF - « Extraict du registre des despesches receues et envoyées au voyage et legation de messire FRANÇOIS DE NOAILLES, evesque d'Acqs... envoyé par Sa Majesté resider son ambassadeur à la Porte du Grand Seigneur, au pays du Levant... ». 1571-1576..."
cd "/home/nathan/Desktop/zotero-storage-copy/AUFJHBJF"
START_TIME=$(date +%s)

        source_pdf81=$(find . -name "*.pdf" -type f | head -1)
        source_file81="/home/nathan/Desktop/zotero-storage-copy/AUFJHBJF/$source_pdf81"
        target_file81="/home/nathan/home/research/tests/ocr_folders/AUFJHBJF/$source_pdf81"
        file_name81="$source_pdf81"
        if [ -z "$source_pdf81" ]; then
            echo "ERROR: Source file not found: $source_file81" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file81"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/AUFJHBJF" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/AUFJHBJF"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/AUFJHBJF"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/AUFJHBJF"
            fi

            # OCR processing
            if [ -f "$target_file81" ]; then
                echo "SKIP: Output already exists: $file_name81" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file81"
                cd "/home/nathan/Desktop/zotero-storage-copy/AUFJHBJF"
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
echo "[$CURRENT/$TOTAL_FILES] Processing TK3AB8KU - Gold, frankincense, and myrrh: French consuls and commercial diplomacy in the Ottoman Levant, 1660--1699..."
cd "/home/nathan/Desktop/zotero-storage-copy/TK3AB8KU"
START_TIME=$(date +%s)

        source_pdf82=$(find . -name "*.pdf" -type f | head -1)
        source_file82="/home/nathan/Desktop/zotero-storage-copy/TK3AB8KU/$source_pdf82"
        target_file82="/home/nathan/home/research/tests/ocr_folders/TK3AB8KU/$source_pdf82"
        file_name82="$source_pdf82"
        if [ -z "$source_pdf82" ]; then
            echo "ERROR: Source file not found: $source_file82" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file82"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/TK3AB8KU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/TK3AB8KU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/TK3AB8KU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/TK3AB8KU"
            fi

            # OCR processing
            if [ -f "$target_file82" ]; then
                echo "SKIP: Output already exists: $file_name82" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file82"
                cd "/home/nathan/Desktop/zotero-storage-copy/TK3AB8KU"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 53T2GUZ3 - Justifier l'Injustifiable: l'alliance turque au miroir de la chrétienté (XVIeXVIIe siècles)..."
cd "/home/nathan/Desktop/zotero-storage-copy/53T2GUZ3"
START_TIME=$(date +%s)

        source_pdf83=$(find . -name "*.pdf" -type f | head -1)
        source_file83="/home/nathan/Desktop/zotero-storage-copy/53T2GUZ3/$source_pdf83"
        target_file83="/home/nathan/home/research/tests/ocr_folders/53T2GUZ3/$source_pdf83"
        file_name83="$source_pdf83"
        if [ -z "$source_pdf83" ]; then
            echo "ERROR: Source file not found: $source_file83" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file83"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/53T2GUZ3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/53T2GUZ3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/53T2GUZ3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/53T2GUZ3"
            fi

            # OCR processing
            if [ -f "$target_file83" ]; then
                echo "SKIP: Output already exists: $file_name83" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file83"
                cd "/home/nathan/Desktop/zotero-storage-copy/53T2GUZ3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing SLTRT7DB - The Wars of Religion, 1562-1598..."
cd "/home/nathan/Desktop/zotero-storage-copy/SLTRT7DB"
START_TIME=$(date +%s)

        source_pdf84=$(find . -name "*.pdf" -type f | head -1)
        source_file84="/home/nathan/Desktop/zotero-storage-copy/SLTRT7DB/$source_pdf84"
        target_file84="/home/nathan/home/research/tests/ocr_folders/SLTRT7DB/$source_pdf84"
        file_name84="$source_pdf84"
        if [ -z "$source_pdf84" ]; then
            echo "ERROR: Source file not found: $source_file84" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file84"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/SLTRT7DB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/SLTRT7DB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/SLTRT7DB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/SLTRT7DB"
            fi

            # OCR processing
            if [ -f "$target_file84" ]; then
                echo "SKIP: Output already exists: $file_name84" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file84"
                cd "/home/nathan/Desktop/zotero-storage-copy/SLTRT7DB"
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
echo "[$CURRENT/$TOTAL_FILES] Processing K2QPJSVE - The Reformation in European Perspective..."
cd "/home/nathan/Desktop/zotero-storage-copy/K2QPJSVE"
START_TIME=$(date +%s)

        source_pdf85=$(find . -name "*.pdf" -type f | head -1)
        source_file85="/home/nathan/Desktop/zotero-storage-copy/K2QPJSVE/$source_pdf85"
        target_file85="/home/nathan/home/research/tests/ocr_folders/K2QPJSVE/$source_pdf85"
        file_name85="$source_pdf85"
        if [ -z "$source_pdf85" ]; then
            echo "ERROR: Source file not found: $source_file85" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file85"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/K2QPJSVE" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/K2QPJSVE"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/K2QPJSVE"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/K2QPJSVE"
            fi

            # OCR processing
            if [ -f "$target_file85" ]; then
                echo "SKIP: Output already exists: $file_name85" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file85"
                cd "/home/nathan/Desktop/zotero-storage-copy/K2QPJSVE"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XV8JE4XQ - The South..."
cd "/home/nathan/Desktop/zotero-storage-copy/XV8JE4XQ"
START_TIME=$(date +%s)

        source_pdf86=$(find . -name "*.pdf" -type f | head -1)
        source_file86="/home/nathan/Desktop/zotero-storage-copy/XV8JE4XQ/$source_pdf86"
        target_file86="/home/nathan/home/research/tests/ocr_folders/XV8JE4XQ/$source_pdf86"
        file_name86="$source_pdf86"
        if [ -z "$source_pdf86" ]; then
            echo "ERROR: Source file not found: $source_file86" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file86"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XV8JE4XQ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XV8JE4XQ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XV8JE4XQ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XV8JE4XQ"
            fi

            # OCR processing
            if [ -f "$target_file86" ]; then
                echo "SKIP: Output already exists: $file_name86" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file86"
                cd "/home/nathan/Desktop/zotero-storage-copy/XV8JE4XQ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file86" "$target_file86"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing UK47CPEY - Industrial Revolution [precondition excerpts]..."
cd "/home/nathan/Desktop/zotero-storage-copy/UK47CPEY"
START_TIME=$(date +%s)

        source_pdf87=$(find . -name "*.pdf" -type f | head -1)
        source_file87="/home/nathan/Desktop/zotero-storage-copy/UK47CPEY/$source_pdf87"
        target_file87="/home/nathan/home/research/tests/ocr_folders/UK47CPEY/$source_pdf87"
        file_name87="$source_pdf87"
        if [ -z "$source_pdf87" ]; then
            echo "ERROR: Source file not found: $source_file87" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file87"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UK47CPEY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UK47CPEY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UK47CPEY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UK47CPEY"
            fi

            # OCR processing
            if [ -f "$target_file87" ]; then
                echo "SKIP: Output already exists: $file_name87" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file87"
                cd "/home/nathan/Desktop/zotero-storage-copy/UK47CPEY"
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
echo "[$CURRENT/$TOTAL_FILES] Processing GJC9X2R8 - Ursu La politique orientale de Francois Ier 1515-1547..."
cd "/home/nathan/Desktop/zotero-storage-copy/GJC9X2R8"
START_TIME=$(date +%s)

        source_pdf88=$(find . -name "*.pdf" -type f | head -1)
        source_file88="/home/nathan/Desktop/zotero-storage-copy/GJC9X2R8/$source_pdf88"
        target_file88="/home/nathan/home/research/tests/ocr_folders/GJC9X2R8/$source_pdf88"
        file_name88="$source_pdf88"
        if [ -z "$source_pdf88" ]; then
            echo "ERROR: Source file not found: $source_file88" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file88"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/GJC9X2R8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/GJC9X2R8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/GJC9X2R8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/GJC9X2R8"
            fi

            # OCR processing
            if [ -f "$target_file88" ]; then
                echo "SKIP: Output already exists: $file_name88" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file88"
                cd "/home/nathan/Desktop/zotero-storage-copy/GJC9X2R8"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file88" "$target_file88"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing D29QI29M - Ahkam Defteri 906-1501 [ed. Emecen].pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/D29QI29M"
START_TIME=$(date +%s)

        source_pdf89=$(find . -name "*.pdf" -type f | head -1)
        source_file89="/home/nathan/Desktop/zotero-storage-copy/D29QI29M/$source_pdf89"
        target_file89="/home/nathan/home/research/tests/ocr_folders/D29QI29M/$source_pdf89"
        file_name89="$source_pdf89"
        if [ -z "$source_pdf89" ]; then
            echo "ERROR: Source file not found: $source_file89" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file89"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/D29QI29M" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/D29QI29M"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/D29QI29M"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/D29QI29M"
            fi

            # OCR processing
            if [ -f "$target_file89" ]; then
                echo "SKIP: Output already exists: $file_name89" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file89"
                cd "/home/nathan/Desktop/zotero-storage-copy/D29QI29M"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ZHJWIHZS - Muhimme 107-YOK.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/ZHJWIHZS"
START_TIME=$(date +%s)

        source_pdf90=$(find . -name "*.pdf" -type f | head -1)
        source_file90="/home/nathan/Desktop/zotero-storage-copy/ZHJWIHZS/$source_pdf90"
        target_file90="/home/nathan/home/research/tests/ocr_folders/ZHJWIHZS/$source_pdf90"
        file_name90="$source_pdf90"
        if [ -z "$source_pdf90" ]; then
            echo "ERROR: Source file not found: $source_file90" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file90"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ZHJWIHZS" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ZHJWIHZS"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ZHJWIHZS"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ZHJWIHZS"
            fi

            # OCR processing
            if [ -f "$target_file90" ]; then
                echo "SKIP: Output already exists: $file_name90" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file90"
                cd "/home/nathan/Desktop/zotero-storage-copy/ZHJWIHZS"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ZLYSZLU5 - Muhimme 107.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/ZLYSZLU5"
START_TIME=$(date +%s)

        source_pdf91=$(find . -name "*.pdf" -type f | head -1)
        source_file91="/home/nathan/Desktop/zotero-storage-copy/ZLYSZLU5/$source_pdf91"
        target_file91="/home/nathan/home/research/tests/ocr_folders/ZLYSZLU5/$source_pdf91"
        file_name91="$source_pdf91"
        if [ -z "$source_pdf91" ]; then
            echo "ERROR: Source file not found: $source_file91" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file91"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ZLYSZLU5" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ZLYSZLU5"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ZLYSZLU5"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ZLYSZLU5"
            fi

            # OCR processing
            if [ -f "$target_file91" ]; then
                echo "SKIP: Output already exists: $file_name91" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file91"
                cd "/home/nathan/Desktop/zotero-storage-copy/ZLYSZLU5"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 7YAGWV36 - Muhimme 96-7 [1679-1680] [ed. Gunduz].pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/7YAGWV36"
START_TIME=$(date +%s)

        source_pdf92=$(find . -name "*.pdf" -type f | head -1)
        source_file92="/home/nathan/Desktop/zotero-storage-copy/7YAGWV36/$source_pdf92"
        target_file92="/home/nathan/home/research/tests/ocr_folders/7YAGWV36/$source_pdf92"
        file_name92="$source_pdf92"
        if [ -z "$source_pdf92" ]; then
            echo "ERROR: Source file not found: $source_file92" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file92"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/7YAGWV36" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/7YAGWV36"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/7YAGWV36"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/7YAGWV36"
            fi

            # OCR processing
            if [ -f "$target_file92" ]; then
                echo "SKIP: Output already exists: $file_name92" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file92"
                cd "/home/nathan/Desktop/zotero-storage-copy/7YAGWV36"
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
echo "[$CURRENT/$TOTAL_FILES] Processing D2J7HGAY - Muhimme 84.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/D2J7HGAY"
START_TIME=$(date +%s)

        source_pdf93=$(find . -name "*.pdf" -type f | head -1)
        source_file93="/home/nathan/Desktop/zotero-storage-copy/D2J7HGAY/$source_pdf93"
        target_file93="/home/nathan/home/research/tests/ocr_folders/D2J7HGAY/$source_pdf93"
        file_name93="$source_pdf93"
        if [ -z "$source_pdf93" ]; then
            echo "ERROR: Source file not found: $source_file93" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file93"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/D2J7HGAY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/D2J7HGAY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/D2J7HGAY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/D2J7HGAY"
            fi

            # OCR processing
            if [ -f "$target_file93" ]; then
                echo "SKIP: Output already exists: $file_name93" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file93"
                cd "/home/nathan/Desktop/zotero-storage-copy/D2J7HGAY"
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
echo "[$CURRENT/$TOTAL_FILES] Processing UWCDEBDF - The Travels of Johns Sanderson..."
cd "/home/nathan/Desktop/zotero-storage-copy/UWCDEBDF"
START_TIME=$(date +%s)

        source_pdf94=$(find . -name "*.pdf" -type f | head -1)
        source_file94="/home/nathan/Desktop/zotero-storage-copy/UWCDEBDF/$source_pdf94"
        target_file94="/home/nathan/home/research/tests/ocr_folders/UWCDEBDF/$source_pdf94"
        file_name94="$source_pdf94"
        if [ -z "$source_pdf94" ]; then
            echo "ERROR: Source file not found: $source_file94" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file94"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UWCDEBDF" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UWCDEBDF"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UWCDEBDF"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UWCDEBDF"
            fi

            # OCR processing
            if [ -f "$target_file94" ]; then
                echo "SKIP: Output already exists: $file_name94" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file94"
                cd "/home/nathan/Desktop/zotero-storage-copy/UWCDEBDF"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file94" "$target_file94"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing WD7QAWT8 - Les envoyés ottomans àla cour de France: d'une présence controversée à l'exaltation d'une alliance (XVe-XVIIIe siècles)..."
cd "/home/nathan/Desktop/zotero-storage-copy/WD7QAWT8"
START_TIME=$(date +%s)

        source_pdf95=$(find . -name "*.pdf" -type f | head -1)
        source_file95="/home/nathan/Desktop/zotero-storage-copy/WD7QAWT8/$source_pdf95"
        target_file95="/home/nathan/home/research/tests/ocr_folders/WD7QAWT8/$source_pdf95"
        file_name95="$source_pdf95"
        if [ -z "$source_pdf95" ]; then
            echo "ERROR: Source file not found: $source_file95" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file95"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/WD7QAWT8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/WD7QAWT8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/WD7QAWT8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/WD7QAWT8"
            fi

            # OCR processing
            if [ -f "$target_file95" ]; then
                echo "SKIP: Output already exists: $file_name95" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file95"
                cd "/home/nathan/Desktop/zotero-storage-copy/WD7QAWT8"
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
echo "[$CURRENT/$TOTAL_FILES] Processing MHQSNLVU - La politique orientale de François Ier, (1515-1547)..."
cd "/home/nathan/Desktop/zotero-storage-copy/MHQSNLVU"
START_TIME=$(date +%s)

        source_pdf96=$(find . -name "*.pdf" -type f | head -1)
        source_file96="/home/nathan/Desktop/zotero-storage-copy/MHQSNLVU/$source_pdf96"
        target_file96="/home/nathan/home/research/tests/ocr_folders/MHQSNLVU/$source_pdf96"
        file_name96="$source_pdf96"
        if [ -z "$source_pdf96" ]; then
            echo "ERROR: Source file not found: $source_file96" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file96"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/MHQSNLVU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/MHQSNLVU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/MHQSNLVU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/MHQSNLVU"
            fi

            # OCR processing
            if [ -f "$target_file96" ]; then
                echo "SKIP: Output already exists: $file_name96" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file96"
                cd "/home/nathan/Desktop/zotero-storage-copy/MHQSNLVU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file96" "$target_file96"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing 6ZYY4MWU - Calendar of State Papers and Manuscripts Relating to English Affairs, existing in the Archives and Collections of Venice, and in Other Libraries in Northern Italy..."
cd "/home/nathan/Desktop/zotero-storage-copy/6ZYY4MWU"
START_TIME=$(date +%s)

        source_pdf97=$(find . -name "*.pdf" -type f | head -1)
        source_file97="/home/nathan/Desktop/zotero-storage-copy/6ZYY4MWU/$source_pdf97"
        target_file97="/home/nathan/home/research/tests/ocr_folders/6ZYY4MWU/$source_pdf97"
        file_name97="$source_pdf97"
        if [ -z "$source_pdf97" ]; then
            echo "ERROR: Source file not found: $source_file97" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file97"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/6ZYY4MWU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/6ZYY4MWU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/6ZYY4MWU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/6ZYY4MWU"
            fi

            # OCR processing
            if [ -f "$target_file97" ]; then
                echo "SKIP: Output already exists: $file_name97" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file97"
                cd "/home/nathan/Desktop/zotero-storage-copy/6ZYY4MWU"
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
echo "[$CURRENT/$TOTAL_FILES] Processing BNIY6RS4 - Between Two Continental Wars: the Ottoman Naval Preparations in 1590-1592..."
cd "/home/nathan/Desktop/zotero-storage-copy/BNIY6RS4"
START_TIME=$(date +%s)

        source_pdf98=$(find . -name "*.pdf" -type f | head -1)
        source_file98="/home/nathan/Desktop/zotero-storage-copy/BNIY6RS4/$source_pdf98"
        target_file98="/home/nathan/home/research/tests/ocr_folders/BNIY6RS4/$source_pdf98"
        file_name98="$source_pdf98"
        if [ -z "$source_pdf98" ]; then
            echo "ERROR: Source file not found: $source_file98" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file98"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/BNIY6RS4" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/BNIY6RS4"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/BNIY6RS4"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/BNIY6RS4"
            fi

            # OCR processing
            if [ -f "$target_file98" ]; then
                echo "SKIP: Output already exists: $file_name98" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file98"
                cd "/home/nathan/Desktop/zotero-storage-copy/BNIY6RS4"
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
echo "[$CURRENT/$TOTAL_FILES] Processing CQDBIS9B - calendarstatepa00browgoog.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/CQDBIS9B"
START_TIME=$(date +%s)

        source_pdf99=$(find . -name "*.pdf" -type f | head -1)
        source_file99="/home/nathan/Desktop/zotero-storage-copy/CQDBIS9B/$source_pdf99"
        target_file99="/home/nathan/home/research/tests/ocr_folders/CQDBIS9B/$source_pdf99"
        file_name99="$source_pdf99"
        if [ -z "$source_pdf99" ]; then
            echo "ERROR: Source file not found: $source_file99" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file99"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/CQDBIS9B" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/CQDBIS9B"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/CQDBIS9B"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/CQDBIS9B"
            fi

            # OCR processing
            if [ -f "$target_file99" ]; then
                echo "SKIP: Output already exists: $file_name99" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file99"
                cd "/home/nathan/Desktop/zotero-storage-copy/CQDBIS9B"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ISDW59XD - The Huguenots..."
cd "/home/nathan/Desktop/zotero-storage-copy/ISDW59XD"
START_TIME=$(date +%s)

        source_pdf100=$(find . -name "*.pdf" -type f | head -1)
        source_file100="/home/nathan/Desktop/zotero-storage-copy/ISDW59XD/$source_pdf100"
        target_file100="/home/nathan/home/research/tests/ocr_folders/ISDW59XD/$source_pdf100"
        file_name100="$source_pdf100"
        if [ -z "$source_pdf100" ]; then
            echo "ERROR: Source file not found: $source_file100" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file100"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ISDW59XD" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ISDW59XD"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ISDW59XD"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ISDW59XD"
            fi

            # OCR processing
            if [ -f "$target_file100" ]; then
                echo "SKIP: Output already exists: $file_name100" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file100"
                cd "/home/nathan/Desktop/zotero-storage-copy/ISDW59XD"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 73V38NCM - Les navigations peregrinations et voyages, faicts en la Turquie, par Nicolas de Nicolay daulphinoys, seigneur d'Arfeville ... contenants plusieurs singularitez que l'autheur y a veu & obserué: le tout distingué en quatre liures: auec soixante figures au naturel tant d'hommes, que de femmes selon la diuersité des nations, leur port, maintien, habits, loyx, religion & façon de viure, tant en temps de paix comme de guerre: auec plusieurs belles & memorables histoires, advenuës en nostre temps..."
cd "/home/nathan/Desktop/zotero-storage-copy/73V38NCM"
START_TIME=$(date +%s)

        source_pdf101=$(find . -name "*.pdf" -type f | head -1)
        source_file101="/home/nathan/Desktop/zotero-storage-copy/73V38NCM/$source_pdf101"
        target_file101="/home/nathan/home/research/tests/ocr_folders/73V38NCM/$source_pdf101"
        file_name101="$source_pdf101"
        if [ -z "$source_pdf101" ]; then
            echo "ERROR: Source file not found: $source_file101" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file101"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/73V38NCM" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/73V38NCM"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/73V38NCM"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/73V38NCM"
            fi

            # OCR processing
            if [ -f "$target_file101" ]; then
                echo "SKIP: Output already exists: $file_name101" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file101"
                cd "/home/nathan/Desktop/zotero-storage-copy/73V38NCM"
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
echo "[$CURRENT/$TOTAL_FILES] Processing SNCQ9CYQ - Les ambassadeurs français permanents au XVIe siècle..."
cd "/home/nathan/Desktop/zotero-storage-copy/SNCQ9CYQ"
START_TIME=$(date +%s)

        source_pdf102=$(find . -name "*.pdf" -type f | head -1)
        source_file102="/home/nathan/Desktop/zotero-storage-copy/SNCQ9CYQ/$source_pdf102"
        target_file102="/home/nathan/home/research/tests/ocr_folders/SNCQ9CYQ/$source_pdf102"
        file_name102="$source_pdf102"
        if [ -z "$source_pdf102" ]; then
            echo "ERROR: Source file not found: $source_file102" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file102"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/SNCQ9CYQ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/SNCQ9CYQ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/SNCQ9CYQ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/SNCQ9CYQ"
            fi

            # OCR processing
            if [ -f "$target_file102" ]; then
                echo "SKIP: Output already exists: $file_name102" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file102"
                cd "/home/nathan/Desktop/zotero-storage-copy/SNCQ9CYQ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing HXF89J9M - Muhimme 3 [ed. Tas, MA].pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/HXF89J9M"
START_TIME=$(date +%s)

        source_pdf103=$(find . -name "*.pdf" -type f | head -1)
        source_file103="/home/nathan/Desktop/zotero-storage-copy/HXF89J9M/$source_pdf103"
        target_file103="/home/nathan/home/research/tests/ocr_folders/HXF89J9M/$source_pdf103"
        file_name103="$source_pdf103"
        if [ -z "$source_pdf103" ]; then
            echo "ERROR: Source file not found: $source_file103" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file103"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/HXF89J9M" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/HXF89J9M"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/HXF89J9M"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/HXF89J9M"
            fi

            # OCR processing
            if [ -f "$target_file103" ]; then
                echo "SKIP: Output already exists: $file_name103" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file103"
                cd "/home/nathan/Desktop/zotero-storage-copy/HXF89J9M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file103" "$target_file103"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing ACDKDBP3 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/ACDKDBP3"
START_TIME=$(date +%s)

        source_pdf104=$(find . -name "*.pdf" -type f | head -1)
        source_file104="/home/nathan/Desktop/zotero-storage-copy/ACDKDBP3/$source_pdf104"
        target_file104="/home/nathan/home/research/tests/ocr_folders/ACDKDBP3/$source_pdf104"
        file_name104="$source_pdf104"
        if [ -z "$source_pdf104" ]; then
            echo "ERROR: Source file not found: $source_file104" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file104"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ACDKDBP3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ACDKDBP3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ACDKDBP3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ACDKDBP3"
            fi

            # OCR processing
            if [ -f "$target_file104" ]; then
                echo "SKIP: Output already exists: $file_name104" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file104"
                cd "/home/nathan/Desktop/zotero-storage-copy/ACDKDBP3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file104" "$target_file104"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing G5P87E8M - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/G5P87E8M"
START_TIME=$(date +%s)

        source_pdf105=$(find . -name "*.pdf" -type f | head -1)
        source_file105="/home/nathan/Desktop/zotero-storage-copy/G5P87E8M/$source_pdf105"
        target_file105="/home/nathan/home/research/tests/ocr_folders/G5P87E8M/$source_pdf105"
        file_name105="$source_pdf105"
        if [ -z "$source_pdf105" ]; then
            echo "ERROR: Source file not found: $source_file105" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file105"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/G5P87E8M" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/G5P87E8M"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/G5P87E8M"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/G5P87E8M"
            fi

            # OCR processing
            if [ -f "$target_file105" ]; then
                echo "SKIP: Output already exists: $file_name105" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file105"
                cd "/home/nathan/Desktop/zotero-storage-copy/G5P87E8M"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 479NNEH8 - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/479NNEH8"
START_TIME=$(date +%s)

        source_pdf106=$(find . -name "*.pdf" -type f | head -1)
        source_file106="/home/nathan/Desktop/zotero-storage-copy/479NNEH8/$source_pdf106"
        target_file106="/home/nathan/home/research/tests/ocr_folders/479NNEH8/$source_pdf106"
        file_name106="$source_pdf106"
        if [ -z "$source_pdf106" ]; then
            echo "ERROR: Source file not found: $source_file106" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file106"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/479NNEH8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/479NNEH8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/479NNEH8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/479NNEH8"
            fi

            # OCR processing
            if [ -f "$target_file106" ]; then
                echo "SKIP: Output already exists: $file_name106" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file106"
                cd "/home/nathan/Desktop/zotero-storage-copy/479NNEH8"
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
echo "[$CURRENT/$TOTAL_FILES] Processing BF88EXXG - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/BF88EXXG"
START_TIME=$(date +%s)

        source_pdf107=$(find . -name "*.pdf" -type f | head -1)
        source_file107="/home/nathan/Desktop/zotero-storage-copy/BF88EXXG/$source_pdf107"
        target_file107="/home/nathan/home/research/tests/ocr_folders/BF88EXXG/$source_pdf107"
        file_name107="$source_pdf107"
        if [ -z "$source_pdf107" ]; then
            echo "ERROR: Source file not found: $source_file107" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file107"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/BF88EXXG" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/BF88EXXG"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/BF88EXXG"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/BF88EXXG"
            fi

            # OCR processing
            if [ -f "$target_file107" ]; then
                echo "SKIP: Output already exists: $file_name107" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file107"
                cd "/home/nathan/Desktop/zotero-storage-copy/BF88EXXG"
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
echo "[$CURRENT/$TOTAL_FILES] Processing ZBH5H6QU - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/ZBH5H6QU"
START_TIME=$(date +%s)

        source_pdf108=$(find . -name "*.pdf" -type f | head -1)
        source_file108="/home/nathan/Desktop/zotero-storage-copy/ZBH5H6QU/$source_pdf108"
        target_file108="/home/nathan/home/research/tests/ocr_folders/ZBH5H6QU/$source_pdf108"
        file_name108="$source_pdf108"
        if [ -z "$source_pdf108" ]; then
            echo "ERROR: Source file not found: $source_file108" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file108"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/ZBH5H6QU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/ZBH5H6QU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/ZBH5H6QU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/ZBH5H6QU"
            fi

            # OCR processing
            if [ -f "$target_file108" ]; then
                echo "SKIP: Output already exists: $file_name108" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file108"
                cd "/home/nathan/Desktop/zotero-storage-copy/ZBH5H6QU"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 36QXTIFY - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/36QXTIFY"
START_TIME=$(date +%s)

        source_pdf109=$(find . -name "*.pdf" -type f | head -1)
        source_file109="/home/nathan/Desktop/zotero-storage-copy/36QXTIFY/$source_pdf109"
        target_file109="/home/nathan/home/research/tests/ocr_folders/36QXTIFY/$source_pdf109"
        file_name109="$source_pdf109"
        if [ -z "$source_pdf109" ]; then
            echo "ERROR: Source file not found: $source_file109" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file109"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/36QXTIFY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/36QXTIFY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/36QXTIFY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/36QXTIFY"
            fi

            # OCR processing
            if [ -f "$target_file109" ]; then
                echo "SKIP: Output already exists: $file_name109" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file109"
                cd "/home/nathan/Desktop/zotero-storage-copy/36QXTIFY"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 3V9GP8PK - Français 3954 (cote)..."
cd "/home/nathan/Desktop/zotero-storage-copy/3V9GP8PK"
START_TIME=$(date +%s)

        source_pdf110=$(find . -name "*.pdf" -type f | head -1)
        source_file110="/home/nathan/Desktop/zotero-storage-copy/3V9GP8PK/$source_pdf110"
        target_file110="/home/nathan/home/research/tests/ocr_folders/3V9GP8PK/$source_pdf110"
        file_name110="$source_pdf110"
        if [ -z "$source_pdf110" ]; then
            echo "ERROR: Source file not found: $source_file110" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file110"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3V9GP8PK" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3V9GP8PK"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3V9GP8PK"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3V9GP8PK"
            fi

            # OCR processing
            if [ -f "$target_file110" ]; then
                echo "SKIP: Output already exists: $file_name110" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file110"
                cd "/home/nathan/Desktop/zotero-storage-copy/3V9GP8PK"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 24ZH4QQH - Registre des lettres et dépêches adressées par André Hurault de Maisse à la Cour et à diverses personnes, pendant son ambassade à Venise. (Novembre 1582-août 1588). Nov 1582-dec 1583..."
cd "/home/nathan/Desktop/zotero-storage-copy/24ZH4QQH"
START_TIME=$(date +%s)

        source_pdf111=$(find . -name "*.pdf" -type f | head -1)
        source_file111="/home/nathan/Desktop/zotero-storage-copy/24ZH4QQH/$source_pdf111"
        target_file111="/home/nathan/home/research/tests/ocr_folders/24ZH4QQH/$source_pdf111"
        file_name111="$source_pdf111"
        if [ -z "$source_pdf111" ]; then
            echo "ERROR: Source file not found: $source_file111" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file111"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/24ZH4QQH" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/24ZH4QQH"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/24ZH4QQH"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/24ZH4QQH"
            fi

            # OCR processing
            if [ -f "$target_file111" ]; then
                echo "SKIP: Output already exists: $file_name111" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file111"
                cd "/home/nathan/Desktop/zotero-storage-copy/24ZH4QQH"
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
cd "/home/nathan/Desktop/zotero-storage-copy/I5KRH76I"
START_TIME=$(date +%s)

        source_pdf112=$(find . -name "*.pdf" -type f | head -1)
        source_file112="/home/nathan/Desktop/zotero-storage-copy/I5KRH76I/$source_pdf112"
        target_file112="/home/nathan/home/research/tests/ocr_folders/I5KRH76I/$source_pdf112"
        file_name112="$source_pdf112"
        if [ -z "$source_pdf112" ]; then
            echo "ERROR: Source file not found: $source_file112" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file112"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/I5KRH76I" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/I5KRH76I"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/I5KRH76I"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/I5KRH76I"
            fi

            # OCR processing
            if [ -f "$target_file112" ]; then
                echo "SKIP: Output already exists: $file_name112" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file112"
                cd "/home/nathan/Desktop/zotero-storage-copy/I5KRH76I"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9JFTEKE3 - Relazioni degli stati europei lette al Senato dagli ambasciatori Veneti nel secolo decimosettimo..."
cd "/home/nathan/Desktop/zotero-storage-copy/9JFTEKE3"
START_TIME=$(date +%s)

        source_pdf113=$(find . -name "*.pdf" -type f | head -1)
        source_file113="/home/nathan/Desktop/zotero-storage-copy/9JFTEKE3/$source_pdf113"
        target_file113="/home/nathan/home/research/tests/ocr_folders/9JFTEKE3/$source_pdf113"
        file_name113="$source_pdf113"
        if [ -z "$source_pdf113" ]; then
            echo "ERROR: Source file not found: $source_file113" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file113"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9JFTEKE3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9JFTEKE3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9JFTEKE3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9JFTEKE3"
            fi

            # OCR processing
            if [ -f "$target_file113" ]; then
                echo "SKIP: Output already exists: $file_name113" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file113"
                cd "/home/nathan/Desktop/zotero-storage-copy/9JFTEKE3"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XSGG5A76 - Correspondance de Jacques de Germigny, baron de Germolles, ambassadeur de France en Levant (1577-1584)..."
cd "/home/nathan/Desktop/zotero-storage-copy/XSGG5A76"
START_TIME=$(date +%s)

        source_pdf114=$(find . -name "*.pdf" -type f | head -1)
        source_file114="/home/nathan/Desktop/zotero-storage-copy/XSGG5A76/$source_pdf114"
        target_file114="/home/nathan/home/research/tests/ocr_folders/XSGG5A76/$source_pdf114"
        file_name114="$source_pdf114"
        if [ -z "$source_pdf114" ]; then
            echo "ERROR: Source file not found: $source_file114" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file114"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XSGG5A76" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XSGG5A76"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XSGG5A76"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XSGG5A76"
            fi

            # OCR processing
            if [ -f "$target_file114" ]; then
                echo "SKIP: Output already exists: $file_name114" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file114"
                cd "/home/nathan/Desktop/zotero-storage-copy/XSGG5A76"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XZ3XISCU - Gifts in motion: Ottoman-Safavid cultural exchange, 1501-1618..."
cd "/home/nathan/Desktop/zotero-storage-copy/XZ3XISCU"
START_TIME=$(date +%s)

        source_pdf115=$(find . -name "*.pdf" -type f | head -1)
        source_file115="/home/nathan/Desktop/zotero-storage-copy/XZ3XISCU/$source_pdf115"
        target_file115="/home/nathan/home/research/tests/ocr_folders/XZ3XISCU/$source_pdf115"
        file_name115="$source_pdf115"
        if [ -z "$source_pdf115" ]; then
            echo "ERROR: Source file not found: $source_file115" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file115"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XZ3XISCU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XZ3XISCU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XZ3XISCU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XZ3XISCU"
            fi

            # OCR processing
            if [ -f "$target_file115" ]; then
                echo "SKIP: Output already exists: $file_name115" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file115"
                cd "/home/nathan/Desktop/zotero-storage-copy/XZ3XISCU"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XVICWEGR - Assimilation and Racialism in Seventeenth and Eighteenth-Century French Colonial Policy..."
cd "/home/nathan/Desktop/zotero-storage-copy/XVICWEGR"
START_TIME=$(date +%s)

        source_pdf116=$(find . -name "*.pdf" -type f | head -1)
        source_file116="/home/nathan/Desktop/zotero-storage-copy/XVICWEGR/$source_pdf116"
        target_file116="/home/nathan/home/research/tests/ocr_folders/XVICWEGR/$source_pdf116"
        file_name116="$source_pdf116"
        if [ -z "$source_pdf116" ]; then
            echo "ERROR: Source file not found: $source_file116" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file116"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XVICWEGR" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XVICWEGR"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XVICWEGR"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XVICWEGR"
            fi

            # OCR processing
            if [ -f "$target_file116" ]; then
                echo "SKIP: Output already exists: $file_name116" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file116"
                cd "/home/nathan/Desktop/zotero-storage-copy/XVICWEGR"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 48TEPDF2 - Auto Thrill Shows and Destruction Derbies, 1922–1965: Establishing the Cultural Logic of the Deliberate Car Crash in America..."
cd "/home/nathan/Desktop/zotero-storage-copy/48TEPDF2"
START_TIME=$(date +%s)

        source_pdf117=$(find . -name "*.pdf" -type f | head -1)
        source_file117="/home/nathan/Desktop/zotero-storage-copy/48TEPDF2/$source_pdf117"
        target_file117="/home/nathan/home/research/tests/ocr_folders/48TEPDF2/$source_pdf117"
        file_name117="$source_pdf117"
        if [ -z "$source_pdf117" ]; then
            echo "ERROR: Source file not found: $source_file117" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file117"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/48TEPDF2" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/48TEPDF2"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/48TEPDF2"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/48TEPDF2"
            fi

            # OCR processing
            if [ -f "$target_file117" ]; then
                echo "SKIP: Output already exists: $file_name117" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file117"
                cd "/home/nathan/Desktop/zotero-storage-copy/48TEPDF2"
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
echo "[$CURRENT/$TOTAL_FILES] Processing UKXE6NSX - Reading the Power of Printed Orality in Afghanistan: Popular Pashto Literature as Historical Evidence and Public Intervention..."
cd "/home/nathan/Desktop/zotero-storage-copy/UKXE6NSX"
START_TIME=$(date +%s)

        source_pdf118=$(find . -name "*.pdf" -type f | head -1)
        source_file118="/home/nathan/Desktop/zotero-storage-copy/UKXE6NSX/$source_pdf118"
        target_file118="/home/nathan/home/research/tests/ocr_folders/UKXE6NSX/$source_pdf118"
        file_name118="$source_pdf118"
        if [ -z "$source_pdf118" ]; then
            echo "ERROR: Source file not found: $source_file118" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file118"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UKXE6NSX" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UKXE6NSX"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UKXE6NSX"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UKXE6NSX"
            fi

            # OCR processing
            if [ -f "$target_file118" ]; then
                echo "SKIP: Output already exists: $file_name118" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file118"
                cd "/home/nathan/Desktop/zotero-storage-copy/UKXE6NSX"
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
echo "[$CURRENT/$TOTAL_FILES] Processing RIADT9AI - Global Politics in the 1580s: One Canal, Twenty Thousand Cannibals, and an Ottoman Plot to Rule the World..."
cd "/home/nathan/Desktop/zotero-storage-copy/RIADT9AI"
START_TIME=$(date +%s)

        source_pdf119=$(find . -name "*.pdf" -type f | head -1)
        source_file119="/home/nathan/Desktop/zotero-storage-copy/RIADT9AI/$source_pdf119"
        target_file119="/home/nathan/home/research/tests/ocr_folders/RIADT9AI/$source_pdf119"
        file_name119="$source_pdf119"
        if [ -z "$source_pdf119" ]; then
            echo "ERROR: Source file not found: $source_file119" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file119"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RIADT9AI" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RIADT9AI"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RIADT9AI"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RIADT9AI"
            fi

            # OCR processing
            if [ -f "$target_file119" ]; then
                echo "SKIP: Output already exists: $file_name119" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file119"
                cd "/home/nathan/Desktop/zotero-storage-copy/RIADT9AI"
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
echo "[$CURRENT/$TOTAL_FILES] Processing R7MVJUWR - Deny and Laroch-Lexpedition en provence.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/R7MVJUWR"
START_TIME=$(date +%s)

        source_pdf120=$(find . -name "*.pdf" -type f | head -1)
        source_file120="/home/nathan/Desktop/zotero-storage-copy/R7MVJUWR/$source_pdf120"
        target_file120="/home/nathan/home/research/tests/ocr_folders/R7MVJUWR/$source_pdf120"
        file_name120="$source_pdf120"
        if [ -z "$source_pdf120" ]; then
            echo "ERROR: Source file not found: $source_file120" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file120"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/R7MVJUWR" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/R7MVJUWR"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/R7MVJUWR"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/R7MVJUWR"
            fi

            # OCR processing
            if [ -f "$target_file120" ]; then
                echo "SKIP: Output already exists: $file_name120" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file120"
                cd "/home/nathan/Desktop/zotero-storage-copy/R7MVJUWR"
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
echo "[$CURRENT/$TOTAL_FILES] Processing UWA9IJV8 - Knowledge and Nonknowledge..."
cd "/home/nathan/Desktop/zotero-storage-copy/UWA9IJV8"
START_TIME=$(date +%s)

        source_pdf121=$(find . -name "*.pdf" -type f | head -1)
        source_file121="/home/nathan/Desktop/zotero-storage-copy/UWA9IJV8/$source_pdf121"
        target_file121="/home/nathan/home/research/tests/ocr_folders/UWA9IJV8/$source_pdf121"
        file_name121="$source_pdf121"
        if [ -z "$source_pdf121" ]; then
            echo "ERROR: Source file not found: $source_file121" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file121"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/UWA9IJV8" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/UWA9IJV8"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/UWA9IJV8"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/UWA9IJV8"
            fi

            # OCR processing
            if [ -f "$target_file121" ]; then
                echo "SKIP: Output already exists: $file_name121" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file121"
                cd "/home/nathan/Desktop/zotero-storage-copy/UWA9IJV8"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 9NKEE3GE - « Voyage en Levant et en Jerusalem, faict par François ARNAUD, cappitaine du gallion de Mgr. de Breves, ambassadeur pour le Roy très chrestien à la Porte du Grand Seigneur, en l'année 1602 »..."
cd "/home/nathan/Desktop/zotero-storage-copy/9NKEE3GE"
START_TIME=$(date +%s)

        source_pdf122=$(find . -name "*.pdf" -type f | head -1)
        source_file122="/home/nathan/Desktop/zotero-storage-copy/9NKEE3GE/$source_pdf122"
        target_file122="/home/nathan/home/research/tests/ocr_folders/9NKEE3GE/$source_pdf122"
        file_name122="$source_pdf122"
        if [ -z "$source_pdf122" ]; then
            echo "ERROR: Source file not found: $source_file122" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file122"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9NKEE3GE" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9NKEE3GE"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9NKEE3GE"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9NKEE3GE"
            fi

            # OCR processing
            if [ -f "$target_file122" ]; then
                echo "SKIP: Output already exists: $file_name122" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file122"
                cd "/home/nathan/Desktop/zotero-storage-copy/9NKEE3GE"
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
echo "[$CURRENT/$TOTAL_FILES] Processing PD2JXX6C - Dépêches originales de divers ambassadeurs et agents français à Constantinople. III Années 1585-1603..."
cd "/home/nathan/Desktop/zotero-storage-copy/PD2JXX6C"
START_TIME=$(date +%s)

        source_pdf123=$(find . -name "*.pdf" -type f | head -1)
        source_file123="/home/nathan/Desktop/zotero-storage-copy/PD2JXX6C/$source_pdf123"
        target_file123="/home/nathan/home/research/tests/ocr_folders/PD2JXX6C/$source_pdf123"
        file_name123="$source_pdf123"
        if [ -z "$source_pdf123" ]; then
            echo "ERROR: Source file not found: $source_file123" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file123"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PD2JXX6C" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PD2JXX6C"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PD2JXX6C"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PD2JXX6C"
            fi

            # OCR processing
            if [ -f "$target_file123" ]; then
                echo "SKIP: Output already exists: $file_name123" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file123"
                cd "/home/nathan/Desktop/zotero-storage-copy/PD2JXX6C"
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
echo "[$CURRENT/$TOTAL_FILES] Processing KQR42N39 - Consuls and nations in the Levant from 1570 to 1650..."
cd "/home/nathan/Desktop/zotero-storage-copy/KQR42N39"
START_TIME=$(date +%s)

        source_pdf124=$(find . -name "*.pdf" -type f | head -1)
        source_file124="/home/nathan/Desktop/zotero-storage-copy/KQR42N39/$source_pdf124"
        target_file124="/home/nathan/home/research/tests/ocr_folders/KQR42N39/$source_pdf124"
        file_name124="$source_pdf124"
        if [ -z "$source_pdf124" ]; then
            echo "ERROR: Source file not found: $source_file124" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file124"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/KQR42N39" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/KQR42N39"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/KQR42N39"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/KQR42N39"
            fi

            # OCR processing
            if [ -f "$target_file124" ]; then
                echo "SKIP: Output already exists: $file_name124" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file124"
                cd "/home/nathan/Desktop/zotero-storage-copy/KQR42N39"
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
echo "[$CURRENT/$TOTAL_FILES] Processing P8VTJQQT - Commentaires de messire Blaise de Monluc, maréchal de France ; Blasi Monluci, Franciae mareschalli, tumulus......"
cd "/home/nathan/Desktop/zotero-storage-copy/P8VTJQQT"
START_TIME=$(date +%s)

        source_pdf125=$(find . -name "*.pdf" -type f | head -1)
        source_file125="/home/nathan/Desktop/zotero-storage-copy/P8VTJQQT/$source_pdf125"
        target_file125="/home/nathan/home/research/tests/ocr_folders/P8VTJQQT/$source_pdf125"
        file_name125="$source_pdf125"
        if [ -z "$source_pdf125" ]; then
            echo "ERROR: Source file not found: $source_file125" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file125"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/P8VTJQQT" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/P8VTJQQT"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/P8VTJQQT"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/P8VTJQQT"
            fi

            # OCR processing
            if [ -f "$target_file125" ]; then
                echo "SKIP: Output already exists: $file_name125" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file125"
                cd "/home/nathan/Desktop/zotero-storage-copy/P8VTJQQT"
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
echo "[$CURRENT/$TOTAL_FILES] Processing Z3SZJNF7 - Ottoman Orientalism..."
cd "/home/nathan/Desktop/zotero-storage-copy/Z3SZJNF7"
START_TIME=$(date +%s)

        source_pdf126=$(find . -name "*.pdf" -type f | head -1)
        source_file126="/home/nathan/Desktop/zotero-storage-copy/Z3SZJNF7/$source_pdf126"
        target_file126="/home/nathan/home/research/tests/ocr_folders/Z3SZJNF7/$source_pdf126"
        file_name126="$source_pdf126"
        if [ -z "$source_pdf126" ]; then
            echo "ERROR: Source file not found: $source_file126" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file126"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/Z3SZJNF7" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/Z3SZJNF7"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/Z3SZJNF7"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/Z3SZJNF7"
            fi

            # OCR processing
            if [ -f "$target_file126" ]; then
                echo "SKIP: Output already exists: $file_name126" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file126"
                cd "/home/nathan/Desktop/zotero-storage-copy/Z3SZJNF7"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 365UWQQK - Striker Finishing Drills..."
cd "/home/nathan/Desktop/zotero-storage-copy/365UWQQK"
START_TIME=$(date +%s)

        source_pdf127=$(find . -name "*.pdf" -type f | head -1)
        source_file127="/home/nathan/Desktop/zotero-storage-copy/365UWQQK/$source_pdf127"
        target_file127="/home/nathan/home/research/tests/ocr_folders/365UWQQK/$source_pdf127"
        file_name127="$source_pdf127"
        if [ -z "$source_pdf127" ]; then
            echo "ERROR: Source file not found: $source_file127" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file127"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/365UWQQK" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/365UWQQK"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/365UWQQK"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/365UWQQK"
            fi

            # OCR processing
            if [ -f "$target_file127" ]; then
                echo "SKIP: Output already exists: $file_name127" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file127"
                cd "/home/nathan/Desktop/zotero-storage-copy/365UWQQK"
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
echo "[$CURRENT/$TOTAL_FILES] Processing CK3DKZGJ - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nathan/Desktop/zotero-storage-copy/CK3DKZGJ"
START_TIME=$(date +%s)

        source_pdf128=$(find . -name "*.pdf" -type f | head -1)
        source_file128="/home/nathan/Desktop/zotero-storage-copy/CK3DKZGJ/$source_pdf128"
        target_file128="/home/nathan/home/research/tests/ocr_folders/CK3DKZGJ/$source_pdf128"
        file_name128="$source_pdf128"
        if [ -z "$source_pdf128" ]; then
            echo "ERROR: Source file not found: $source_file128" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file128"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/CK3DKZGJ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/CK3DKZGJ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/CK3DKZGJ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/CK3DKZGJ"
            fi

            # OCR processing
            if [ -f "$target_file128" ]; then
                echo "SKIP: Output already exists: $file_name128" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file128"
                cd "/home/nathan/Desktop/zotero-storage-copy/CK3DKZGJ"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 6227ASQ2 - Sacred Rivals: Catholic Missions and the Making of Islam in Nineteenth-Century France and Algeria..."
cd "/home/nathan/Desktop/zotero-storage-copy/6227ASQ2"
START_TIME=$(date +%s)

        source_pdf129=$(find . -name "*.pdf" -type f | head -1)
        source_file129="/home/nathan/Desktop/zotero-storage-copy/6227ASQ2/$source_pdf129"
        target_file129="/home/nathan/home/research/tests/ocr_folders/6227ASQ2/$source_pdf129"
        file_name129="$source_pdf129"
        if [ -z "$source_pdf129" ]; then
            echo "ERROR: Source file not found: $source_file129" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file129"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/6227ASQ2" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/6227ASQ2"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/6227ASQ2"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/6227ASQ2"
            fi

            # OCR processing
            if [ -f "$target_file129" ]; then
                echo "SKIP: Output already exists: $file_name129" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file129"
                cd "/home/nathan/Desktop/zotero-storage-copy/6227ASQ2"
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
echo "[$CURRENT/$TOTAL_FILES] Processing 56PHA8W7 - Citlak_Aysegul_Osmanli-Fransa iliskileri_Muteferrika Suleyman Aga'nin Fransa Elciligi_1669-1670_MA.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/56PHA8W7"
START_TIME=$(date +%s)

        source_pdf130=$(find . -name "*.pdf" -type f | head -1)
        source_file130="/home/nathan/Desktop/zotero-storage-copy/56PHA8W7/$source_pdf130"
        target_file130="/home/nathan/home/research/tests/ocr_folders/56PHA8W7/$source_pdf130"
        file_name130="$source_pdf130"
        if [ -z "$source_pdf130" ]; then
            echo "ERROR: Source file not found: $source_file130" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file130"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/56PHA8W7" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/56PHA8W7"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/56PHA8W7"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/56PHA8W7"
            fi

            # OCR processing
            if [ -f "$target_file130" ]; then
                echo "SKIP: Output already exists: $file_name130" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file130"
                cd "/home/nathan/Desktop/zotero-storage-copy/56PHA8W7"
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
echo "[$CURRENT/$TOTAL_FILES] Processing C7S7MA6R - Samples from treaties from the ottoman archives.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/C7S7MA6R"
START_TIME=$(date +%s)

        source_pdf131=$(find . -name "*.pdf" -type f | head -1)
        source_file131="/home/nathan/Desktop/zotero-storage-copy/C7S7MA6R/$source_pdf131"
        target_file131="/home/nathan/home/research/tests/ocr_folders/C7S7MA6R/$source_pdf131"
        file_name131="$source_pdf131"
        if [ -z "$source_pdf131" ]; then
            echo "ERROR: Source file not found: $source_file131" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file131"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/C7S7MA6R" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/C7S7MA6R"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/C7S7MA6R"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/C7S7MA6R"
            fi

            # OCR processing
            if [ -f "$target_file131" ]; then
                echo "SKIP: Output already exists: $file_name131" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file131"
                cd "/home/nathan/Desktop/zotero-storage-copy/C7S7MA6R"
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
echo "[$CURRENT/$TOTAL_FILES] Processing BPFXLVK2 - Yirmisekiz. 1720. Fransa Sefaretnamesi.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/BPFXLVK2"
START_TIME=$(date +%s)

        source_pdf132=$(find . -name "*.pdf" -type f | head -1)
        source_file132="/home/nathan/Desktop/zotero-storage-copy/BPFXLVK2/$source_pdf132"
        target_file132="/home/nathan/home/research/tests/ocr_folders/BPFXLVK2/$source_pdf132"
        file_name132="$source_pdf132"
        if [ -z "$source_pdf132" ]; then
            echo "ERROR: Source file not found: $source_file132" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file132"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/BPFXLVK2" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/BPFXLVK2"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/BPFXLVK2"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/BPFXLVK2"
            fi

            # OCR processing
            if [ -f "$target_file132" ]; then
                echo "SKIP: Output already exists: $file_name132" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file132"
                cd "/home/nathan/Desktop/zotero-storage-copy/BPFXLVK2"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file132" "$target_file132"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing LLNU7WJR - Muhimme 888.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/LLNU7WJR"
START_TIME=$(date +%s)

        source_pdf133=$(find . -name "*.pdf" -type f | head -1)
        source_file133="/home/nathan/Desktop/zotero-storage-copy/LLNU7WJR/$source_pdf133"
        target_file133="/home/nathan/home/research/tests/ocr_folders/LLNU7WJR/$source_pdf133"
        file_name133="$source_pdf133"
        if [ -z "$source_pdf133" ]; then
            echo "ERROR: Source file not found: $source_file133" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file133"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/LLNU7WJR" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/LLNU7WJR"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/LLNU7WJR"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/LLNU7WJR"
            fi

            # OCR processing
            if [ -f "$target_file133" ]; then
                echo "SKIP: Output already exists: $file_name133" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file133"
                cd "/home/nathan/Desktop/zotero-storage-copy/LLNU7WJR"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file133" "$target_file133"; then
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
echo "[$CURRENT/$TOTAL_FILES] Processing 3WN3CXKH - Muhımme 91 (1646-1647).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/3WN3CXKH"
START_TIME=$(date +%s)

        source_pdf134=$(find . -name "*.pdf" -type f | head -1)
        source_file134="/home/nathan/Desktop/zotero-storage-copy/3WN3CXKH/$source_pdf134"
        target_file134="/home/nathan/home/research/tests/ocr_folders/3WN3CXKH/$source_pdf134"
        file_name134="$source_pdf134"
        if [ -z "$source_pdf134" ]; then
            echo "ERROR: Source file not found: $source_file134" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file134"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3WN3CXKH" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3WN3CXKH"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3WN3CXKH"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3WN3CXKH"
            fi

            # OCR processing
            if [ -f "$target_file134" ]; then
                echo "SKIP: Output already exists: $file_name134" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file134"
                cd "/home/nathan/Desktop/zotero-storage-copy/3WN3CXKH"
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
echo "[$CURRENT/$TOTAL_FILES] Processing XHN2V337 - Muhimme 63-YOK (1587-1588).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/XHN2V337"
START_TIME=$(date +%s)

        source_pdf135=$(find . -name "*.pdf" -type f | head -1)
        source_file135="/home/nathan/Desktop/zotero-storage-copy/XHN2V337/$source_pdf135"
        target_file135="/home/nathan/home/research/tests/ocr_folders/XHN2V337/$source_pdf135"
        file_name135="$source_pdf135"
        if [ -z "$source_pdf135" ]; then
            echo "ERROR: Source file not found: $source_file135" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file135"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XHN2V337" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XHN2V337"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XHN2V337"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XHN2V337"
            fi

            # OCR processing
            if [ -f "$target_file135" ]; then
                echo "SKIP: Output already exists: $file_name135" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file135"
                cd "/home/nathan/Desktop/zotero-storage-copy/XHN2V337"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file135" "$target_file135"; then
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

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 3LUG5H9R - Muhimme 68-YOK (1589-1590).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/3LUG5H9R"
START_TIME=$(date +%s)

        source_pdf136=$(find . -name "*.pdf" -type f | head -1)
        source_file136="/home/nathan/Desktop/zotero-storage-copy/3LUG5H9R/$source_pdf136"
        target_file136="/home/nathan/home/research/tests/ocr_folders/3LUG5H9R/$source_pdf136"
        file_name136="$source_pdf136"
        if [ -z "$source_pdf136" ]; then
            echo "ERROR: Source file not found: $source_file136" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file136"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/3LUG5H9R" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/3LUG5H9R"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/3LUG5H9R"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/3LUG5H9R"
            fi

            # OCR processing
            if [ -f "$target_file136" ]; then
                echo "SKIP: Output already exists: $file_name136" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file136"
                cd "/home/nathan/Desktop/zotero-storage-copy/3LUG5H9R"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file136" "$target_file136"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name136 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file136" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 5E48NF8Q - Muhimme 51 (1583).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/5E48NF8Q"
START_TIME=$(date +%s)

        source_pdf137=$(find . -name "*.pdf" -type f | head -1)
        source_file137="/home/nathan/Desktop/zotero-storage-copy/5E48NF8Q/$source_pdf137"
        target_file137="/home/nathan/home/research/tests/ocr_folders/5E48NF8Q/$source_pdf137"
        file_name137="$source_pdf137"
        if [ -z "$source_pdf137" ]; then
            echo "ERROR: Source file not found: $source_file137" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file137"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/5E48NF8Q" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/5E48NF8Q"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/5E48NF8Q"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/5E48NF8Q"
            fi

            # OCR processing
            if [ -f "$target_file137" ]; then
                echo "SKIP: Output already exists: $file_name137" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file137"
                cd "/home/nathan/Desktop/zotero-storage-copy/5E48NF8Q"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file137" "$target_file137"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name137 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file137" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing WAMZQJUY - Muhimme 13 Zeyli (1727).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/WAMZQJUY"
START_TIME=$(date +%s)

        source_pdf138=$(find . -name "*.pdf" -type f | head -1)
        source_file138="/home/nathan/Desktop/zotero-storage-copy/WAMZQJUY/$source_pdf138"
        target_file138="/home/nathan/home/research/tests/ocr_folders/WAMZQJUY/$source_pdf138"
        file_name138="$source_pdf138"
        if [ -z "$source_pdf138" ]; then
            echo "ERROR: Source file not found: $source_file138" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file138"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/WAMZQJUY" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/WAMZQJUY"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/WAMZQJUY"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/WAMZQJUY"
            fi

            # OCR processing
            if [ -f "$target_file138" ]; then
                echo "SKIP: Output already exists: $file_name138" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file138"
                cd "/home/nathan/Desktop/zotero-storage-copy/WAMZQJUY"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file138" "$target_file138"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name138 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file138" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XTEYTFDX - Muhimme 44 (1580-1583)..."
cd "/home/nathan/Desktop/zotero-storage-copy/XTEYTFDX"
START_TIME=$(date +%s)

        source_pdf139=$(find . -name "*.pdf" -type f | head -1)
        source_file139="/home/nathan/Desktop/zotero-storage-copy/XTEYTFDX/$source_pdf139"
        target_file139="/home/nathan/home/research/tests/ocr_folders/XTEYTFDX/$source_pdf139"
        file_name139="$source_pdf139"
        if [ -z "$source_pdf139" ]; then
            echo "ERROR: Source file not found: $source_file139" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file139"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XTEYTFDX" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XTEYTFDX"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XTEYTFDX"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XTEYTFDX"
            fi

            # OCR processing
            if [ -f "$target_file139" ]; then
                echo "SKIP: Output already exists: $file_name139" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file139"
                cd "/home/nathan/Desktop/zotero-storage-copy/XTEYTFDX"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language tur "$source_file139" "$target_file139"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name139 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file139" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing MLDGR7BT - Understanding diversity and mentoring diverse students.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/MLDGR7BT"
START_TIME=$(date +%s)

        source_pdf140=$(find . -name "*.pdf" -type f | head -1)
        source_file140="/home/nathan/Desktop/zotero-storage-copy/MLDGR7BT/$source_pdf140"
        target_file140="/home/nathan/home/research/tests/ocr_folders/MLDGR7BT/$source_pdf140"
        file_name140="$source_pdf140"
        if [ -z "$source_pdf140" ]; then
            echo "ERROR: Source file not found: $source_file140" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file140"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/MLDGR7BT" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/MLDGR7BT"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/MLDGR7BT"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/MLDGR7BT"
            fi

            # OCR processing
            if [ -f "$target_file140" ]; then
                echo "SKIP: Output already exists: $file_name140" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file140"
                cd "/home/nathan/Desktop/zotero-storage-copy/MLDGR7BT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file140" "$target_file140"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name140 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file140" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing LBXY7GVI - Paleographie des ecritures cursives en france du xv au xvii siecle..."
cd "/home/nathan/Desktop/zotero-storage-copy/LBXY7GVI"
START_TIME=$(date +%s)

        source_pdf141=$(find . -name "*.pdf" -type f | head -1)
        source_file141="/home/nathan/Desktop/zotero-storage-copy/LBXY7GVI/$source_pdf141"
        target_file141="/home/nathan/home/research/tests/ocr_folders/LBXY7GVI/$source_pdf141"
        file_name141="$source_pdf141"
        if [ -z "$source_pdf141" ]; then
            echo "ERROR: Source file not found: $source_file141" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file141"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/LBXY7GVI" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/LBXY7GVI"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/LBXY7GVI"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/LBXY7GVI"
            fi

            # OCR processing
            if [ -f "$target_file141" ]; then
                echo "SKIP: Output already exists: $file_name141" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file141"
                cd "/home/nathan/Desktop/zotero-storage-copy/LBXY7GVI"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file141" "$target_file141"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name141 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file141" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 5UUME6DT - Missions Impossible: Pomponne de Bellièvre and the Policies of Henry III..."
cd "/home/nathan/Desktop/zotero-storage-copy/5UUME6DT"
START_TIME=$(date +%s)

        source_pdf142=$(find . -name "*.pdf" -type f | head -1)
        source_file142="/home/nathan/Desktop/zotero-storage-copy/5UUME6DT/$source_pdf142"
        target_file142="/home/nathan/home/research/tests/ocr_folders/5UUME6DT/$source_pdf142"
        file_name142="$source_pdf142"
        if [ -z "$source_pdf142" ]; then
            echo "ERROR: Source file not found: $source_file142" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file142"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/5UUME6DT" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/5UUME6DT"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/5UUME6DT"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/5UUME6DT"
            fi

            # OCR processing
            if [ -f "$target_file142" ]; then
                echo "SKIP: Output already exists: $file_name142" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file142"
                cd "/home/nathan/Desktop/zotero-storage-copy/5UUME6DT"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file142" "$target_file142"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name142 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file142" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing I4SY92HM - Henri Pirenne - Mohammed and Charlemagne (1959).pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/I4SY92HM"
START_TIME=$(date +%s)

        source_pdf143=$(find . -name "*.pdf" -type f | head -1)
        source_file143="/home/nathan/Desktop/zotero-storage-copy/I4SY92HM/$source_pdf143"
        target_file143="/home/nathan/home/research/tests/ocr_folders/I4SY92HM/$source_pdf143"
        file_name143="$source_pdf143"
        if [ -z "$source_pdf143" ]; then
            echo "ERROR: Source file not found: $source_file143" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file143"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/I4SY92HM" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/I4SY92HM"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/I4SY92HM"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/I4SY92HM"
            fi

            # OCR processing
            if [ -f "$target_file143" ]; then
                echo "SKIP: Output already exists: $file_name143" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file143"
                cd "/home/nathan/Desktop/zotero-storage-copy/I4SY92HM"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file143" "$target_file143"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name143 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file143" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing I5DHZ9B9 - Colonization, Piracy, and Trade - Unknown.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/I5DHZ9B9"
START_TIME=$(date +%s)

        source_pdf144=$(find . -name "*.pdf" -type f | head -1)
        source_file144="/home/nathan/Desktop/zotero-storage-copy/I5DHZ9B9/$source_pdf144"
        target_file144="/home/nathan/home/research/tests/ocr_folders/I5DHZ9B9/$source_pdf144"
        file_name144="$source_pdf144"
        if [ -z "$source_pdf144" ]; then
            echo "ERROR: Source file not found: $source_file144" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file144"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/I5DHZ9B9" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/I5DHZ9B9"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/I5DHZ9B9"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/I5DHZ9B9"
            fi

            # OCR processing
            if [ -f "$target_file144" ]; then
                echo "SKIP: Output already exists: $file_name144" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file144"
                cd "/home/nathan/Desktop/zotero-storage-copy/I5DHZ9B9"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file144" "$target_file144"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name144 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file144" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing LXQNIZ7A - NAF 6982 Lettres de Hurault de Maisse..."
cd "/home/nathan/Desktop/zotero-storage-copy/LXQNIZ7A"
START_TIME=$(date +%s)

        source_pdf145=$(find . -name "*.pdf" -type f | head -1)
        source_file145="/home/nathan/Desktop/zotero-storage-copy/LXQNIZ7A/$source_pdf145"
        target_file145="/home/nathan/home/research/tests/ocr_folders/LXQNIZ7A/$source_pdf145"
        file_name145="$source_pdf145"
        if [ -z "$source_pdf145" ]; then
            echo "ERROR: Source file not found: $source_file145" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file145"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/LXQNIZ7A" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/LXQNIZ7A"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/LXQNIZ7A"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/LXQNIZ7A"
            fi

            # OCR processing
            if [ -f "$target_file145" ]; then
                echo "SKIP: Output already exists: $file_name145" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file145"
                cd "/home/nathan/Desktop/zotero-storage-copy/LXQNIZ7A"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file145" "$target_file145"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name145 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file145" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing GR3LU674 - Calendar of State Papers and Manuscripts Relating to English Affairs, existing in the Archives and Collections of Venice, and in Other Libraries in Northern Italy..."
cd "/home/nathan/Desktop/zotero-storage-copy/GR3LU674"
START_TIME=$(date +%s)

        source_pdf146=$(find . -name "*.pdf" -type f | head -1)
        source_file146="/home/nathan/Desktop/zotero-storage-copy/GR3LU674/$source_pdf146"
        target_file146="/home/nathan/home/research/tests/ocr_folders/GR3LU674/$source_pdf146"
        file_name146="$source_pdf146"
        if [ -z "$source_pdf146" ]; then
            echo "ERROR: Source file not found: $source_file146" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file146"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/GR3LU674" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/GR3LU674"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/GR3LU674"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/GR3LU674"
            fi

            # OCR processing
            if [ -f "$target_file146" ]; then
                echo "SKIP: Output already exists: $file_name146" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file146"
                cd "/home/nathan/Desktop/zotero-storage-copy/GR3LU674"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file146" "$target_file146"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name146 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file146" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing TF65LMGS - Southeastern Europe under Ottoman Rule, 1354-1804..."
cd "/home/nathan/Desktop/zotero-storage-copy/TF65LMGS"
START_TIME=$(date +%s)

        source_pdf147=$(find . -name "*.pdf" -type f | head -1)
        source_file147="/home/nathan/Desktop/zotero-storage-copy/TF65LMGS/$source_pdf147"
        target_file147="/home/nathan/home/research/tests/ocr_folders/TF65LMGS/$source_pdf147"
        file_name147="$source_pdf147"
        if [ -z "$source_pdf147" ]; then
            echo "ERROR: Source file not found: $source_file147" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file147"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/TF65LMGS" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/TF65LMGS"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/TF65LMGS"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/TF65LMGS"
            fi

            # OCR processing
            if [ -f "$target_file147" ]; then
                echo "SKIP: Output already exists: $file_name147" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file147"
                cd "/home/nathan/Desktop/zotero-storage-copy/TF65LMGS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file147" "$target_file147"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name147 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file147" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing NVW7E9EL - I "Documenti Turchi" dell'Archivio di Stato di Venezia..."
cd "/home/nathan/Desktop/zotero-storage-copy/NVW7E9EL"
START_TIME=$(date +%s)

        source_pdf148=$(find . -name "*.pdf" -type f | head -1)
        source_file148="/home/nathan/Desktop/zotero-storage-copy/NVW7E9EL/$source_pdf148"
        target_file148="/home/nathan/home/research/tests/ocr_folders/NVW7E9EL/$source_pdf148"
        file_name148="$source_pdf148"
        if [ -z "$source_pdf148" ]; then
            echo "ERROR: Source file not found: $source_file148" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file148"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/NVW7E9EL" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/NVW7E9EL"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/NVW7E9EL"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/NVW7E9EL"
            fi

            # OCR processing
            if [ -f "$target_file148" ]; then
                echo "SKIP: Output already exists: $file_name148" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file148"
                cd "/home/nathan/Desktop/zotero-storage-copy/NVW7E9EL"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file148" "$target_file148"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name148 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file148" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing RTQID6QZ - Recueil d'instructions et mémoires diplomatiques. XX Ambassade à Constantinople de François DE NOAILLES, évêque d'Acqs (1571-1576)..."
cd "/home/nathan/Desktop/zotero-storage-copy/RTQID6QZ"
START_TIME=$(date +%s)

        source_pdf149=$(find . -name "*.pdf" -type f | head -1)
        source_file149="/home/nathan/Desktop/zotero-storage-copy/RTQID6QZ/$source_pdf149"
        target_file149="/home/nathan/home/research/tests/ocr_folders/RTQID6QZ/$source_pdf149"
        file_name149="$source_pdf149"
        if [ -z "$source_pdf149" ]; then
            echo "ERROR: Source file not found: $source_file149" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file149"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/RTQID6QZ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/RTQID6QZ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/RTQID6QZ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/RTQID6QZ"
            fi

            # OCR processing
            if [ -f "$target_file149" ]; then
                echo "SKIP: Output already exists: $file_name149" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file149"
                cd "/home/nathan/Desktop/zotero-storage-copy/RTQID6QZ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file149" "$target_file149"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name149 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file149" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 9XJ4PIWC - Princes, politics, and religion, 1547-1589..."
cd "/home/nathan/Desktop/zotero-storage-copy/9XJ4PIWC"
START_TIME=$(date +%s)

        source_pdf150=$(find . -name "*.pdf" -type f | head -1)
        source_file150="/home/nathan/Desktop/zotero-storage-copy/9XJ4PIWC/$source_pdf150"
        target_file150="/home/nathan/home/research/tests/ocr_folders/9XJ4PIWC/$source_pdf150"
        file_name150="$source_pdf150"
        if [ -z "$source_pdf150" ]; then
            echo "ERROR: Source file not found: $source_file150" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file150"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/9XJ4PIWC" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/9XJ4PIWC"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/9XJ4PIWC"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/9XJ4PIWC"
            fi

            # OCR processing
            if [ -f "$target_file150" ]; then
                echo "SKIP: Output already exists: $file_name150" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file150"
                cd "/home/nathan/Desktop/zotero-storage-copy/9XJ4PIWC"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file150" "$target_file150"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name150 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file150" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing QNXW9DBZ - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/QNXW9DBZ"
START_TIME=$(date +%s)

        source_pdf151=$(find . -name "*.pdf" -type f | head -1)
        source_file151="/home/nathan/Desktop/zotero-storage-copy/QNXW9DBZ/$source_pdf151"
        target_file151="/home/nathan/home/research/tests/ocr_folders/QNXW9DBZ/$source_pdf151"
        file_name151="$source_pdf151"
        if [ -z "$source_pdf151" ]; then
            echo "ERROR: Source file not found: $source_file151" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file151"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/QNXW9DBZ" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/QNXW9DBZ"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/QNXW9DBZ"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/QNXW9DBZ"
            fi

            # OCR processing
            if [ -f "$target_file151" ]; then
                echo "SKIP: Output already exists: $file_name151" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file151"
                cd "/home/nathan/Desktop/zotero-storage-copy/QNXW9DBZ"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file151" "$target_file151"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name151 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file151" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing G4WN2AKA - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/G4WN2AKA"
START_TIME=$(date +%s)

        source_pdf152=$(find . -name "*.pdf" -type f | head -1)
        source_file152="/home/nathan/Desktop/zotero-storage-copy/G4WN2AKA/$source_pdf152"
        target_file152="/home/nathan/home/research/tests/ocr_folders/G4WN2AKA/$source_pdf152"
        file_name152="$source_pdf152"
        if [ -z "$source_pdf152" ]; then
            echo "ERROR: Source file not found: $source_file152" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file152"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/G4WN2AKA" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/G4WN2AKA"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/G4WN2AKA"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/G4WN2AKA"
            fi

            # OCR processing
            if [ -f "$target_file152" ]; then
                echo "SKIP: Output already exists: $file_name152" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file152"
                cd "/home/nathan/Desktop/zotero-storage-copy/G4WN2AKA"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file152" "$target_file152"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name152 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file152" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing B4GCAM3M - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/B4GCAM3M"
START_TIME=$(date +%s)

        source_pdf153=$(find . -name "*.pdf" -type f | head -1)
        source_file153="/home/nathan/Desktop/zotero-storage-copy/B4GCAM3M/$source_pdf153"
        target_file153="/home/nathan/home/research/tests/ocr_folders/B4GCAM3M/$source_pdf153"
        file_name153="$source_pdf153"
        if [ -z "$source_pdf153" ]; then
            echo "ERROR: Source file not found: $source_file153" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file153"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/B4GCAM3M" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/B4GCAM3M"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/B4GCAM3M"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/B4GCAM3M"
            fi

            # OCR processing
            if [ -f "$target_file153" ]; then
                echo "SKIP: Output already exists: $file_name153" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file153"
                cd "/home/nathan/Desktop/zotero-storage-copy/B4GCAM3M"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file153" "$target_file153"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name153 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file153" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PCLMXMQU - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/PCLMXMQU"
START_TIME=$(date +%s)

        source_pdf154=$(find . -name "*.pdf" -type f | head -1)
        source_file154="/home/nathan/Desktop/zotero-storage-copy/PCLMXMQU/$source_pdf154"
        target_file154="/home/nathan/home/research/tests/ocr_folders/PCLMXMQU/$source_pdf154"
        file_name154="$source_pdf154"
        if [ -z "$source_pdf154" ]; then
            echo "ERROR: Source file not found: $source_file154" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file154"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PCLMXMQU" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PCLMXMQU"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PCLMXMQU"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PCLMXMQU"
            fi

            # OCR processing
            if [ -f "$target_file154" ]; then
                echo "SKIP: Output already exists: $file_name154" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file154"
                cd "/home/nathan/Desktop/zotero-storage-copy/PCLMXMQU"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file154" "$target_file154"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name154 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file154" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing XUBEJCTB - Bureaucrat and intellectual in the Ottoman Empire: the historian Mustafa Ali (1541-1600)..."
cd "/home/nathan/Desktop/zotero-storage-copy/XUBEJCTB"
START_TIME=$(date +%s)

        source_pdf155=$(find . -name "*.pdf" -type f | head -1)
        source_file155="/home/nathan/Desktop/zotero-storage-copy/XUBEJCTB/$source_pdf155"
        target_file155="/home/nathan/home/research/tests/ocr_folders/XUBEJCTB/$source_pdf155"
        file_name155="$source_pdf155"
        if [ -z "$source_pdf155" ]; then
            echo "ERROR: Source file not found: $source_file155" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file155"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/XUBEJCTB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/XUBEJCTB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/XUBEJCTB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/XUBEJCTB"
            fi

            # OCR processing
            if [ -f "$target_file155" ]; then
                echo "SKIP: Output already exists: $file_name155" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file155"
                cd "/home/nathan/Desktop/zotero-storage-copy/XUBEJCTB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file155" "$target_file155"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name155 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file155" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PEJDL2B3 - An_Ottoman_Report_about_Martin_Luther-- Christine Isom-Verhaaren.pdf..."
cd "/home/nathan/Desktop/zotero-storage-copy/PEJDL2B3"
START_TIME=$(date +%s)

        source_pdf156=$(find . -name "*.pdf" -type f | head -1)
        source_file156="/home/nathan/Desktop/zotero-storage-copy/PEJDL2B3/$source_pdf156"
        target_file156="/home/nathan/home/research/tests/ocr_folders/PEJDL2B3/$source_pdf156"
        file_name156="$source_pdf156"
        if [ -z "$source_pdf156" ]; then
            echo "ERROR: Source file not found: $source_file156" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file156"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PEJDL2B3" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PEJDL2B3"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PEJDL2B3"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PEJDL2B3"
            fi

            # OCR processing
            if [ -f "$target_file156" ]; then
                echo "SKIP: Output already exists: $file_name156" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file156"
                cd "/home/nathan/Desktop/zotero-storage-copy/PEJDL2B3"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file156" "$target_file156"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name156 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file156" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing IQPM7VMS - Recueil de lettres et de pièces originales, et copie de pièce indiquée comme telle dans le dépouillement qui suit, le tout relatif au Sr de Germigny, conseiller et maître d'hôtel du roi, successivement lieutenant général en Champagne et ambassadeur à Constantinople...."
cd "/home/nathan/Desktop/zotero-storage-copy/IQPM7VMS"
START_TIME=$(date +%s)

        source_pdf157=$(find . -name "*.pdf" -type f | head -1)
        source_file157="/home/nathan/Desktop/zotero-storage-copy/IQPM7VMS/$source_pdf157"
        target_file157="/home/nathan/home/research/tests/ocr_folders/IQPM7VMS/$source_pdf157"
        file_name157="$source_pdf157"
        if [ -z "$source_pdf157" ]; then
            echo "ERROR: Source file not found: $source_file157" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file157"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/IQPM7VMS" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/IQPM7VMS"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/IQPM7VMS"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/IQPM7VMS"
            fi

            # OCR processing
            if [ -f "$target_file157" ]; then
                echo "SKIP: Output already exists: $file_name157" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file157"
                cd "/home/nathan/Desktop/zotero-storage-copy/IQPM7VMS"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file157" "$target_file157"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name157 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file157" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EE7VXG84 - Tarih-i Selaniki..."
cd "/home/nathan/Desktop/zotero-storage-copy/EE7VXG84"
START_TIME=$(date +%s)

        source_pdf158=$(find . -name "*.pdf" -type f | head -1)
        source_file158="/home/nathan/Desktop/zotero-storage-copy/EE7VXG84/$source_pdf158"
        target_file158="/home/nathan/home/research/tests/ocr_folders/EE7VXG84/$source_pdf158"
        file_name158="$source_pdf158"
        if [ -z "$source_pdf158" ]; then
            echo "ERROR: Source file not found: $source_file158" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file158"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EE7VXG84" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EE7VXG84"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EE7VXG84"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EE7VXG84"
            fi

            # OCR processing
            if [ -f "$target_file158" ]; then
                echo "SKIP: Output already exists: $file_name158" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file158"
                cd "/home/nathan/Desktop/zotero-storage-copy/EE7VXG84"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file158" "$target_file158"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name158 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file158" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing KIPBDJIG - The Question of Ottoman Decline..."
cd "/home/nathan/Desktop/zotero-storage-copy/KIPBDJIG"
START_TIME=$(date +%s)

        source_pdf159=$(find . -name "*.pdf" -type f | head -1)
        source_file159="/home/nathan/Desktop/zotero-storage-copy/KIPBDJIG/$source_pdf159"
        target_file159="/home/nathan/home/research/tests/ocr_folders/KIPBDJIG/$source_pdf159"
        file_name159="$source_pdf159"
        if [ -z "$source_pdf159" ]; then
            echo "ERROR: Source file not found: $source_file159" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file159"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/KIPBDJIG" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/KIPBDJIG"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/KIPBDJIG"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/KIPBDJIG"
            fi

            # OCR processing
            if [ -f "$target_file159" ]; then
                echo "SKIP: Output already exists: $file_name159" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file159"
                cd "/home/nathan/Desktop/zotero-storage-copy/KIPBDJIG"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file159" "$target_file159"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name159 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file159" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing PH9RPZ4P - Instructions à divers ambassadeurs français à l'étranger, et autres pièces diplomatiques, manuscrites et imprimées. (1491-1675)..."
cd "/home/nathan/Desktop/zotero-storage-copy/PH9RPZ4P"
START_TIME=$(date +%s)

        source_pdf160=$(find . -name "*.pdf" -type f | head -1)
        source_file160="/home/nathan/Desktop/zotero-storage-copy/PH9RPZ4P/$source_pdf160"
        target_file160="/home/nathan/home/research/tests/ocr_folders/PH9RPZ4P/$source_pdf160"
        file_name160="$source_pdf160"
        if [ -z "$source_pdf160" ]; then
            echo "ERROR: Source file not found: $source_file160" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file160"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/PH9RPZ4P" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/PH9RPZ4P"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/PH9RPZ4P"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/PH9RPZ4P"
            fi

            # OCR processing
            if [ -f "$target_file160" ]; then
                echo "SKIP: Output already exists: $file_name160" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file160"
                cd "/home/nathan/Desktop/zotero-storage-copy/PH9RPZ4P"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file160" "$target_file160"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name160 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file160" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing INWBTBWN - Recueil d'instructions et mémoires diplomatiques. XXI « Lettres écrites par M. PETREMOL... durant son agence à la Porte » (1561-1566)..."
cd "/home/nathan/Desktop/zotero-storage-copy/INWBTBWN"
START_TIME=$(date +%s)

        source_pdf161=$(find . -name "*.pdf" -type f | head -1)
        source_file161="/home/nathan/Desktop/zotero-storage-copy/INWBTBWN/$source_pdf161"
        target_file161="/home/nathan/home/research/tests/ocr_folders/INWBTBWN/$source_pdf161"
        file_name161="$source_pdf161"
        if [ -z "$source_pdf161" ]; then
            echo "ERROR: Source file not found: $source_file161" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file161"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/INWBTBWN" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/INWBTBWN"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/INWBTBWN"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/INWBTBWN"
            fi

            # OCR processing
            if [ -f "$target_file161" ]; then
                echo "SKIP: Output already exists: $file_name161" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file161"
                cd "/home/nathan/Desktop/zotero-storage-copy/INWBTBWN"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file161" "$target_file161"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name161 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file161" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing EN6EA3NB - Instructions à divers ambassadeurs français à l'étranger, et autres pièces diplomatiques, manuscrites et imprimées. (1491-1675)..."
cd "/home/nathan/Desktop/zotero-storage-copy/EN6EA3NB"
START_TIME=$(date +%s)

        source_pdf162=$(find . -name "*.pdf" -type f | head -1)
        source_file162="/home/nathan/Desktop/zotero-storage-copy/EN6EA3NB/$source_pdf162"
        target_file162="/home/nathan/home/research/tests/ocr_folders/EN6EA3NB/$source_pdf162"
        file_name162="$source_pdf162"
        if [ -z "$source_pdf162" ]; then
            echo "ERROR: Source file not found: $source_file162" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file162"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/EN6EA3NB" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/EN6EA3NB"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/EN6EA3NB"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/EN6EA3NB"
            fi

            # OCR processing
            if [ -f "$target_file162" ]; then
                echo "SKIP: Output already exists: $file_name162" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file162"
                cd "/home/nathan/Desktop/zotero-storage-copy/EN6EA3NB"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file162" "$target_file162"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name162 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file162" | tee -a "$LOG_FILE"
                    FAILED=$((FAILED + 1))
                fi
            fi
        fi

        CURRENT=$((CURRENT + 1))
echo "[$CURRENT/$TOTAL_FILES] Processing 6TJRRSC5 - Oraison escripte suyvant lintention du Roy Treschrestien, aux Serenissimes, Reverendissimes, Tresillustres, Tresexcellens, Magnifiques, Treshauls Seigneurs, & a tous les estas du sainct Empire assemblez en la ville de Spire..."
cd "/home/nathan/Desktop/zotero-storage-copy/6TJRRSC5"
START_TIME=$(date +%s)

        source_pdf163=$(find . -name "*.pdf" -type f | head -1)
        source_file163="/home/nathan/Desktop/zotero-storage-copy/6TJRRSC5/$source_pdf163"
        target_file163="/home/nathan/home/research/tests/ocr_folders/6TJRRSC5/$source_pdf163"
        file_name163="$source_pdf163"
        if [ -z "$source_pdf163" ]; then
            echo "ERROR: Source file not found: $source_file163" | tee -a "$LOG_FILE"
            FAILED=$((FAILED + 1))
        else
            echo "Found source file: $source_file163"

            # Create target directory
            if [ ! -d "/home/nathan/home/research/tests/ocr_folders/6TJRRSC5" ]; then
                mkdir -p "/home/nathan/home/research/tests/ocr_folders/6TJRRSC5"
                echo "Created target directory: /home/nathan/home/research/tests/ocr_folders/6TJRRSC5"
            else
                echo "Target directory already exists: /home/nathan/home/research/tests/ocr_folders/6TJRRSC5"
            fi

            # OCR processing
            if [ -f "$target_file163" ]; then
                echo "SKIP: Output already exists: $file_name163" | tee -a "$LOG_FILE"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "Processing file: $source_file163"
                cd "/home/nathan/Desktop/zotero-storage-copy/6TJRRSC5"
                START_TIME=$(date +%s)

                if ocrmypdf --rotate-pages --deskew --clean --optimize 3 --force-ocr --oversample 300 --language eng "$source_file163" "$target_file163"; then
                    END_TIME=$(date +%s)
                    DURATION=$((END_TIME - START_TIME))
                    echo "SUCCESS: $file_name163 completed in ${DURATION}s" | tee -a "$LOG_FILE"
                    SUCCESS=$((SUCCESS + 1))
                else
                    echo "ERROR: Failed to process $source_file163" | tee -a "$LOG_FILE"
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
