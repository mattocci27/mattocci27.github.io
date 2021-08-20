
#remotes::install_github("jhelvy/xaringanBuilder")
#remotes::install_github('rstudio/chromote')

xaringanBuilder::build_pdf("data_handling.Rmd",
                           complex_slides = TRUE,
                           partial_slides = TRUE
)
