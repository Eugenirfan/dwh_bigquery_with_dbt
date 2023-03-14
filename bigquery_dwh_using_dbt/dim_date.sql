SELECT 
FORMAT_DATE('%F', d) as id,
d AS FUll_DATE,
EXTRACT(Year FROM d) AS Year,
EXTRACT(Week FROM d) AS Year_week,
EXTRACT(Day FROM d) AS Year_day,
EXTRACT(Year FROM d) AS fiscal_Year,
FORMAT_DATE('%Q', d) as fiscal_qtr,
EXTRACT(Month FROM d) AS Month,
FORMAT_DATE('%B', d) as month_name,
FORMAT_DATE('%w', d) as week_day,
FORMAT_DATE('%A', d) as day_name,
(CASE WHEN FORMAT_DATE('%A', d) IN ('Sunday', 'Saturday') THEN 0 ELSE 1 END) AS day_is_weekday,
FROM (
  SELECT
  *
  FROM
    UNNEST(GENERATE_DATE_ARRAY('2014-01-01', '2050-01-01', INTERVAL 1 DAY)) AS d)