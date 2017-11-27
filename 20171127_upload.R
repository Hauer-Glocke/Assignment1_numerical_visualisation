df <- read.csv(url("https://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.csv"),
                              skip=1)
df[df=="***"] <- NA
df <- as.data.frame(sapply(df, as.numeric))

