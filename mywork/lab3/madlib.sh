#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Please give me an adjective: " ADJ1
read -p "2. Please give me a noun: " NOUN1
read -p "3. Please give me a verb (in present tense): " VERB1
read -p "4. Please give me another verb (in past tense): " VERB2
read -p "5. Please give me another adjective: " ADJ2
read -p "6. Please give me final verb (in past tense): " VERB3
read -p "7. Please give me another noun: " NOUN2
read -p "8. Please give me another adjective: " ADJ3


echo "Once upon a time there was a "$ADJ1" frog. The frog was named "$NOUN1". The frog loved"
echo $VERB1 "and dreamed of eating lots of flies. One day, the frog "$VERB2" and fell into a "
echo "hole. The hole was very "$ADJ2". The frog "$VERB3". I need someone to save me! "$NOUN1" shouted."
echo "A beautiful princess heard him and ran over. Hello frog! She shouted. My name is "$NOUN2","
echo "and I will save you! She grabbed the frog and said to him - wow you are so "$ADJ3! "Then "
echo "gave him a quick kiss. The frog gave her a look and said "$NOUN2" I am not going to turn "
echo "into a prince. That was unneccesary. He then hopped away. The End."


