plotWordcloud <-
  function(data, dataM){
    require("RColorBrewer")
    require("wordcloud")
    
    totals = apply(dataM, 2, sum)
    return(wordcloud(words = getTerms(data), freq = totals, max.words=50,
              random.order=FALSE, random.color = TRUE, colors=brewer.pal(n=9,name="Set1"))
    
  }