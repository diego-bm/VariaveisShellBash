#!/bin/bash
rnd=$RANDOM
read -p "Adivinha o número que eu tô pensando! (0 até 37000) " num

while [ $num -ne $rnd ]; do
    if [ $num -eq $rnd ]
    then
        echo "Acertou!"
        echo "O número era: $rnd"
        exit
    else
        echo "Errou!"
        if [ $num -lt $rnd ]; then
            echo "É maior!"
            diferenca=$((rnd-num))
        elif [ $num -gt $rnd ]; then
            echo "É menor!"
            diferenca=$((num-rnd))
            echo $diferenca

            if [ $diferenca -gt 10000 ]; then
                echo "A diferença é maior que 10000! Tá longe!"
            elif [ $diferenca -gt 1000 ]; then
                echo "A diferença é maior que 1000!!"
            elif [ $diferenca -gt 100 ]; then
                echo "A diferença é maior que 100!!!"
            elif [ $diferenca -gt 10 ]; then
                echo "A diferença é maior que 10!!!!"
            elif [ $diferenca -gt 1 ]; then
                echo "A diferença é de 1!!!!!"
            else
                echo "É menor"
            fi
        fi
        read -p "Adivinha o número que eu tô pensando! (0 até 37000) " num
    fi
done