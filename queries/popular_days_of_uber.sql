
SELECT strftime("%w", pickup_datetime) AS days,
COUNT(*) AS day_frequency
FROM uber_trips
GROUP BY days
ORDER BY day_frequency desc

