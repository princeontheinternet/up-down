WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 11 THEN 'CST' -- before daylight saving time starts
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 11 AND date_part('day', qls_ts) <= 7 AND date_part('dow', qls_ts) = 1 THEN 'CDT' -- first Sunday in November
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 3 THEN 'CDT' -- after daylight saving time starts
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 3 AND date_part('day', qls_ts) >= 8 AND date_part('dow', qls_ts) = 1 THEN 'CST' -- second Sunday in March
    
 WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'EST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'EST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'EDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'EDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)
