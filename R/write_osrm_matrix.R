write_osrm_matrix <- function(){
  translate_osrm_json_to_matrix() %>% write_csv("output/arrive_by_0900_driving.csv")

  add_matrix_to_index_json(list(
    path = "arrive_by_0900_driving.csv",
    units = "minutes",
    name = paste0("Driving, arriving by 09:00"),
    mode = "driving",
    time_ref_type = "arrive_by",
    time_ref = lubridate::now(tz="Europe/London") %>% update(hours=9, minutes=0, seconds=0) %>% lubridate::format_ISO8601(usetz = TRUE),
    license = "ODbL-1.0",
    license_ref = "https://github.com/stupidpupil/wales_ish_osrm_runner/tree/matrix-releases#licence"
  ))

}