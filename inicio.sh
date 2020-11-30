#!/bin/bash



while :; do

	read -p "Digite a opcao  >>" opcao
	case $opcao in
		1) ls;;
		2) ;;
		3) read -p "Digite o filtro >>" aux
		ls | grep -E $aux;;
		4) ls -l;;
		5) ;;
		6) ;;
		7) ;;
		8) ;;
		*) break ;;
	esac



done

echo "---Obrigado por usar nosso programa, estamos encerrando---"
