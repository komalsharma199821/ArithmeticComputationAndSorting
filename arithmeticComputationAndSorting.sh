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

#compute use-case 4
computedValueForUCFour=$(( c + a / b ));
echo  "USE CASE 4 OUTPUT : "$computedValueForUCFour;

#compute use-case 5
computedValueForUCFive=$(( a % b + c ));
echo "USE CASE 5 OUTPUT : "$computedValueForUCFive;

#use-case 6
declare -A ucDict

ucDict[uc1]=$computedValueForUCTwo;
ucDict[uc2]=$computedValueForUCThree;
ucDict[uc3]=$computedValueForUCFour;
ucDict[uc4]=$computedValueForUCFive;

echo "${ucDict[*]}";

#use-case 7
declare -i ucArray

ucArray[1]=ucDict[uc1];
ucArray[2]=ucDict[uc2];
ucArray[3]=ucDict[uc3];
ucArray[4]=ucDict[uc4];
echo "array is :"
echo "${ucArray[*]}";

#use-case 8 sorting the array data in desc order
echo "desc order:"
        IFS=$'\n';
        sortedDescDict=`echo "${ucArray[*]}" | sort -n -r `;
        echo $sortedDescDict;

#use-case 9 sorting the array data in desc order
echo "asc order : "
        IFS=$'\n';
        sortedAscDict=`echo "${ucArray[*]}" | sort -n `;
        echo $sortedAscDict;
