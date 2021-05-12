#' Uma função que retorna uma visualização de linha do tempo interativa diretamente através dos dados
#' @param data as input to time series
#'@import
#'@import linhadotempoviz
#'@import plotly
#'@return retorna a visualização interativa direto
#'@examples
#'linha_interativa(notten)


viz_tempo <- function(base_dados, datas, posicao_eixo, cor, primeira_informacao, segunda_informacao, titulo, nomex, nomey, legenda) {
  p <- linha_estatica(base_dados = base_dados, datas = {{datas}}, posicao_eixo = {{posicao_eixo}}, cor_bolinhas = {{cor}}, primeira_informacao = {{primeira_informacao}}, segunda_informacao = {{segunda_informacao}}, titulo = titulo, nomex = nomex, nomey = nomey, legenda = legenda)
  g <- ggplotly(p, tooltip = "text")
  linha_interativa(g)
}
