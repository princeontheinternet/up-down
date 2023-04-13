SELECT
  qls_id,
  CONVERT_TIMEZONE('UTC', qls_ts) AS qls_ts_utc,
  qls_ts,
  CASE
    WHEN tzdata.is_dst('America/New_York', EXTRACT(year FROM qls_ts)::int, qls_ts) THEN 
      CASE
        WHEN date_part('hour', qls_ts) >= 2 AND date_part('hour', qls_ts) <= 8 THEN 'EDT'
        ELSE 'EST'
      END
    WHEN tzdata.is_dst('America/Chicago', EXTRACT(year FROM qls_ts)::int, qls_ts) THEN 
      CASE
        WHEN date_part('hour', qls_ts) >= 2 AND date_part('hour', qls_ts) <= 8 THEN 'CDT'
        ELSE 'CST'
      END
    WHEN tzdata.is_dst('America/Denver', EXTRACT(year FROM qls_ts)::int, qls_ts) THEN 
      CASE
        WHEN date_part('hour', qls_ts) >= 2 AND date_part('hour', qls_ts) <= 8 THEN 'MDT'
        ELSE 'MST'
      END
    WHEN tzdata.is_dst('America/Los_Angeles', EXTRACT(year FROM qls_ts)::int, qls_ts) THEN 
      CASE
        WHEN date_part('hour', qls_ts) >= 2 AND date_part('hour', qls_ts) <= 8 THEN 'PDT'
        ELSE 'PST'
      END
    ELSE 'Unknown Timezone'
  END AS qls_timezone
FROM
  qls_table;