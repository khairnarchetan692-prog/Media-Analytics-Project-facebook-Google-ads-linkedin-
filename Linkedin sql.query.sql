create database linkedin;
use linkedin;
-- 1.Total post--
SELECT 
    COUNT(*) AS TotalPosts
FROM 
    linkedin_data;
    
    -- 2.Total Views--
    SELECT 
    SUM(views) AS TotalViews
FROM 
    linkedin_data;
    
    -- 3a.Total comments--
SELECT 
    SUM(Comments) AS TotalComments
FROM 
    linkedin_data;
    
    -- 3b.Total Reactions--
    SELECT 
    SUM(Reactions) AS TotalReactions
FROM 
    linkedin_data;
    
    -- 3c.Total Reposts--
    SELECT 
    SUM(Reposts) AS TotalReposts
FROM 
    linkedin_data;
    
    -- 4.Engagement Rate%--
SELECT 
    (SUM(Reactions + Comments + Reposts) * 100.0 / SUM(Followers)) AS EngagementRatePercentage
FROM 
    linkedin_data;

	-- 5.Best Day to Post
SELECT
PostTopic,
        (Reactions + Comments + Reposts) AS TotalEngagement
FROM linkedin_data
ORDER BY TotalEngagement DESC
Limit 1;

	-- 6.Best Day to Post
    SELECT
    DAYNAME(PostDate) AS DayofWeek,
    sum(Reactions + Comments + Reposts) AS TotalEngagement
    FROM linkedin_data
    GROUP BY DAYNAME(PostDate)
    ORDER BY TotalEngagement DESC
    limit 1;
    
	-- 7.Post Performance by Topic
    SELECT
    PostTopic AS Topic,
    sum(Reactions + Comments + Reposts) AS TotalEngagement
    FROM linkedin_data
    GROUP BY PostTopic
    ORDER BY TotalEngagement DESC;
    
    
    

