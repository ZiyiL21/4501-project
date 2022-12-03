
WITH hired_trips AS
(
    SELECT strftime('%Y-%m-%d %H', pickup_datetime) AS date
    FROM taxi_trips
    WHERE pickup_datetime BETWEEN "2012-10-22 00:00:00" AND "2012-11-06 23:59:59"
    
    UNION ALL
    
    SELECT strftime('%Y-%m-%d %H', pickup_datetime) AS date
    FROM uber_trips
    WHERE pickup_datetime BETWEEN "2012-10-22 00:00:00" AND "2012-11-06 23:59:59"
)

SELECT strftime('%Y-%m-%d %H', hw.date) AS hour, count(ht.date) AS number_of_hired_trips, hw.HourlyWindSpeed, hw.HourlyPrecipitation
FROM hourly_weather hw LEFT JOIN hired_trips ht
ON hour = ht.date
WHERE hw.date BETWEEN "2012-10-22 00:00:00" AND "2012-11-06 23:59:59"
GROUP BY hour
