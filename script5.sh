#!/bin/bash
echo "Answer the questions:"
read -p "1. Tool you use: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD
DATE=$(date)
OUTPUT="manifesto.txt"
echo "On $DATE, I believe that open source is about $FREEDOM. I use $TOOL daily and I aim to build $BUILD and share it >
echo ""
echo "Manifesto saved in $OUTPUT"
cat "$OUTPUT"

