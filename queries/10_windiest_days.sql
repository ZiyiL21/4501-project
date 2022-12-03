
WITH hired_trips AS
(
    SELECT pickup_datetime AS date
    FROM taxi_trips
    
    UNION ALL
    
    SELECT pickup_datetime AS date
    FROM uber_trips
)

SELECT DATE(date), COUNT(*) AS number_of_hired_trips
FROM hired_trips
GROUP BY DATE(date)
HAVING DATE(date) IN (
SELECT DATE FROM daily_weather 
WHERE DATE BETWEEN "2014-01-01" AND "2014-12-31"
ORDER BY DailyWindSpeed desc 
LIMIT 10
)

