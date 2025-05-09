CREATE OR REPLACE VIEW DEV.SNOWCONVERT.austin_weather
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 5,  "patch": "0.0" }, "attributes": {  "component": "teradata",  "convertedOn": "05-08-2025",  "domain": "elait" }}'
AS
SELECT
    ROUND(AVG((temp - 273.15) * 9/5 + 32) ,0) AS AveTemp,
    SUM(CASE
        WHEN UPPER(RTRIM(weather_main)) in (UPPER(RTRIM('Rain')), UPPER(RTRIM('Mist')))
            THEN 1
            ELSE 0
    END) AS Precip_hours
FROM
    DEV.SNOWCONVERT.weather
GROUP BY 1;

