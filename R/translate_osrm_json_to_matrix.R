translate_osrm_json_to_matrix <- function(){
  osrm_json <- jsonlite::fromJSON("data/output.json")
  lsoa_trip_points <- st_read("data/lsoa11_nearest_road_points.geojson")

  duration_seconds <- osrm_json$durations %>% as_tibble()

  colnames(duration_seconds) <- lsoa_trip_points$LSOA11CD
  duration_seconds %>%
    mutate_all(~ as.integer(./60)) %>%
    mutate(from_id = lsoa_trip_points$LSOA11CD) %>%
    relocate(from_id)
}

