# ResolueSH

![resolueshV1](https://user-images.githubusercontent.com/76860503/113920807-a5b96000-97bb-11eb-81a7-0c59ad002591.png)

 Script que altera a resolução da sua tela de acordo com a escolha do usuário, podendo testar diversas resoluções sem problemas, mesmo que não tenha nas opções de seu monitor. Ele funciona mais como uma simulação de resolução, ou seja, após reiniciar a máquina a resolução volta ao padrão. Ele escaneia todas as entradas de video e te permite alterar a resolução dos monitores conectados.
 O objetivo foi criar um script que resolva alguns problemas de resolução de tela presentes em algumas situações, como com algumas aplicações. Um exemplo disso é com o editor de vídeo Davinci Resolve ficando bugado em monitores de resolução menor (com esse script ele ficará em tela cheia normal se por uma resolução mais alta). 
 Eu usei o shell para mudar a resolução da máquina e desbugar a aplicação, daí tive a ideia de fzr isso de forma automatizada e disponibiliza-la para todos e para qlqr tipo de monitor.
 
 
#### Mais sobre o script; 
Versão atual: 1.0
  - Ainda falta mudar a questão de mudar a resolução pra todos os monitores de uma vez (Assim foi feito para alterar a resolução pra qlqr pessoa sem problemas)
  - A ideia será criar uma nova opção no menu em que a pessoa vai escolher o tipo do monitor (ex: VGA-0 ) e também a resolução. Seria outra opção personalizada.
  - Não foi encontrado mais bugs neste projeto.
 
## Como usar?
![permissão1](https://user-images.githubusercontent.com/76860503/113920112-c208cd00-97ba-11eb-9ea4-aee0342a3c30.png)
 
 O script terá uma aba de ajuda, onde mostra como e porque o programa foi feito, como utilizar o script da forma correta e como você pode fazer manualmente tudo o que o script faz, te dando os comandos caso o script não funcione na sua máquina por algum motivo.
 Para utilizar o script é necessário, obviamente, utilizar alguma distribuição Linux (Ainda não testado no WSL2). 
Depois será importante dar permissão para o arquivo poder ser executado como um script. Basta clicar com o boto direito, ir em permissões e selecionar que esse arquivo pode ser um executável como um programa. Também pode ser feito com o comando 'chmod +x resoluesh.sh' dentro da basta onde ele se encontra, pelo terminal.
![permissão2](https://user-images.githubusercontent.com/76860503/113920464-317ebc80-97bb-11eb-84cb-aee1f503b0bf.png)

### Créditos
Autor: Matheus Laidler; 
Licença MIT; 
Feito em Shell Script; 
