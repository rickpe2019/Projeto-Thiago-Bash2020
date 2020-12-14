#!/bin/bash



while :; do
	echo -e "\n"
	echo "------Menu------"
	echo -e "\n"
	echo "1-Deve exibir arquivos e pastas
2-Deve permitir Navegação por diretórios
2.1- Retorna 1 diretorio (igual ao cd ..)
3-Deve possibilitar filtros de busca no diretório atual
4-Deve possibilitar listagem de detalhes
5-Deve possibilitar ordenação por nome, por grupo dono, por extensão
6-Deve possibilitar a pré-visualização dos arquivos.
qualquer outra coisa- Sair do programa."
	echo -e "\n"
	read -p "Digite a opcao  >>" opcao
	case $opcao in
		1) ls;;
		2) read -p "Digite o diretorio de destino >>" dr
		cd $dr
		echo "Você está aqui >>" $(pwd);;
		2.1) cd ..;;
		3) read -p "Digite o filtro >>" aux
		ls | grep -E $aux;;
		4) ls -l;;
		5) read -p "Digite 1 para extensao, 2 para grupo e 3 para nome  >" aux
		case $aux in
			1) ls -X;;
			2)read -p "Digite o grupo: " grupo
			 find $pwd -group $grupo ;;
			3) ls ;;
		esac;;
		6) read -p "Digite o nome do aquivo que quer ver:" arq
		cat $arq;;
		*) break ;;
	esac



done

echo "---Obrigado por usar nosso programa, estamos encerrando---"
