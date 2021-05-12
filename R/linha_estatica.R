#' Uma função que retorna uma visualização de linha do tempo estática
#' @param data as input to time series
#'@import ggplot2
#'@return retorna a visualização p
#'@export
#'@examples
#'linha_estatica(notten)




linha_estatica <- function(base_dados,datas,posicao_eixo, cor_bolinhas,
                           primeira_informacao, segunda_informacao,
                           titulo, nomex, nomey, legenda){
  ggplot(data = base_dados, aes(y={{posicao_eixo}}, x={{datas}})) +
    geom_segment(aes(y={{posicao_eixo}},yend=0, xend={{datas}}),
                 size=0.2, color = "grey") +
    geom_hline(yintercept=0, color = "black", size=0.3) +
    geom_point(aes(color= {{cor_bolinhas}},
                   text = paste0({{datas}}, "<br>",
                                 {{cor_bolinhas}}, "<br>",
                                 {{primeira_informacao}}, "<br>",
                                 {{segunda_informacao}}))) +
    scale_size(range = c(2, 5.5))+
    theme_minimal(base_family = "Calibri", base_size = 14) +
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank(),
          plot.subtitle = element_text(face = "italic", size = 14),
          axis.ticks.y = element_blank(),
          axis.text.y = element_blank())+
    scale_color_viridis_d() +
    labs(title = titulo, x = nomex, y = nomey, color = legenda) +
    scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
    guides(size=FALSE) -> p
  plot(p)

}
