SELECT 
    country,
    country_code,
    COUNT(*) AS total_athletes,
    SUM(Gold_Medals) AS gold,
    SUM(Silver_Medals) AS silver,
    SUM(Bronze_Medals) AS bronze,
    SUM(total_medals) AS total_medals,
    COUNT(DISTINCT CASE WHEN gender = 'Female' THEN code_athlete END) AS female_athletes,
    COUNT(DISTINCT CASE WHEN gender = 'Male' THEN code_athlete END) AS male_athletes
FROM 
    medallists_with_totals
WHERE 
    is_medallist = 'true'
GROUP BY 
    country, country_code
ORDER BY 
    total_medals DESC;
