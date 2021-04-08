#!/bin/bash

####################################################################################################################################################
#
#RESOLUE - Script para forçar novas resoluções de forma automatizada
#Autor: Matheus Laidler
#Versão: 1.0
#Fase de testes
#
#Programa para alteração da resolução da tela
#Programa criado para agilizar o processo de mudança de resolução com xrandr
#Agora pode alterar a resolução de todos os monitores conectados, de apenas um deles, e com a resolução que você quiser.
#Meu editor de video ficava com bug de resolução, so funcionava direito em resolução mais alta que a máxima do monitor.
#Com esse script foi possível fazer essa mudança de resolução para poder usar o programa sem o problema.
#Assim sendo, com esse script vocẽ pode 'transformar' seu monitor em um fullHD. 
#Ele se baseia no comando de 'Resize and Rotate' -comando oficial linux: xrandr
#
#Midias: matheuslaidler.github.io; github.com/matheuslaidler; facebook.com/matheuslaidler; instagram.com/matheuslaidler; youtube.com/channel/UCkFbbZX6TG6eZPugmW32YFA
#
####################################################################################################################################################

echo "
**********************************************************************
		       Simulador de Resolução 
      Consiga transformar seu monitor em um fullHD.
 Problemas de resoluções (como de aplicações) podem ser resolvidos.
**********************************************************************
"
sleep 0.35s
echo "Escaneando entradas de vídeo..." 
sleep 1.2s
echo "Encontrado monitor primário: "
  xrandr | grep 'connected primary' | cut -d " " -f 1,4 | cut -d "+" -f 1 #type + resolutiuon
sleep 0.5s
echo "
Carregando script... "
sleep 0.5s
echo "
 ====================================================================
 NOTAS;
  -Opçôes rápidas de resolução do menu podem afetar outros monitores 
   conectados.Para um monitor específico use a opção 'Personalizada';
  -Após usar alguma opção, pode pressionar 'enter' para abrir o menu;
  -As resoluçes voltarão ao padrão do monitor após desligar o PC;
  -Para mais informaçes acesse a opção 'Help' no menu abaixo; 
 ===================================================================="
sleep 1s
echo "                   Criado por Matheus Laidler
______________________________________________________________________"
sleep 0.4s
echo "  Menu de utilização: 
______________________________________________________________________"

lista=("Help" "Listagem" "Monitor Primário" "1920x1080" "1440x900" "1440x830" "1366x768" "1360x768" "1280x1024" "1280x768" "1280x720" "Outra Resolução" "Personalizada" "Finalizar")

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
  Algumas aplicações podem ficar bugados em monitores de resoluções mais baixas
  Como com o davinci resolve o problema pode ser resolvido botando resolução fullHD. 
    No meu funcionou com a resolução 1440x830 ficando melhor pra usar 
    nesse monitor de resolução máxima 1366x768 da Samsumg.
    Esse bug do D.Resolve é o que fica uma janela (mesmo sendo maximizado) 
    imóvel e ficando pra parte direita do monitor e assim tendo uma parte 
    dele sendo comida.
  Assim vemos que problemas referentes a resolução podem ter a chance de
  serem resolvidos com este script. Além de ser um script fácil e prático
  de usar para qualquer um que so quer testar resolução mais alta (ou mais baixa).
**Lembre-se: Sempre que reiniciar o PC a resolução voltará ao padrão do monitor**

~Como usar:
  Caso queira usar uma resolução diferente, acesse o menu e selecione a 
  opção adequada a sua escolha. Temos diversas resoluções úteis, mas caso
  elas não sejam suficiente, você pode colocar a resolução que quiser na
  opção 'Outra Resolução' (12). Nela você digitará a resolução que quer.
   Para usar o menu é só digitar o nmr específico da resolução/opção que 
   deseja. Se quiser voltar ao menu aperte ENTER dnv.
   Caso queira usar o script para algum monitor específico (e não ir em todos
   os monitores conectados, caso tenha mais de um) Vá na opção 'Personalizada' 
   e digite o output ( exemplo: VGA-0 ) e a resolução ( exemplo: 1280x720 ) 
    Para ter essas informações, selecione a opção de listagem do menu e veja quais
    estão conectados (e onde n tem nada conectado) e seus respectivos outputs.
    Também pode ver o output e a resolução do seu monitor pela opção 'monitor 
    principal', se tiver apenas um monitor já é o bastante. É a mesma informação
    que o scan inicial do programa te mostra na tela. 
 *Para a resolução personalizada*
   AVISO: Precisa ser escrita no formato exato a como estão no Menu.
     (Ou seja, usar sem espaços e com o 'x')
      Exemplo de como usar (após selecionar 12):    1920x1080       (V)
      Exemplos de como não usar:  1080p    |  ou  |  1920 x 1080    (X)
   AVISO2: O tipo de saida precisa ser específica com o número, para saber
   qual o output do monitor que quer mudar, apenas acesse a Listagem(2);
   Também pode ver as conig (output + resolução) do monitor principál no (3);
 
  **Caso precise... bote a mão na massa**
  ((saiba como o script foi feito - se quiser pode fazer o processo manualmente))
  
  ~Faça você mesmo:
  <Principalmente em caso de erros> 
  Aprenda agr a testar os comandos que usamos no script de forma manual:
  Nosso script se baseia na utilização do 'xrandr', nele vc verificará o
   tipo de entrada de vídeo e qual resolução quer colocar.
  Para ver os dispositivos e suas entradas de video use o comando puro> xrandr
  Para colocar a resolução que vc quer no monitor que quiser, coloque o 
  tipo de saida de video e a resolução que deseja no comando> 
            xrandr --output VGA-0 --scale-from 1920x1080 
        Alterando: VGA-0 pelo seu dado no comando xrandr 
                   1920x1080 pela resolução desejada
********************************************************************************
  ~   Resumo geral de uso para o script de forma correta e funcional
      --------------------------------------------------------------------------
      Esse script é útil para quem não quer ter q ficar lembrando e fazendo esse
      comando direto. Já foi feito pra funcionar de forma global,em qlqr entrada,
      mas se não der, tente fazer manualmente com o comando direto no shell.
      A resolução volta ao padrão do monitor sempre que o pc é desligado.
      As opções rápidas do menu alterarão de qlqr monitor conectado, se quiser
      fazer para um monitor específico, usar a opção personalizada e botar o
      output do monitor específico e a resolução que quer modificar.
      Os outputs podem ser verificados na opção de listagem.
      --------------------------------------------------------------------------
      Script criado por: Matheus Laidler 
                          ~Github.com/matheuslaidler ~matheuslaidler.github.io
            URL do script> github.com/matheuslaidler/Resoluesh
********************************************************************************
Página de ajuda finalizada!!
<> Para voltar o menu aperte Enter <>
          "
        ;;
       "Listagem")
          echo "
          Listagem de telas e entradas conectadas e as sem conexão:
          "
          xrandr | cut -d " " -f 1,2 | grep 'connected'
         #xrandr | cut -d " " -f 1,2 
            echo "
          
Listagem concluía com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
       "Monitor Primário")
            echo " Relembrando as informações gerais do seu monitor atual "
            echo "  
Output:"
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
        "Outra Resolução")
            echo "Digite a resolução desejada:"
            read resolucao
          if [[ $resolucao == "" ]];
          then 
          echo "Nada declarado. Operação cancelada" 
          exit
          else
            xrandr --output VGA-0 --scale-from $resolucao & xrandr --output VGA-1-1 --scale-from $resolucao & xrandr --output HDMI-0 --scale-from $resolucao & xrandr --output HDMI-1-1 --scale-from $resolucao & xrandr --output HDMI-1-2 --scale-from $resolucao & xrandr --output HDMI-1-3 --scale-from $resolucao & xrandr --output DVI-D-0 --scale-from $resolucao & xrandr --output DP-1-1 --scale-from $resolucao &1>/dev/null &2>/dev/null
          fi
            echo "
Processo concluído com sucesso!!
<> Para voltar o menu aperte Enter <>
          "
          ;;
        	"Personalizada")
	          echo "Opção personalizada
 Escolha o monitor colocando seu output (exemplo: VGA-0) e a resolução específica (exemplo: 1920x1080)
  - Se precisar de ajuda, usar a opção Help ou a página do github
"
	  echo "Digite o output do monitor desejado
    -Letra maiúscula; caractere especial (-) e numeração (exemplo: HDMI-0)"
	  read output
	  echo "Digite a resolução desejada
     - Numeração na ordem correta e sem espaços (exemplo: 1280x720)"
	  read resol
    if [[ $output == "" ]];
    then 
    echo "Alguma(s) opção(ões) não foram declaradas. Operação cancelada" 
    exit
    elif [[ $resol == "" ]];
    then
    echo "Alguma(s) opção(ões) não foram declaradas. Operação cancelada"
    exit
    else
          xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol & xrandr --output $output --scale-from $resol &1>/dev/null &2>/dev/null
    fi
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
#Fim
