#!/bin/bash
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter a number";
read num1
echo "Enter another number";
read num2
echo "Enter your choice : ";
read choice
case $choice in

	1)	sum=`expr $num1 + $num2`
	echo "Sum : "$sum;;

	2)	diff=`expr $num1 - $num2`
        echo "Difference : "$diff;;


	3)	prod=`expr $num1 \* $num2`
	echo "Product : "$prod;;

	4)	quot=`expr $num1 / $num2`
	echo "Quotient : "$quot;;

	*)echo ​ "Invalid choice"​ ;;

esac

