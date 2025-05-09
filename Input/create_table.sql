------------------------------------------------------------------------------------------------------------

-- Description: The code creates a view PERIOD_OVERLAP_LDIFF that selects employees from EMPLOYEE_JOB_PERIODS whose JOB_DURATION either overlaps,
--      is left-different by more than 3 months, or has a right difference with a specified period from '2009-01-01' to '2010-09-24'.
--      Each selection is labeled with 'OVERLAP', 'LDIFF', or 'RDIFF'.

-- SnowConvert Features: Period-related functions: Overlaps, RDiff, and LDiff.

------------------------------------------------------------------------------------------------------------

CREATE TABLE SNOWCONVERT.weather_temporal (
    begin_dt      TIMESTAMP(6) NOT NULL,
    end_dt        TIMESTAMP(6) NOT NULL,
    temp          FLOAT,
    temp_min      FLOAT,
    temp_max      FLOAT,
    pressure      INTEGER,
    humidity      INTEGER,
    wind_speed    INTEGER,
    wind_deg      INTEGER,
    rain_1h       FLOAT,
    rain_3h       FLOAT,
    clouds        INTEGER,
    weather_id    INTEGER,
    weather_main  VARCHAR(50),
    weather_desc  VARCHAR(50),
    weather_icon  VARCHAR(50),
    PERIOD FOR Weather_Duration(begin_dt,end_dt) AS VALIDTIME
)
PRIMARY INDEX (weather_id);