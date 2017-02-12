#!/bin/bash

PYPATH="/home/benny/github_example/DataTable_example/parse_excel_to_json.py"

SRCPATH="/home/benny/github_example/DataTable_example/conf.d/VadpLicense.xlsx"

index=0
#call the py

$PYPATH 4 "/home/benny/github_example/DataTable_example/conf.d/VadpLicense.xlsx" 0 | while read line ; do
	# array in bash is eval a=($temp) => a[@] means all element. a[0~n]

	if [ $index = 0 ]; then
		array=(`(echo $line | tr -d "[],\"")`)
		arraylen=${#array[@]}
		echo $arraylen

		for index in $(seq 0 $(($arraylen-1)))
		do
			if [ ${array[$index]} = "'MacAddress'" ]; then
				MacAddress=$index
			elif [ ${array[$index]} = "'ApplicationName'" ]; then
				ApplicationName=$index
			elif [ ${array[$index]} = "'ModelName'" ]; then
				ModelName=$index
			elif [ ${array[$index]} = "'ExpirationDate'" ]; then
				ExpirationDate=$index
			elif [ ${array[$index]} = "'ApplicantName'" ]; then
				ApplicantName=$index
			elif [ ${array[$index]} = "'E-Mail'" ]; then
				E_Mail=$index
			elif [ ${array[$index]} = "'FeatureType'" ]; then
				FeatureType=$index
			else
				echo "${array[$index]} is not defined"
			fi
		done

		echo $MacAddress $ApplicationName $ModelName $ExpirationDate $ApplicantName $E_Mail $FeatureType
		echo "skip the first line: " ${array[@]}
	else
		array=(`(echo $line | tr -d "[],\"\'")`)
		echo ${array[@]}
		echo "next"
		# run run devil run.....
		

	fi
	index=$(($index+1))
done


