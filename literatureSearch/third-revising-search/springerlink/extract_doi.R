dataFile = read.csv("all.csv",header= TRUE);
dois <- dataFile["Item.DOI"]

print(dois, right = FALSE, row.names = FALSE)
