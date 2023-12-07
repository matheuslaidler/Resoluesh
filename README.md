# ResolueSH

## Importante! Script recém atualizado e otimizado! 
- Acabei tirando as opções antigas **cheias de resoluções** e deixei a **personalizada**, basta digitar qual quer junto do output sempre. Tudo foi feito de uma forma bem melhor organizada, funcional e otimizado com os conhecimentos atuais, porém não pode ser testado na prática, pois não eu estava podendo usar linux ou wsl no momento q foi feito a atualização. Em breve posso atualizar o post com as novas imagens da prática. *Teoricamente tudo funciona perfeitamente.*


![ScriptResolue2](https://user-images.githubusercontent.com/76860503/113959265-e97e8a80-97f8-11eb-9d1c-b6b9088a6a03.png)

 Script que altera a resolução da sua tela de acordo com a escolha do usuário, podendo testar diversas sem problemas - mesmo que não tenha nas opções de seu monitor. 
 Ele funciona mais como uma simulação de resolução, após reiniciar a máquina a resolução volta ao padrão do monitor. Talvez eu estude alguma forma de fazer criar de maneira "definitiva".
 O script escaneia todas as entradas de video e te permite alterar a resolução dos monitores conectados. Use a opção personalizada do menu para especificar qual output do monitor quer e qual a resolução deseja alterar. Para saber qual o output do monitor, pode usar a opção de listagem e até ver a opção 'monitor principal' para saber o output dele e a sua resolução atual (é a mesma informação que o script já dá no scan da abertura do script, porém se a resolução já foi alterada, ele atualizará também). Além do mais, pode ver a opção de 'Informaçes' adicionada na penultima atualização, mostrando informações de todos os outputs.
 O objetivo foi criar um script que resolva alguns problemas de resolução de tela presentes em algumas situações, como com algumas aplicações. Um exemplo disso é caso precise de uma resolução maior para uma edição. Eu usei o shell para mudar a resolução da máquina e desbugar uma aplicação, daí tive a ideia de fzr isso de forma automatizada e disponibiliza-la para todos e para qlqr tipo de monitor, também sendo útil para outros tipos de situações.
 
 
### Informaçes adicionais; 
Versão atual: 2.0

  Notas de atualização:
  - Bugs que ocorriam foram corrigidos (Ainda não foi encontrado mais bug neste projeto, mas pode ocorrer);
  - Textos do cdigo alterados e corrigidos;
  - Estrutura do código toda organizada, arrumada e otimizada;
  - Agora em apenas uma opção já fará as funções necessárias de resolução, bastando digitar a resolução e o monitor dado no scan.
  - *Imagens do post ainda desatualizadas*

## Como usar?
###### Baixe o script -> botão direito nele -> propriedades -> permissões -> executar como um programa -> terminal: $ ./Resolue.sh
![permissão1](https://user-images.githubusercontent.com/76860503/113920112-c208cd00-97ba-11eb-9ea4-aee0342a3c30.png)
 
 O script terá uma aba de ajuda, onde mostra como e porque o programa foi feito, como utilizar o script da forma correta e como você pode fazer manualmente tudo o que o script faz, te dando os comandos caso o script não funcione na sua máquina por algum motivo ( parte: Faça você mesmo ).
 Para utilizar o script é necessário, obviamente, utilizar alguma distribuição Linux ou WSL. 
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
