
    library(jsonlite)
    library(ranger)
    library(dplyr)
    library(readr)
    readRDS('model_conversion.RData')
    library(scales)

#* @get /score
function(){
    data.score <- fromJSON('sample_user.json')
    paste('Predicted Conversion:', percent(predict(model.conversion, data.score)$predictions[,2]))
}


