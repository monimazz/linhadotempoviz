#' Uma função que arruma uma objeto plotly para torná-lo mais visual
#' @param data as input to time series
#'@import
#'@import linhadotempoviz
#'@return retorna a visualização interativa
#'@examples
#'linha_interativa(notten)



linha_interativa <- function(objetoplotly){
  objetoplotly %>%
    layout(xaxis = list(rangeslider = list(type = "date"))) %>%
    config(displaylogo = FALSE) %>%
    config(modeBarButtonsToRemove = c('lasso2d', 'select2d', 'zoom2d')) %>%
    config(
      toImageButtonOptions = list(
        format = "png"
      )
    )

}
