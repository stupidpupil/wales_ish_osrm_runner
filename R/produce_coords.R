produce_coords <- function(){

  lsoa_trip_points <- st_read("data/lsoa11_nearest_road_points.geojson")

  dec_deg_round <- function(x){
    format(round(x, digits=5), nsmall=5)
  }

  lsoa_trip_points %>% 
    st_coordinates() %>% 
    as_tibble() %>%
    mutate(coord_string = paste0(dec_deg_round(X), ",", dec_deg_round(Y))) %>%
    pull(coord_string) %>%
    paste0(collapse=";") %>%
    write_file("data/coords.txt")
}