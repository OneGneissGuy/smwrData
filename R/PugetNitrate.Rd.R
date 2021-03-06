#' Groundwater Quality
#' 
#' Selected groundwater nitrate and ancillary data collected near Puget Sound,
#' Washington.
#' 
#' 
#' @name PugetNitrate
#' @docType data
#' @usage PugetNitrate
#' @format Data frame with 1967 rows and 8 columns\cr
#' \tabular{lll}{ 
#' Name \tab Type \tab Description\cr\cr
#' wellid \tab integer \tab Well identification number\cr
#' l10 \tab numeric \tab Percent urban land use wthin 3.2 km of well\cr
#' l20 \tab numeric \tab Percent agricultural land use wthin 3.2 kilometers of well\cr
#' l40 \tab numeric \tab Percent Forested land wthin 3.2 kilometers of well\cr
#' surfgeo \tab character \tab Description of surficial geology at well\cr
#' date \tab Date \tab Sample date\cr
#' nitrate \tab numeric \tab Nitrate concentration, in milligrams per liter\cr
#' wellmet \tab numeric \tab Well depth, in meters\cr
#' } For \code{surfgeo}, "Fine" and "Coarse"
#' refer to fine-grained and coarse-grained glacial deposits.\cr
#' Some censored
#' nitrate concentrations are recorded as 0 in \code{nitrate} but the original
#' data had multiple reporting levels of 0.05, 0.1, an 0.2. Therefore, all
#' values less than or equal to 0.2 should be considered potentially censored.
#' @references Tesoriero, A.J., and Voss, F.D., 1997, Predicting the
#' probability of elevated nitrate concentrations in the Puget Sound
#' Basin---Implications for aquifer susceptibility and vulnerability:
#' Groundwater, v. 35, no. 6, p. 1029--1039.
#' @source Data provided by Jim Tesoriero.
#' @keywords datasets
#' @examples
#' 
#' \dontrun{
#' data(PugetNitrate)
#' # Suppress plotting the high value of 732 in Coarse
#' with(PugetNitrate, boxplot(split(pmin(nitrate, 50), surfgeo)))
#' }
NULL