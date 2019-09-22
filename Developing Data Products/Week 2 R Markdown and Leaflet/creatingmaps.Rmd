library(leaflet)
my_map <- leaflet() %>% addTiles() 
my_map <- my_map %>% addMarkers(lat=43.1594, lng= -79.2469, popup="My Office")
my_map
