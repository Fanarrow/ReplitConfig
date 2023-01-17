#!/bin/bash

clear

echo 'Selecione o que deseja executar.'

# Lê as palavras expandidas, criando as opções do menu enumeradas.
select OPCAO in 'Configurar Servidor' 'Instalar Aleatory Bot' 'Instalar Sakura Bot' 'Iniciar Aleatory Bot' 'Iniciar Sakura Bot' 'SAIR'
do
    # Lê o número armazenado na variável 'OPCAO' e executa a opção correspondente.
    case $OPCAO in
        'Configurar Servidor') # Opção 1
            # Executando os comandos...
            echo 'Configurando seu servidor.'
rm -rf ReplitBot && git clone https://github.com/Fanarrow/ReplitBot.git && mv ReplitBot/* . && mv ReplitBot/.replit . && rm -rf ReplitBot
            # Finaliza o menu
            echo 'Aperte no EXIT logo acima e volte para a instalação do Bot'
            break
            ;;
        'Instalar Aleatory Bot') # Opção 2
            # Executando os comandos...
            echo 'Instalando Aleatory Bot.'
curl -s -L https://github.com/Fanarrow/ReplitBot/raw/main/.config%20bot/aleatory.sh | bash && cd aleatory-md && npm install
            # Finaliza o menu
            echo 'Selecione a opção de iniciar o Aleatory Bot'
            echo
            ;;
        'Instalar Sakura Bot')  # Opcao 3
            # Executando os comandos...
            echo 'Instalando Sakura Bot.'
curl -s -L https://github.com/Fanarrow/ReplitBot/raw/main/.config%20bot/sakura.sh | bash && cd sakura-botv6 && npm install
            # Finaliza o menu
            echo 'Selecione a opção de iniciar o Sakura Bot'
            echo
            ;;
        'Iniciar Aleatory Bot')  # Opcao 4
            # Executando os comandos...
            echo 'Iniciando Aleatory Bot.'
npm start
            # Finaliza o menu
            break
            ;;
        'Iniciar Sakura Bot')  # Opcao 5
            # Executando os comandos...
            echo 'Iniciando Sakura Bot.'
npm start
            # Finaliza o menu
            break
            ;;
        'SAIR')  # Finalizar script
            echo 'Saindo...'
            exit 0
            ;;
        *)  # Opção inválida. (nenhuma das opções anteriores).
            # O comando break não é executado para que o fluxo do script
            # permaneça preso ao menu, forçando o usuário a selecionar uma
            # opção válida.
            # Executando os comandos..
            echo 'Opção seleciona é inválida.'
            echo
            ;;
    esac
done

echo 'Terminado...'
