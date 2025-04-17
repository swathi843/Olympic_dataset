SELECT
    country_code,
    country_long AS country,
    COUNT(*) AS total_coaches,
    SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS Female,
    SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) AS Male
FROM
    coaches
WHERE
    [function] = 'Head Coach'  
GROUP BY
    country_code,
    country_long
ORDER BY
    total_coaches DESC;



    WITH GenderCounts AS (
    SELECT
        country_code,
        country_long,
        gender,
        COUNT(*) AS gender_count
    FROM
        coaches
    WHERE
        [function] = 'Head Coach'  -- Escaped because "function" is a reserved word
    GROUP BY
        country_code,
        country_long,
        gender
)

SELECT
    country_code,
    country_long,
    SUM(CASE WHEN gender = 'Male' THEN gender_count ELSE 0 END) AS male_coaches,
    SUM(CASE WHEN gender = 'Female' THEN gender_count ELSE 0 END) AS female_coaches,
    SUM(gender_count) AS total_coaches
FROM
    GenderCounts
GROUP BY
    country_code,
    country_long
ORDER BY
    total_coaches DESC;

