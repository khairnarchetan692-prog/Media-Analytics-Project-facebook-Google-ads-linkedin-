Create database Facebook ;

use Facebook;

--  Total Ad Spend 
  SELECT 
  SUM(TotalCost) AS Total_Ad_Spend
FROM Facebook_Data;

--  Total People Reached
SELECT 
  SUM(`Total People Reached (Expression)`) AS Total_People_Reached
FROM Facebook_Data;

--  Total Impressions 
SELECT 
  SUM(`Total Impressions (Expression)`) AS Total_Impressions
FROM Facebook_Data;

-- Total Reach
SELECT 
  SUM(`Reach`) AS Total_Reach
FROM Facebook_Data;



-- Total Link Clicks
SELECT 
  SUM(`Total Link Clicks (Expression)`) AS Total_Link_Clicks
FROM Facebook_Data;

-- Total Page Likes
SELECT 
  SUM(`Total Page Likes (Expression)`) AS Total_Page_Likes
FROM Facebook_Data;

-- Total Social Interactions
SELECT 
  SUM(`Total Social Interactions (Expression)`) AS Total_Social_Interactions
FROM Facebook_Data;

-- Total Post Reactions
SELECT 
  SUM(`Total Post Reactions (Expression)`) AS Total_Post_Reactions
FROM Facebook_Data;

-- Click Through Rate( CTR)%
SELECT 
  (SUM(`Total Link Clicks (Expression)`) * 100.0 / NULLIF(SUM(`Total Impressions (Expression)`), 0)) AS CTR_Percentage
FROM Facebook_Data;

-- Conversion Rate(%)
SELECT 
  (SUM(`Total Website Purchases (Expression)`) * 100.0 / NULLIF(SUM(`Total Link Clicks (Expression)`), 0)) AS Conversion_Rate_Percentage
FROM Facebook_Data;

-- Return On Ad  Spend (ROAS)
SELECT 
  (SUM(`Total Website Purchases Value (Expression)`) / NULLIF(SUM(`Total Cost (Expression)`), 0)) AS ROAS
FROM Facebook_Data;

-- Cost Per Purchasee (CPP)
SELECT 
  (SUM(`Total Cost (Expression)`) / NULLIF(SUM(`Total Website Purchases (Expression)`), 0)) AS Cost_Per_Purchase
FROM Facebook_Data;

--  CPL ( Cost Per Lead)
SELECT 
  (SUM(`Total Cost (Expression)`) / NULLIF(SUM(`Total Website Leads (Expression)`), 0)) AS Cost_Per_Lead
FROM Facebook_Data;


-- Cost Per Person Reached 
SELECT 
  (SUM(`Total Cost (Expression)`) / NULLIF(SUM(`Total People Reached (Expression)`), 0)) AS Cost_Per_Person_Reached
FROM Facebook_Data;
