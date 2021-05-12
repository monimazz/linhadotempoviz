# linhadotempoviz

Modelo inicial de pacote para visualização de linha do tempo. 
Possui algumas exigências:
- todos os parâmetros devem ser preenchidos
- você precisa pré estabelecer a posição dos pontos na linha através da base de dados que será trabalhada
- os dados precisam estar em formato `date`, para isso recomendo transformar a data com a função as.Date


Para linha do tempo funcionar você precisa dos seguintes campos
- data
- posição: onde estarão localizadas seus pontos de acontecimento.
- cor: cor das bolinhas segundo critério
- primeira informação: informações que irão aparecer na sua linha final
- segunda informação: informações que irão aparecer na sua linha final
- Titulo, nome x, nome y e legenda: para fins da visualização final você deve der um nome aos eixos

Para instalar:
```
devtools::install_github("monimazz/linhadotempoviz")
```

Exemplo:
```
viz_tempo(base_dados = dados, datas = data_certa, posicao_eixo = posicao_semcriterio, 
cor = cor_favorecido, primeira_informacao = Juiz, segunda_informacao = `Tema/Cor`, 
titulo = "Linha do tempo", nomey = "Acontecimentos", nomex = "Tempo", legenda = "Tipo")
```
