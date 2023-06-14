select
qls_ts,
CASE

--'America/Los_Angeles'
    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time
    AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10
    AND date_part('doy', qls_ts) - date_part('dow', qls_ts) >= 60
    AND date_part('doy', qls_ts) - date_part('dow', qls_ts) <= 305
    THEN 'PDT'

    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time
    AND (date_part('month', qls_ts) < 3 OR date_part('month', qls_ts) > 10
    OR date_part('doy', qls_ts) - date_part('dow', qls_ts) < 60
    OR date_part('doy', qls_ts) - date_part('dow', qls_ts) > 305)
    THEN 'PST'

    
--'America/Denver'
    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time
      AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10
      AND date_part('doy', qls_ts) - date_part('dow', qls_ts) >= 60
      AND date_part('doy', qls_ts) - date_part('dow', qls_ts) <= 304
    THEN 'MDT'

    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time
      AND (date_part('month', qls_ts) < 3 OR date_part('month', qls_ts) > 10
      OR date_part('doy', qls_ts) - date_part('dow', qls_ts) < 60
      OR date_part('doy', qls_ts) - date_part('dow', qls_ts) > 304)
    THEN 'MST'

--'America/Chicago'    
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 11 THEN 'CST' 
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 11 AND date_part('day', qls_ts) <= 7 AND date_part('dow', qls_ts) = 1 THEN 'CDT' 
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 3 THEN 'CDT' 
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 3 AND date_part('day', qls_ts) >= 8 AND date_part('dow', qls_ts) = 1 THEN 'CST' 
    

--'America/New_York' 
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time
      AND (
        (date_part('month', qls_ts) = 3 AND date_part('day', qls_ts) >= 14)
        OR (date_part('month', qls_ts) > 3 AND date_part('month', qls_ts) < 11)
        OR (date_part('month', qls_ts) = 11 AND date_part('day', qls_ts) < 7)
      )
    THEN 'EDT'
    
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time
      AND (
        (date_part('month', qls_ts) < 3)
        OR (date_part('month', qls_ts) = 3 AND date_part('day', qls_ts) < 14)
        OR (date_part('month', qls_ts) = 11 AND date_part('day', qls_ts) >= 7)
        OR (date_part('month', qls_ts) > 11)
      )
    THEN 'EST'

    WHEN CONVERT_TIMEZONE('America/Phoenix', qls_ts)::time = qls_ts::time THEN 'MST'
    WHEN CONVERT_TIMEZONE('America/Regina', qls_ts)::time = qls_ts::time THEN 'CST'
    WHEN CONVERT_TIMEZONE('America/Yellowknife', qls_ts)::time = qls_ts::time THEN 'MDT'
    WHEN CONVERT_TIMEZONE('America/Iqaluit', qls_ts)::time = qls_ts::time THEN 'EDT'
    WHEN CONVERT_TIMEZONE('America/Whitehorse', qls_ts)::time = qls_ts::time THEN 'PDT'
    WHEN CONVERT_TIMEZONE('America/Rainy_River', qls_ts)::time = qls_ts::time THEN 'CDT'
    WHEN CONVERT_TIMEZONE('America/Cambridge_Bay', qls_ts)::time = qls_ts::time THEN 'MDT'
    WHEN CONVERT_TIMEZONE('America/Fort_Nelson', qls_ts)::time = qls_ts::time THEN 'MST'
    WHEN CONVERT_TIMEZONE('America/Atikokan', qls_ts)::time = qls_ts::time THEN 'EDT'
    WHEN CONVERT_TIMEZONE('America/Nipigon', qls_ts)::time = qls_ts::time THEN 'EDT'
    WHEN CONVERT_TIMEZONE('America/Blanc-Sablon', qls_ts)::time = qls_ts::time THEN 'EDT'
    WHEN CONVERT_TIMEZONE('America/Miquelon', qls_ts)::time = qls_ts::time THEN 'PM'
    WHEN CONVERT_TIMEZONE('America/Glace_Bay', qls_ts)::time = qls_ts::time THEN 'ADT'

ELSE 'Unknow'
end as col2
from SAMPLE_TABLE;
