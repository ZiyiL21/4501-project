
SELECT strftime("%H", pickup_datetime) AS hours,
COUNT(*) AS hour_frequency
FROM taxi_trips
GROUP BY hours
ORDER BY hour_frequency desc
