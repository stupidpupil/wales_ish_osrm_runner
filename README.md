# Methodology

These driving-time travel time matrices show driving times between [LSOA11 Trip-points](https://github.com/stupidpupil/wales_lsoa_trip_points).

These times are generated using [OpenStreetMap (OSM) road network data](https://www.openstreetmap.org/) 
and the [Open Source Routing Machine (OSRM)](https://github.com/Project-OSRM/osrm-backend).

## Car Speeds
Car speeds are taken from the Department for Transport's 
[Journey Time Statistics: Notes Definitions](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/853603/notes-and-definitions.pdf#page=6)
and reflect average traffic speeds on different types of roads in the "morning peak" between 7 and 10am in 2017.

The table below shows the speeds and how they're mapped on to [OpenStreetMap's `highway` tags](https://wiki.openstreetmap.org/wiki/Roads_in_the_United_Kingdom) in OSRM.

| DfT Type of Road                    | OSM `highway` Tags        | km/h | mph  |
|-------------------------------------|---------------------------|------|------|
| Motorway                            | motorway                  | 77.6 | 48.1 |
| A road                              | trunk, primary            | 43.2 | 26.8 |
| B road                              | secondary                 | 41.9 | 26.0 |
| Minor road                          | tertiary                  | 36.3 | 22.6 |
| Local street                        | unclassified, residential | 18.3 | 11.4 |
| Private road -<br>restricted access | service                   | 15.3 | 9.5  |

# Licence

These driving-time travel time matrices are made available under the [ODbL v1.0](https://opendatacommons.org/licenses/odbl/1-0/) by Adam Watkins.

They are derived from:
- street map information obtained from [OpenStreetMap contributors](https://www.openstreetmap.org/copyright), via [Geofabrik.de](https://download.geofabrik.de/europe/great-britain.html), under the [ODbL v1.0](https://opendatacommons.org/licenses/odbl/1-0/),
- [LSOA11 Population-Weighted Centroids](https://geoportal.statistics.gov.uk/datasets/ons::lower-layer-super-output-areas-december-2011-population-weighted-centroids/about) and [LSOA11 Boundaries](https://geoportal.statistics.gov.uk/datasets/ons::lower-layer-super-output-areas-december-2011-boundaries-super-generalised-clipped-bsc-ew-v3/about) obtained from the [ONS Open Geography Portal](https://geoportal.statistics.gov.uk/), under the [OGL v3.0](https://www.ons.gov.uk/methodology/geography/licences) and containing OS data (Crown copyright and database right 2021), and
- [average car speeds](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/853603/notes-and-definitions.pdf#page=6) obtained from the Department for Transport, under the [OGL v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

