library(dplyr)

allnodes <- readRDS("data/nodes.rds")
allnodes$latitude <- jitter(allnodes$latitude)
allnodes$longitude <- jitter(allnodes$longitude)
allnodes$college <- allnodes$college * 100
allnodes$zipcode <- formatC(allnodes$zipcode, width=5, format="d", flag="0")
row.names(allnodes) <- allnodes$zipcode

cleantable <- allnodes %>%
  select(
    City = city.x,
    State = state.x,
    Lat = latitude,
    Long = longitude
  )