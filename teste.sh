#!/bin/bash
read -p "Insira um número: " num
echo "O número é: $num"
if [ $num -eq 10 ]
then
    echo "igual a 10"
else
    echo "diferente de 10"
fi

if [ $num -gt 10 ]
then
    echo "maior que 10"
fi
