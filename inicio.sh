#!/bin/bash



while :; do

	read -p "Digite a opcao  >>" opcao
	case $opcao in
		1) ls;;
		2) read -p "Digite o diretorio de destino >>" dr
		cd $dr
		echo "Você está aqui >>" $(pwd);;
		3) read -p "Digite o filtro >>" aux
		ls | grep -E $aux;;
		4) ls -l;;
		5) ;;
		6) read -p "Digite o nome do aquivo que quer ver:" arq
		cat $arq;;
		7) ;;
		8) ;;
		*) break ;;
	esac



done

echo "---Obrigado por usar nosso programa, estamos encerrando---"
