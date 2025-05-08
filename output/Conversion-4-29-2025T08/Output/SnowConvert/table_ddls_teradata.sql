--** SSC-FDM-TD0024 - SET TABLE FUNCTIONALITY NOT SUPPORTED. TABLE MIGHT HAVE DUPLICATE ROWS **
CREATE OR REPLACE TABLE DEV.SNOWCONVERT.trips
(
    bikeid INTEGER,
    checkout_time VARCHAR(50),
    duration_minutes INTEGER,
    end_station_id INTEGER,
    end_station_name VARCHAR(100),
    MONTH_NUM INTEGER,
    start_station_id INTEGER,
    start_station_name VARCHAR(100),
    start_time TIMESTAMP(6),
    subscriber_type VARCHAR(50),
    trip_id BIGINT,
    YEAR_NUM INTEGER)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 5,  "patch": "0.0" }, "attributes": {  "component": "teradata",  "convertedOn": "05-08-2025",  "domain": "elait" }}'
;

--** SSC-FDM-TD0024 - SET TABLE FUNCTIONALITY NOT SUPPORTED. TABLE MIGHT HAVE DUPLICATE ROWS **
CREATE OR REPLACE TABLE DEV.SNOWCONVERT.Weather
(
    dt TIMESTAMP(6),
    temp FLOAT,
    temp_min FLOAT,
    temp_max FLOAT,
    pressure INTEGER,
    humidity INTEGER,
    wind_speed INTEGER,
    wind_deg INTEGER,
    rain_1h FLOAT,
    rain_3h FLOAT,
    clouds INTEGER,
    weather_id INTEGER,
    weather_main VARCHAR(50),
    weather_desc VARCHAR(50),
    weather_icon VARCHAR(50)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 5,  "patch": "0.0" }, "attributes": {  "component": "teradata",  "convertedOn": "05-08-2025",  "domain": "elait" }}'
;

--** SSC-FDM-TD0024 - SET TABLE FUNCTIONALITY NOT SUPPORTED. TABLE MIGHT HAVE DUPLICATE ROWS **
CREATE OR REPLACE TABLE DEV.SNOWCONVERT.stations
(
    latitude DECIMAL(18,5),
    longitude DECIMAL(18,5),
    location GEOGRAPHY,
    name VARCHAR(100),
    station_id INTEGER,
    status VARCHAR(50)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 5,  "patch": "0.0" }, "attributes": {  "component": "teradata",  "convertedOn": "05-08-2025",  "domain": "elait" }}'
;

CREATE OR REPLACE TABLE DEV.SNOWCONVERT.weather_temporal (
    begin_dt TIMESTAMP(6) NOT NULL,
    end_dt TIMESTAMP(6) NOT NULL,
    temp FLOAT,
    temp_min FLOAT,
    temp_max FLOAT,
    pressure INTEGER,
    humidity INTEGER,
    wind_speed INTEGER,
    wind_deg INTEGER,
    rain_1h FLOAT,
    rain_3h FLOAT,
    clouds INTEGER,
    weather_id INTEGER,
    weather_main VARCHAR(50),
    weather_desc VARCHAR(50),
    weather_icon VARCHAR(50)
   )
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 5,  "patch": "0.0" }, "attributes": {  "component": "teradata",  "convertedOn": "05-08-2025",  "domain": "elait" }}'
;

