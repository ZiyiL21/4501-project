
WITH hired_trips AS
(
    SELECT pickup_datetime, distance FROM taxi_trips
    WHERE pickup_datetime BETWEEN "2009-01-01 00:00:00" AND "2009-12-31 23:59:59"
    UNION ALL
    SELECT pickup_datetime, distance FROM uber_trips
    WHERE pickup_datetime BETWEEN "2009-01-01 00:00:00" AND "2009-12-31 23:59:59"
)

SELECT DATE(pickup_datetime) AS dates,
AVG(distance) AS average_distance,
COUNT(*) AS number_of_hired_rides

FROM hired_trips

GROUP BY dates
ORDER BY number_of_hired_rides desc

LIMIT 10

