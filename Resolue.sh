#!/bin/bash
#Explicação Bloco-0
#Esta primeira linha acima, chamada shebang, informa ao sistema que este é um script bash.


#Comentários do Autor#
####################################################################################################################################################
#
#RESOLUE.sh - Script para forçar novas resoluções de forma automatizada e temporária
#Primeiro comando para poder utilizar o script: chmod +x Resolue.sh
#Autor: Matheus Laidler
#Versão: 2.0
#
#Programa para alteração da resolução da tela
#Programa criado para agilizar o processo de mudança de resolução com xrandr.
#Assim poderá usar temporariamente uma resolução maior enquanto trabalha, por exemplo, em uma edição.
#Meu editor de video ficava com bug de resolução, so funcionava direito em resolução mais alta que a máxima do monitor e esse script ajudou bastante.
#Assim sendo, com esse script vocẽ pode 'transformar' seu monitor em um fullHD, caso não use um.
#Ele se baseia no comando de 'Resize and Rotate' -comando oficial linux: xrandr
#
#Midias: matheuslaidler.github.io; github.com/matheuslaidler; facebook.com/matheus.laidler; instagram.com/matheuslaidler; youtube.com/channel/UCkFbbZX6TG6eZPugmW32YFA; matheuslaidler.gitbook.io
#
####################################################################################################################################################

#Explicação Bloco-1
#Esta linha está obtendo informações sobre o monitor primário conectado usando o comando xrandr e armazenando-as na variável primary_info.
primary_info=$(xrandr | grep 'connected primary' | cut -d " " -f 1,4 | cut -d "+" -f 1)

#Explicação Bloco-2
#Criação de funções em comum para serem usados no decorrer do script, como delay com mensagem e conclusão de alguma função para retornar ao menu.
# Função para exibir mensagens com espera
function show_message() {
  echo "$1"
  sleep "$2"
}
# Função para exibir mensagem de conclusão e retornar ao menu
function show_completion_message() {
  echo "Processo concluído com sucesso!!"
  read -p "<> Para voltar ao menu aperte Enter <>"
}

#Explicação Bloco-3
#Esta é a definição da função principal criada chamada de 'display_resolution', que altera a resolução do monitor especificado, usando xrandr.
#Como a maioria deve saber, o &>/dev/null serve para não printar na tela toda a saída do comando na hora. Nessa hora você só quer ver o resultado da mudança de resolução, e não várias coisas sujando o terminal.
#Essas variáveis passadas na função são chamados de parâmetros posicionais. $1 ganha um valor como variável do sistema passada pelo usuário, e o $2 como a segunda, elas se referem ao primeiro e ao segundo argumento passado para a função, respectivamente.
function display_resolution() {
  local output=$1
  local resolution=$2

  if [[ $output != "" && $resolution != "" ]]; then
    xrandr --output $output --scale-from $resolution &>/dev/null
    show_completion_message
  else
    echo "Alguma(s) opção(ões) não foram declaradas. Operação cancelada"
    exit
  fi
}

#Explicação Bloco-4
#Estas linhas estão imprimindo uma mensagem de boas vindas, notas, loadings e etc;
#Aqui chamamos o bloco-1 para captura de informações dos monitores
#Usamos sleep para dar delay de tempo para o próximo comando.
#Printamos as opções que iremos usar no menu de navegação.
echo "**********************************************************************"
echo "		     Simulador de Resolução"
echo "     Consiga transformar seu monitor para maior resolução"
echo "**********************************************************************"
show_message "Escaneando entradas de vídeo..." 1.2s
echo "$primary_info"
show_message "Carregando script..." 1s
echo "===================================================================="
echo "NOTAS;"
echo " NOTAS;
  -Selecionar algum dos monitores específicos dado no escaneamento;
  -Se o monitor não apareceu, mas souber a identificação com base no padrão apresentado (ex:VGA-0), tente passar como entrada;
  -Após usar alguma opção, pode pressionar 'enter' para abrir o menu;
  -As resoluçes voltarão ao padrão do monitor após reiniciar o PC;
  -Para mais informaçes acesse a opção 'Help' no menu abaixo; "
echo "===================================================================="
sleep 0.85s
echo "Criado por Matheus Laidler"
sleep 0.5s

#Explicação Bloco-5
#prints das opções do menu case + menu funcional
#loop select será explicado separadamente no final dela.
echo "Menu de utilização:"
echo "1. Help"
echo "2. Listagem"
echo "3. Monitor Primário"
echo "4. 1920x1080"
echo "5. Resolução Personalizada"
echo "6. Informações"
echo "7. Finalizar"
#loop select com prints, xrandr, $primary_info e display_resolution nas funções por trás de cada escolha.
select menu in "Help" "Listagem" "Monitor Primário" "1920x1080" "Resolução Personalizada" "Informações" "Finalizar"
do
  case $menu in
    "Help")
      echo "Sobre o projeto + Ajuda 
	   Algumas pessoas podem precisar de alguma ajuda com problemas de 
  resolução de tela e esse script pode ser a ferramenta correta.
  
  ~Como usar:
  Caso queira usar uma resolução diferente, acesse o menu e selecione a 
  opção adequada a sua escolha, se precisar voltar pra resolução original,
  apenas refaça o mesmo procedimento recolocando sua resolução anterior.
  Na opção resolução personalizada você digitará a resolução que quiser.
  
   Para usar o menu é só digitar o nmr específico da opção que deseja. 
	
	Em geral funciona com você tendo que digitar o output e a resolução,
	caso selecione 1080p só precisará do output, que é referente ao monitor.
	output - exemplo: VGA-0, e a resolução - exemplo: 1280x720;
	
    Para ter essas informações, selecione a opção de listagem do menu e veja quais
    estão conectados (e onde n tem nada conectado) e seus respectivos outputs.
	
    Também pode ver o output e a resolução do seu monitor pela opção 'monitor 
    principal', se tiver apenas um monitor já é o bastante. Pode ver todas as
    informações de outputs e as resoluções na opção 'Informações' do menu.
      
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
  
  Script não funcionando ??
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
      Os outputs podem ser verificados na opção de 'listagem' e 'informações'.
	  Caso a alteração de resolução tenha ido de qlqr monitor conectado, reveja
	  qual o output correto do monitor específico ou tente trocar.
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
      echo "Listagem de telas e entradas conectadas e as sem conexão:"
      xrandr | cut -d " " -f 1,2 | grep 'connected'
      echo "Listagem concluída com sucesso!!"
      read -p "<> Para voltar ao menu aperte Enter <>"
      ;;
    "Monitor Primário")
      echo "Relembrando as informações gerais do seu monitor atual"
      echo "Output: $(echo $primary_info | cut -d " " -f 1)"
      echo "Resolução: $(echo $primary_info | cut -d " " -f 2)"
      echo "Processo concluído com sucesso!!"
      read -p "<> Para voltar ao menu aperte Enter <>"
      ;;
    "1920x1080")
      echo "Digite o output do monitor desejado (exemplo: HDMI-0)"
      read output
      display_resolution "$output" "1920x1080"
      ;;
    "Resolução Personalizada")
      read -p "Digite o output do monitor desejado (exemplo: HDMI-0): " output
	  read -p "Digite a resolução desejada (exemplo: 1280x720): " resol
	  display_resolution "$output" "$resol"
      ;;
    "Informações")
      echo "Mais informações do(s) monitor(es) e as conexões"
      echo "Default Screen: $(xdpyinfo | grep 'default screen' | cut -d " " -f 4)"
      xdpyinfo | grep "screen" && xdpyinfo | grep "dimensions" | cut -d " " -f 3,7
      echo
      xrandr --verbose | grep "x"
      echo "Processo concluído com sucesso!!"
      read -p "<> Para voltar ao menu aperte Enter <>"
      ;;
    "Finalizar")
      echo "Créditos: Matheus Laidler (Criador)"
      echo "Finalizando..."
      sleep 1s
      break
      ;;
    *)
      echo "Desculpe... 
	  Opção não reconhecida."
      ;;
  esac
done
#Explicação do Select Menu Loop;
#Este é um loop select que apresenta um menu ao usuário e executa diferentes ações com base na seleção do mesmo.
#Cada caso dentro do bloco case corresponde a uma opção de menu. Por exemplo, a opção “Help” imprime uma mensagem de ajuda, a opção “Listagem” lista todas as telas e entradas conectadas, e assim por diante. Vc pdoe imaginar como se fosse uma lista em q cada parte tem um conteúdo específico, vai buscar em qual deles é do valor q foi digitado e te mostrar o conteúdo tal, se a opção não existir, ele carregará o código que temos na opção *)
#Decidi não usar o echo e read por aqui agora, e sim apenas o read -p.
#Ambas as formas de solicitar a entrada do usuário são corretas e funcionarão. A diferença entre as duas é principalmente estilística e depende de como você prefere estruturar seu código. Usar read -p permite que você exiba uma mensagem ao usuário e leia a entrada do usuário na mesma linha. Isso pode tornar o código um pouco mais conciso. Por outro lado, usar echo para exibir a mensagem e read para ler a entrada do usuário pode tornar o código um pouco mais claro para alguns, especialmente se você estiver fazendo algo mais complexo entre a exibição da mensagem e a leitura da entrada. A função criada lá encima foi feita com echo e read, por exemplo.
