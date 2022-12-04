
WITH hired_trips AS
(
    SELECT pickup_datetime, distance FROM taxi_trips
    WHERE pickup_datetime BETWEEN "2013-07-01 00:00:00" AND "2013-07-31 23:59:59"
    UNION ALL
    SELECT pickup_datetime, distance FROM uber_trips
    WHERE pickup_datetime BETWEEN "2013-07-01 00:00:00" AND "2013-07-31 23:59:59"
)

SELECT distance
FROM hired_trips
ORDER BY distance desc

LIMIT 1
OFFSET (SELECT COUNT(*) FROM hired_trips) * 5/100 

