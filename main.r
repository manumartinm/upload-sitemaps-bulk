library(searchConsoleR)
library(dplyr)
library(ggplot2)

sitemaps <- readLines('sitemaps.txt', warn=FALSE)

scr_auth()

website <- "https://sample.com"

for(sitemap in sitemaps){
  add_sitemap(website, sitemap)
  sys.sleep(1)
}