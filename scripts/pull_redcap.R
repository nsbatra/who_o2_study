
# Pull data from RedCap API

pacman::p_load(here, rio, janitor, httr, tidyverse)

# Import records - observational study
################
#!/usr/bin/env Rscript
token <- 
url <- "https://extranet.who.int/edcrc/api/"
formData <- list("token"=token,
                 content='record',
                 format='csv',
                 type='flat',
                 csvDelimiter='',
                 #'records[0]'='36',
                 rawOrLabel='raw',
                 rawOrLabelHeaders='raw',
                 exportCheckboxLabel='false',
                 exportSurveyFields='false',
                 exportDataAccessGroups='false',
                 returnFormat='json'
)
response <- httr::POST(url, body = formData, encode = "form")
result <- httr::content(response)
print(result)

