#!/bin/bash

# Student Name: Himanshu Sharma
# Student Number: 041076929
# Course: Operating System Fund(GNU/Linux)
# Course Section: CST_8102_340
# Description: This script calculates the final grade and displays the letter grade for the course.

clear 

echo "Enter Assignment mark (0-40): "
read assignment

echo "Enter Test 1 mark (0-15): "
read test1

echo "Enter Test 2 mark (0-15): "
read test2

echo "Enter Final exam mark (0-30): "
read final_exam

# Convert numeric grade to letter value
final_grade=$((assignment + test1 + test2 + final_exam))

# Convert numeric grade to letter grade
if [ $final_grade -ge 90 ] && [ $final_grade -le 100 ]; then
	letter_grade="A+"
elif [ $final_grade -ge 85 ] && [ $final_grade -le 89 ]; then
	letter_grade="A"
elif [ $final_grade -ge 80 ] && [ $final_grade -le 84 ]; then
	letter_grade="A-"
elif [ $final_grade -ge 77 ] && [ $fianl_grade -le 79 ]; then 
	letter_grade="B+"
elif [ $final_grade -ge 73 ] && [ $final_grade -le 76 ]; then
	letter_grade="B-"
elif [ $final_grade -ge 67 ] && [ $final_grade -le 69 ]; then
    letter_grade="C+"
elif [ $final_grade -ge 63 ] && [ $final_grade -le 66 ]; then
    letter_grade="C"
elif [ $final_grade -ge 60 ] && [ $final_grade -le 62 ]; then
    letter_grade="C-"
elif [ $final_grade -ge 57 ] && [ $final_grade -le 59 ]; then
    letter_grade="D+"
elif [ $final_grade -ge 53 ] && [ $final_grade -le 56 ]; then
    letter_grade="D"
elif [ $final_grade -ge 50 ] && [ $final_grade -le 52 ]; then
    letter_grade="D-"
else
    letter_grade="F"
fi

#Display final numeric and letter grades
echo "Your final numeric grade is $final_grade, and your final letter grade is $letter_grade"

# Copy the file with a .txt extension

cp myGrade.sh myGrade.txt
