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
    weather_desc VARCHAR(50)
   );