# ResolueSH
![ScriptResolue2](https://user-images.githubusercontent.com/76860503/113959265-e97e8a80-97f8-11eb-9d1c-b6b9088a6a03.png)

 Script que altera a resolução da sua tela de acordo com a escolha do usuário, podendo testar diversas sem problemas - mesmo que não tenha nas opções de seu monitor. 
 Ele funciona mais como uma simulação de resolução, após reiniciar a máquina a resolução volta ao padrão do monitor. 
 O script escaneia todas as entradas de video e te permite alterar a resolução dos monitores conectados. Por padrão, escolhendo as opçes do menu, ele alterará de todos os monitores detectados. Caso utilize apenas um, pode usar sem problemas. Já em caso de utilizar outros monitores e quiser mudar de apenas um, use a opção personalizada do menu para especificar qual output do monitor quer e qual a resolução deseja alterar. Para saber qual output do monitor pode usar a opção de listagem e até ver a opção 'monitor principal' para ver o output dele e a sua resolução (e a mesma informação que o script já dá no scan da abertura do script), além de pofer ver a opção de 'Informaçes' adicionada na ultima atualização, mostrando informações de todos os outputs.
 O objetivo foi criar um script que resolva alguns problemas de resolução de tela presentes em algumas situações, como com algumas aplicações. Um exemplo disso é com o editor de vídeo Davinci Resolve ficando bugado em monitores de resolução menor (com esse script ele ficará em tela cheia normal ao por uma resolução mais alta). 
 Eu usei o shell para mudar a resolução da máquina e desbugar a aplicação, daí tive a ideia de fzr isso de forma automatizada e disponibiliza-la para todos e para qlqr tipo de monitor, também sendo útil para outros tipos de situaçes.
 
 
### Informaçes adicionais; 
Versão atual: 2.0

  Notas de atualização:
  - Nova funcionalidade: Foi adicionado ao menu a opção (personalizada) - agora pode escolher em qual monitor quer mudar a resolução, sem ser obrigado a alterar em todos eles (Antes so tinha a opço de personalizar uma resolução específica, mas continuava indo em todos os monitores - o que é sem problemas pra quem tem apenas um - agora temos a opção para selecionar um monitor específico com uma resolução específica também);
  - Agora aparece uma mensagem caso não escreva as opções personalizadas em (12) e (13) do menu, encerrando a atividade do script;
  - Bugs que ocorriam foram corrigidos (Ainda não foi encontrado mais bug neste projeto);
  - Textos do cdigo alterados e corrigidos;
  - Design corrigido;
  - Imagens da postagem atualizadas;
  - Nova opção do menu: Informaões - mostra informações extras sobre a tela e todos os outputs.

## Como usar?
###### Baixe o script -> botão direito nele -> propriedades -> permissões -> executar como um programa -> terminal: $ ./Resolue.sh
![permissão1](https://user-images.githubusercontent.com/76860503/113920112-c208cd00-97ba-11eb-9ea4-aee0342a3c30.png)
 
 O script terá uma aba de ajuda, onde mostra como e porque o programa foi feito, como utilizar o script da forma correta e como você pode fazer manualmente tudo o que o script faz, te dando os comandos caso o script não funcione na sua máquina por algum motivo ( parte: Faça você mesmo ).
 Para utilizar o script é necessário, obviamente, utilizar alguma distribuição Linux (Ainda não testado no WSL2). 
 Depois será importante dar permissão para o arquivo poder ser executado como um script. Basta clicar com o boto direito, ir em propriedades, dps em permissões e selecionar que esse arquivo pode ser executado como um programa. 
  De maneira mais prática, pode ser feito com o comando 'chmod +x resoluesh.sh' dentro da basta onde ele se encontra, e logo em seguida executar o script.

![permissão2](https://user-images.githubusercontent.com/76860503/113920464-317ebc80-97bb-11eb-84cb-aee1f503b0bf.png)
 
 Após isso, pode executar o script digitando seu nome com ./ no terminal (com a sessão do terminal na mesma pasta do script) 
 ###### ./Resolue.sh
 Irá carregar o logo, o scan e o menu
Curiosidade: Após mudar a resolução pelo script e rodar dnv, a nova resolução é reconhecida no scan

![ResNova](https://user-images.githubusercontent.com/76860503/113951505-10819000-97ea-11eb-8562-613005f925bb.png)
###### (  Imagem antiga - da penultima atualização - apenas para mostrar a resolução atualizada  )

### Créditos
Criador: Matheus Laidler 

Licença: MIT 
