//to convert pdf file to text
pdftotext -layout result1.pdf result1.txt
pdftotext -layout result2.pdf result2.txt


//to remove all special characters
tr -d '\014\054\011\012\015\040'<result1.txt>res1.txt
tr -d '\014\054\011\012\015\040'<result2.txt>res2.txt

//to move MDL16CS to new line
sed -i 's/MDL16CS/\nMDL16CS/g' res1.txt
sed -i 's/MDL16CS/\nMDL16CS/g' res2.txt

//to remove ELECTRONICS from the last line 
sed -i 's/ELECTRONICS/\nELECTRONICS/g' res1.txt
sed -i 's/ELECTRONICS/\nELECTRONICS/g' res2.txt

//to extract MDL16CS to new file 
grep MDL16CS res1.txt > sem1.txt
grep MDL16CS res2.txt > sem2.txt

//to replace all subjects with whitespace
sed -i "s/MA101(/ /g" sem1.txt
sed -i "s/PH100(/ /g" sem1.txt
sed -i "s/BE110(/ /g" sem1.txt
sed -i "s/BE10105(/ /g" sem1.txt
sed -i "s/BE103(/ /g" sem1.txt
sed -i "s/EE100(/ /g" sem1.txt
sed -i "s/PH110(/ /g" sem1.txt
sed -i "s/EE110(/ /g" sem1.txt
sed -i "s/CS110(/ /g" sem1.txt
sed -i "s/)/ /g" sem1.txt
sed -i "s/EC100(/ /g" sem2.txt
sed -i "s/CY100(/ /g" sem2.txt
sed -i "s/BE100(/ /g" sem2.txt
sed -i "s/CY110(/ /g" sem2.txt
sed -i "s/EC110(/ /g" sem2.txt
sed -i "s/MA102(/ /g" sem2.txt
sed -i "s/BE102(/ /g" sem2.txt
sed -i "s/CS100(/ /g" sem2.txt
sed -i "s/CS120(/ /g" sem2.txt
sed -i "s/)/ /g" sem2.txt

//to replace all grades with their respective gradepoints
sed -i "s/O/10/g" sem1.txt
sed -i "s/A+/9/g" sem1.txt
sed -i "s/A/8.5/g" sem1.txt
sed -i "s/B+/8/g" sem1.txt
sed -i "s/B/7/g" sem1.txt
sed -i "s/ C / 6 /g" sem1.txt
sed -i "s/P/5/g" sem1.txt
sed -i "s/F/0/g" sem1.txt
sed -i "s/O/10/g" sem2.txt
sed -i "s/A+/9/g" sem2.txt
sed -i "s/A/8.5/g" sem2.txt
sed -i "s/B+/8/g" sem2.txt
sed -i "s/B/7/g" sem2.txt
sed -i "s/ C / 6 /g" sem2.txt
sed -i "s/P/5/g" sem2.txt
sed -i "s/F/0/g" sem2.txt

//to clean up the last line in sem2.txt
sed -i 's/TCE16CS0065H100(0  0  0 5H110(8.5  8  0  8 66/\n/g' sem2.txt

//to calculate the GPA of semester 1 and 2
awk '{printf($1" " ($2 * 4 + $3 * 4 + $4 * 3 + $5 * 3 + $6 * 3 + $7 * 3 + $8 * 1 + $9 * 1 + $10 * 1)/23)}' sem1.txt > semester1.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 1 + $6 * 1 + $7 * 4 + $8 * 3 + $9 * 3  + $10 * 1)/24)}' sem2.txt > semester2.txt

//to clean up the output file
sed -i 's/MDL16CS/\nMDL16CS/g' semester1.txt
sed -i 's/MDL16CS/\nMDL16CS/g' semester2.txt

//to join the two files
join semester1.txt semester2.txt > CGPA.txt

//to calculate CGPA
awk '{printf($1" :" (($2*23) + ($3*24))/47)}' CGPA.txt > CGPA1.txt

//to clean up the output file
sed -i 's/MDL16CS/\nMDL16CS/g' CGPA1.txt
grep 'MDL16CS' CGPA1.txt > CGPA2.txt

//to extract name and roll number
cut -f4,5 CSB > CSB1.txt
grep 'MDL16CS' CSB1.txt > CSB2.txt

//to match corresponding roll numbers
join CSB2.txt CGPA2.txt > output.txt

//final formatting
column -t -s $':' output.txt > Final.txt

