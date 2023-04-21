select
qls_ts,
CASE

    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'PST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'PST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'PDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Los_Angeles', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'PDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)

    
    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'MST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'MST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'MDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Denver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'MDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)

    
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 11 THEN 'CST' -- before daylight saving time starts
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 11 AND date_part('day', qls_ts) <= 7 AND date_part('dow', qls_ts) = 1 THEN 'CDT' -- first Sunday in November
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 3 THEN 'CDT' -- after daylight saving time starts
    WHEN CONVERT_TIMEZONE('America/Chicago', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) = 3 AND date_part('day', qls_ts) >= 8 AND date_part('dow', qls_ts) = 1 THEN 'CST' -- second Sunday in March
    
    

    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'EST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'EST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'EDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/New_York', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'EDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)

  
    WHEN CONVERT_TIMEZONE('America/Phoenix', qls_ts)::time = qls_ts::time THEN 'MST'

    
    WHEN CONVERT_TIMEZONE('America/Detroit', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'EST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Detroit', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'EST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Detroit', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'EDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Detroit', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'EDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)



    
    WHEN CONVERT_TIMEZONE('America/Indiana/Indianapolis', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'EST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Indiana/Indianapolis', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'EST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Indiana/Indianapolis', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'EDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Indiana/Indianapolis', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'EDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)

    WHEN CONVERT_TIMEZONE('America/Toronto', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'EST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Toronto', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'EST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Toronto', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'EDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Toronto', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'EST' -- end of daylight saving time (first Sunday in November at 1:00 AM)
    

    WHEN CONVERT_TIMEZONE('America/Vancouver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) < 3 THEN 'PST' -- before daylight saving time begins
    WHEN CONVERT_TIMEZONE('America/Vancouver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) > 10 THEN 'PST' -- after daylight saving time ends
    WHEN CONVERT_TIMEZONE('America/Vancouver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 2 THEN 'PDT' -- start of daylight saving time (second Sunday in March at 2:00 AM)
    WHEN CONVERT_TIMEZONE('America/Vancouver', qls_ts)::time = qls_ts::time AND date_part('month', qls_ts) >= 3 AND date_part('month', qls_ts) <= 10 AND extract('dow', qls_ts) = 0 AND extract(hour from qls_ts) = 1 THEN 'PDT' -- end of daylight saving time (first Sunday in November at 1:00 AM)

    
    
    WHEN CONVERT_TIMEZONE('America/Regina', qls_ts)::time = qls_ts::time THEN 'CST'
    WHEN CONVERT_TIMEZONE('America/Winnipeg', qls_ts)::time = qls_ts::time THEN 'CDT'
    WHEN CONVERT_TIMEZONE('America/Edmonton', qls_ts)::time = qls_ts::time THEN 'MDT'
    WHEN CONVERT_TIMEZONE('America/Halifax', qls_ts)::time = qls_ts::time THEN 'ADT'
    WHEN CONVERT_TIMEZONE('America/St_Johns', qls_ts)::time = qls_ts::time THEN 'NDT'
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
END AS QLS_TZ
FROM MYTABLE;
