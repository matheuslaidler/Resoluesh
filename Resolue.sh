#!/bin/bash

####################################################################################################################################################
#
#RESOLUE - Script para forçar novas resoluções de forma automatizada
#Autor: Matheus Laidler
#Versão: 1.0
#Fase de testes
#
#Programa para alteração da resolução da tela
#Programa criado para agilizar o processo de utilização do davinci resolve (editor de video)
#O editor de video ficava com bug de resolução, so funcionava direito em resolução mais alta que a máxima do monitor.
#Com esse script será possível fazer essa mudança de resolução para poder usar o programa sem erros.
#Ou seja, pode transformar seu monitor em um fullHD. 
#Ele se baseia no comando de 'Resize and Rotate' -comando oficial linux.
#No final terá a explicação sobre o problema do davinci e como/porque foi criado esse script
#
#Midias: matheuslaidler.github.io; github.com/matheuslaidler; facebook.com/matheuslaidler; instagram.com/matheuslaidler; youtube.com/channel/UCkFbbZX6TG6eZPugmW32YFA
#
####################################################################################################################################################

echo "
***********************************************************************
      Simulador de Resolução 
  Consiga transformar seu monitor em um fullHD.
  Problemas de resoluções (como de aplicações) podem ser resolvidos.
***********************************************************************
"
sleep 0.35s
echo "Escaneando entradas de vídeo..." 
sleep 1.2s
echo " 
Encontrado monitor primário: "
xrandr | grep 'connected primary' | cut -d " " -f 1,4 | cut -d "+" -f 1 #type + resolutiuon
sleep 0.5s
echo "
Carregando menu... "
sleep 1s

echo "
Menu de utilização:"

lista=("Help" "Listagem" "Monitor Primário" "1920x1080" "1440x900" "1440x830" "1366x768" "1360x768" "1280x1024" "1280x768" "1280x720" "Resolução Personalizada" "Finalizar")

select menu in "${lista[@]}"
 do
  case $menu in
       "Help")
        echo " 
  ******************************************************************************
        Sobre o projeto + Ajuda
  ******************************************************************************    
        Sobre o script;
  Algumas pessoas podem precisar de alguma ajuda com problemas de 
  resolução de tela e esse script pode ser a ferramenta correta.
  Nele podemos colocar resolução que nem é mostrada nas opções do monitor 
  por padrão.
   Programas (como Davinci Resolve) podem ficar bugados em monitores com 
   resoluções mais baixas
    Com davinci o problema pode ser resolvido botando resolução fullHD. 
    Porém, o meu funcionou com a resolução 1440x830 ficando melhor pra usar 
    nesse monitor de resolução máxima 1366x768 da Samsumg.
    Esse bug do D.Resolve é o que fica uma janela (mesmo sendo maximizado) 
    imóvel e ficando pra parte direita do monitor e assim tendo uma parte 
    dele sendo comida.
  Assim vemos que problemas referentes a resolução podem ter a chance de
  serem resolvidos com este script.
Como usar:
  Caso queira usar uma resolução específica, acesse o menu e selecione a 
  opção adequada a sua escolha. Temos diversas resoluções úteis, mas caso
  elas não sejam suficiente, você pode colocar a resolução que quiser na
  opção 'Resolução Personalizada' (apertar 12). Nela você digitará a resolução que quer.
   Para usar o menu é só digitar o nmr específico da resolução/opção que 
   deseja. Se quiser voltar ao menu aperte ENTER dnv.
    
    *Para a resolução personalizada*
   AVISO: Precisa ser escrita no formato exato a como estão no Menu.
     (Ou seja, usar sem espaços e com o 'x')
      Exemplo de como usar (após selecionar 12):    1920x1080       (V)
      Exemplos de como não usar:  1080p    |  ou  |  1920 x 1080    (X)
        
  **Caso precise... bote a mão na massa**
  ((saiba como o script foi feito - se quiser pode fazer o processo manualmente))
  
  Faça você mesmo:
  <Principalmente em caso de erros> 
  Aprenda agr a testar os comandos que usamos no script de forma manual:
  Nosso script se baseia na utilização do 'xrandr', nele vc verificará o
   tipo de entrada de vídeo e qual resolução quer colocar.
  Para ver os dispositivos e suas entradas de video use o comando puro> xrandr
  Para colocar a resolução que vc quer no monitor que quiser, coloque o 
  tipo de entrada de video e a resolução que deseja no comando> 
            xrandr --output VGA-0 --scale-from 1920x1080 
        Alterando: VGA-0 pelo seu dado no comando xrandr 
                   1920x1080 pela resolução desejada
********************************************************************************
      Esse script é útil para quem não quer ter q ficar lembrando e fazendo esse
      comando direto. Já foi feito pra funcionar de forma global,em qlqr entrada,
      mas se não der, tentar manualmente, como mostramos aqui.
      --------------------------------------------------------------------------
      Script criado por: Matheus Laidler 
                          ~Github.com/matheuslaidler ~matheuslaidler.github.io
********************************************************************************
Página de ajuda finalizada!!
<> Para voltar o menu aperte Enter <>
          "
        ;;
       "Listagem")
          echo "
          Listagem de telas e entradas conectadas e as sem conexão:
          "
         xrandr | cut -d " " -f 1,2 
            echo "
          
Listagem concluía com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
       "Monitor Primário")
            echo " Relembrando as informações gerais do seu monitor atual "
            echo "  
Entrada:"
            xrandr | grep 'connected primary' | cut -d " " -f 1 
            echo "
Resolução:"
            xrandr | grep 'connected primary' | cut -d " " -f 4 | cut -d "+" -f 1 
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1920x1080")
            xrandr --output VGA-0 --scale-from 1920x1080 & xrandr --output VGA-1-1 --scale-from 1920x1080 & xrandr --output HDMI-0 --scale-from 1920x1080 & xrandr --output HDMI-1-1 --scale-from 1920x1080 & xrandr --output HDMI-1-2 --scale-from 1920x1080 & xrandr --output HDMI-1-3 --scale-from 1920x1080 & xrandr --output DVI-D-0 --scale-from 1920x1080 & xrandr --output DP-1-1 --scale-from 1920x1080 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1440x900")
            xrandr --output VGA-0 --scale-from 1440x900 & xrandr --output VGA-1-1 --scale-from 1440x900 & xrandr --output HDMI-0 --scale-from 1440x900 & xrandr --output HDMI-1-1 --scale-from 1440x900 & xrandr --output HDMI-1-2 --scale-from 1440x900 & xrandr --output HDMI-1-3 --scale-from 1440x900 & xrandr --output DVI-D-0 --scale-from 1440x900 & xrandr --output DP-1-1 --scale-from 1440x900 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1440x830")
            xrandr --output VGA-0 --scale-from 1440x830 & xrandr --output VGA-1-1 --scale-from 1440x830 & xrandr --output HDMI-0 --scale-from 1440x830 & xrandr --output HDMI-1-1 --scale-from 1440x830 & xrandr --output HDMI-1-2 --scale-from 1440x830 & xrandr --output HDMI-1-3 --scale-from 1440x830 & xrandr --output DVI-D-0 --scale-from 1440x830 & xrandr --output DP-1-1 --scale-from 1440x830 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1366x768")
            xrandr --output VGA-0 --scale-from 1366x768 & xrandr --output VGA-1-1 --scale-from 1366x768 & xrandr --output HDMI-0 --scale-from 1366x768 & xrandr --output HDMI-1-1 --scale-from 1366x768 & xrandr --output HDMI-1-2 --scale-from 1366x768 & xrandr --output HDMI-1-3 --scale-from 1366x768 & xrandr --output DVI-D-0 --scale-from 1366x768 & xrandr --output DP-1-1 --scale-from 1366x768 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1360x768")
            xrandr --output VGA-0 --scale-from 1360x768 & xrandr --output VGA-1-1 --scale-from 1360x768 & xrandr --output HDMI-0 --scale-from 1360x768 & xrandr --output HDMI-1-1 --scale-from 1360x768 & xrandr --output HDMI-1-2 --scale-from 1360x768 & xrandr --output HDMI-1-3 --scale-from 1360x768 & xrandr --output DVI-D-0 --scale-from 1360x768 & xrandr --output DP-1-1 --scale-from 1360x768 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1280x1024")
            xrandr --output VGA-0 --scale-from 1280x1024 & xrandr --output VGA-1-1 --scale-from 1280x1024 & xrandr --output HDMI-0 --scale-from 1280x1024 & xrandr --output HDMI-1-1 --scale-from 1280x1024 & xrandr --output HDMI-1-2 --scale-from 1280x1024 & xrandr --output HDMI-1-3 --scale-from 1280x1024 & xrandr --output DVI-D-0 --scale-from 1280x1024 & xrandr --output DP-1-1 --scale-from 1280x1024 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1280x768")
            xrandr --output VGA-0 --scale-from 1280x768 & xrandr --output VGA-1-1 --scale-from 1280x768 & xrandr --output HDMI-0 --scale-from 1280x768 & xrandr --output HDMI-1-1 --scale-from 1280x768 & xrandr --output HDMI-1-2 --scale-from 1280x768 & xrandr --output HDMI-1-3 --scale-from 1280x768 & xrandr --output DVI-D-0 --scale-from 1280x768 & xrandr --output DP-1-1 --scale-from 1280x768 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "1280x720")
            xrandr --output VGA-0 --scale-from 1280x720 & xrandr --output VGA-1-1 --scale-from 1280x720 & xrandr --output HDMI-0 --scale-from 1280x720 & xrandr --output HDMI-1-1 --scale-from 1280x720 & xrandr --output HDMI-1-2 --scale-from 1280x720 & xrandr --output HDMI-1-3 --scale-from 1280x720 & xrandr --output DVI-D-0 --scale-from 1280x720 & xrandr --output DP-1-1 --scale-from 1280x720 &>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "Resolução Personalizada")
            echo "Digite a resolução desejada:"
            read resolucao
            xrandr --output VGA-0 --scale-from $resolucao & xrandr --output VGA-1-1 --scale-from $resolucao & xrandr --output HDMI-0 --scale-from $resolucao & xrandr --output HDMI-1-1 --scale-from $resolucao & xrandr --output HDMI-1-2 --scale-from $resolucao & xrandr --output HDMI-1-3 --scale-from $resolucao & xrandr --output DVI-D-0 --scale-from $resolucao & xrandr --output DP-1-1 --scale-from $resolucao &1>/dev/null &2>/dev/null
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        "Finalizar")
          sleep 0.35s
          echo "
Obrigado pela preferência!! "
          sleep 0.5s
          echo "
          
    Crédios: Matheus Laidler (Criador)
          
          "
          sleep 0.5s
          echo "
Finalizando...
          "
          sleep 1s
          break
         ;;
        *) echo "Desculpe... 
  Opção não reconhecida. Favor, tente novamente digitando o número correspondente a sua escolha de forma correta
    -Se precisar voltar ao menu, aperte ENTER-
              "
         ;;
  esac
 done


#Mais sobre o desenvolvimento do script

#Como acontecer: Resolver problema do programa Davinci Resolve.
#Como resolveu o problema para chegar na opção de criar o script:
 #O programa foi criado para resolver problema do davinci resolve de forma a ser mais automática caso precise.
#O primeiro problema foi ele (davinci resolve) n abrir após instalação: Tive de ver que dependencias estão faltando;
#Para isso rodei no terminal: /opt/resolve/bin/resolve
# A saida de erro deve ser mostrada, o meu caso foi erro faltando libOpenCL
#Ent, para isso rodei no terminal: sudo apt install ocl-icd-libopencl1
#Depois tive o erro com a resolução, ficava uma janela pro lado sem poder ser movida. A unica forma que tive para resolver isso foi usando resolução mais alta.
#Ent rodei no terminal: xrandr
#Após ver as informações direitinhas coloquei no comando> xrandr --output VGA-0 --scale-from 1920x1080
#Dai fui fazendo com várias resoluções até ir em uma mais baixa e que funciona o davinci mesmo sendo bem visível as coisas, sem ter nada distorcido ou pequeno de ler (após testar em outras resoluções ficou perfeito, e a resolução máxima desse monitor era de 1366x768).
#Assim rodei o comando> xrandr --output VGA-0 --scale-from 1440x830
#Daí tive a ideia de fazer isso como um script pra qlqr pessoa que queira usar o Davinci Resolve e até se precisar para algum outro problema / objetivo.

