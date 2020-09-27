read -p "Enter the value for a :" a
read -p "Enter the value for b : " b
read -p "Enter the value for c : " c

echo "Entered value for a :"$a;
echo "Entered value for b :"$b;
echo "Entered value for c :"$c;

#compute use-case 2

computedValueForUCTwo=$(( a + b * c ));
echo "USE CASE 2 OUTPUT : "$computedValueForUCTwo;

#compute use-case 3 
computedValueForUCThree=$(( a * b + c ));
echo "USE CASE 3 OUTPUT : "$computedValueForUCThree;
