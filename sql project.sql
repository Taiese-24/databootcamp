-- SQL exercise 1

SELECT * FROM data_project.education;

-- Count of Prefered_social_media_platform
SELECT COUNT(*)
FROM data_project.education
WHERE Prefered_social_media_platform = 'Youtube';

SELECT COUNT(*)
FROM data_project.education
WHERE Prefered_social_media_platform = 'Whatsapp';

SELECT COUNT(*)
FROM data_project.education
WHERE Prefered_social_media_platform = 'Instagram';

-- Count of total number of prefered social media

SELECT Prefered_social_media_platform, COUNT(*)
FROM data_project.education
GROUP BY Prefered_social_media_platform
ORDER BY 2 DESC;

SELECT * FROM data_project.education 
WHERE Age_of_Subject < 18;

SELECT Age_of_Subject, COUNT(*)
FROM data_project.education
WHERE Age_of_Subject < 18;

-- If Age_of_Subject is less than 18 categorise as '7-17yrs (Children)', if between 18-22 (Youths) and 23-59(Adults)
 SELECT 
    Age_of_Subject,
    CASE
        WHEN Age_of_Subject < 18 THEN '7-17yrs (Children)'
        WHEN Age_of_Subject BETWEEN 18 AND 22 THEN '18-22yrs (Youths)'
        WHEN Age_of_Subject BETWEEN 23 AND 59 THEN '23-59yrs (Adults)'
    END AS 'Learners_age_category'
FROM
    data_project.education
ORDER BY 1 DESC;


SELECT * FROM data_project.education;

ALTER TABLE data_project.education
ADD Learners_age_category VARCHAR(200);

SELECT COUNT(*) FROM data_project.education WHERE Learners_age_category= '23-59yrs (Adults)';

select Rating_of_Online_Class_experience AS 'Rating of Online Class experience',
COUNT(Rating_of_Online_Class_experience) AS 'COUNT_of_Online_Class_experience',
AVG(Time_spent_on_social_media) AS 'Average of time spent on SM'
FROM data_project.education
GROUP BY Rating_of_Online_Class_experience
ORDER BY 3 DESC;

-- 
select Prefered_social_media_platform AS 'Prefered SM platform',
COUNT(Prefered_social_media_platform) AS 'The count of SM in data',
AVG(Time_spent_on_social_media) AS 'Average of time spent on SM'
FROM data_project.education
GROUP BY Prefered_social_media_platform
ORDER BY 3 DESC;

