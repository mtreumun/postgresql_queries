--actividad del servidor

SELECT
  pid,
  now() - pg_stat_activity.query_start AS duration,
  query,
  state
FROM pg_stat_activity
WHERE (now() - pg_stat_activity.query_start) > interval '1 minutes'
ORDER BY state

--seleccionar y kill process

SELECT pg_terminate_backend(27424);
SELECT pg_terminate_backend(24424);
SELECT pg_terminate_backend(18769);
SELECT pg_terminate_backend(24661);

--tamaño de database
SELECT pg_size_pretty( pg_database_size('gis'));
