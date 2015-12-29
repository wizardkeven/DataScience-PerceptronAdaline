#!/bin/bash
#Executer la répétition chaque expérience 20 fois pour les trois bases de données
# echo "Exécution commence!"
echo "================================================="
echo
tab=("breast" "ionosphere" "spambase")
#Empty the file
> result.txt
# rep1Train=./dataset/

for i in ${!tab[@]}; do

	echo "==================Begin of ${tab[i]}========================================================================" >> result.txt
	echo "====================lambda:0.00001=============================================================" >> result.txt
	echo "====================perceptron: ${tab[i]} lambda:0.00001================================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./perceptron/perceptron-learn -a 0.00001 ./dataset/${tab[i]}-Train ./perceptron/Parms-P-${tab[i]}
			./perceptron/perceptron-test ./dataset/${tab[i]}-Test ./perceptron/Parms-P-${tab[i]} >> result.txt
	done
	echo "====================================================" >> result.txt
	echo >> result.txt
	echo "=======================adaline: ${tab[i]}=============================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./adaline/adaline-learn -a 0.00001 ./dataset/${tab[i]}-Train ./adaline/Parms-P-${tab[i]}
			./adaline/adaline-test ./dataset/${tab[i]}-Test ./adaline/Parms-P-${tab[i]} >> result.txt
	done


	echo "====================lambda:0.0001================================" >> result.txt
	echo "====================perceptron: ${tab[i]} lambda:0.0001================================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./perceptron/perceptron-learn -a 0.0001 ./dataset/${tab[i]}-Train ./perceptron/Parms-P-${tab[i]}
			./perceptron/perceptron-test ./dataset/${tab[i]}-Test ./perceptron/Parms-P-${tab[i]} >> result.txt
	done
	echo "====================================================" >> result.txt
	echo >> result.txt
	echo "=======================adaline: ${tab[i]}=============================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./adaline/adaline-learn -a 0.0001 ./dataset/${tab[i]}-Train ./adaline/Parms-P-${tab[i]}
			./adaline/adaline-test ./dataset/${tab[i]}-Test ./adaline/Parms-P-${tab[i]} >> result.txt
	done

	echo "====================lambda:0.001================================" >> result.txt
	echo "====================perceptron: ${tab[i]} lambda:0.001================================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./perceptron/perceptron-learn -a 0.001 ./dataset/${tab[i]}-Train ./perceptron/Parms-P-${tab[i]}
			./perceptron/perceptron-test ./dataset/${tab[i]}-Test ./perceptron/Parms-P-${tab[i]} >> result.txt
	done
	echo "====================================================" >> result.txt
	echo >> result.txt
	echo "=======================adaline: ${tab[i]}=============================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./adaline/adaline-learn -a 0.001 ./dataset/${tab[i]}-Train ./adaline/Parms-P-${tab[i]}
			./adaline/adaline-test ./dataset/${tab[i]}-Test ./adaline/Parms-P-${tab[i]} >> result.txt
	done

	echo "====================lambda:0.01================================" >> result.txt
	echo "====================perceptron: ${tab[i]} lambda:0.01================================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./perceptron/perceptron-learn -a 0.01 ./dataset/${tab[i]}-Train ./perceptron/Parms-P-${tab[i]}
			./perceptron/perceptron-test ./dataset/${tab[i]}-Test ./perceptron/Parms-P-${tab[i]} >> result.txt
	done
	echo "====================================================" >> result.txt
	echo >> result.txt
	echo "=======================adaline: ${tab[i]}=============================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./adaline/adaline-learn -a 0.01 ./dataset/${tab[i]}-Train ./adaline/Parms-P-${tab[i]}
			./adaline/adaline-test ./dataset/${tab[i]}-Test ./adaline/Parms-P-${tab[i]} >> result.txt
	done

	echo "====================lambda:0.1================================" >> result.txt
	echo "====================perceptron: ${tab[i]} lambda:0.1================================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./perceptron/perceptron-learn -a 0.1 ./dataset/${tab[i]}-Train ./perceptron/Parms-P-${tab[i]}
			./perceptron/perceptron-test ./dataset/${tab[i]}-Test ./perceptron/Parms-P-${tab[i]} >> result.txt
	done
	echo "====================================================" >> result.txt
	echo >> result.txt
	echo "=======================adaline: ${tab[i]}=============================" >> result.txt
	for (( j = 0; j < 20; j++ )); do
			./adaline/adaline-learn -a 0.1 ./dataset/${tab[i]}-Train ./adaline/Parms-P-${tab[i]}
			./adaline/adaline-test ./dataset/${tab[i]}-Test ./adaline/Parms-P-${tab[i]} >> result.txt
	done
	echo "==================End of ${tab[i]}==================================" >> result.txt
done
# echo "$rep1Train"
exit 0


