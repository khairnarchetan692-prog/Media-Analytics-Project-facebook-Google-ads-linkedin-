create database Google ;
use google;
desc Google;
select ad_group_name from Google;
-- Ad_Level KPIS (using ad column)

-- CTR %
select sum(ad_clicks)/sum(ad_impressions) as CTR_decimal,
(sum(ad_clicks)/sum(ad_impressions))*100 as CTR_percentage from Google;

-- Conversion Rate % 
select sum(ad_conversions)/sum(ad_clicks)*100 as ConversionRate_percentage from	Google;

-- average CPC
select round(sum(ad_cost_usd)/sum(ad_clicks)*100,3) as AverageCPC from Google;

-- cost per conversion 
select round(sum(ad_cost_usd)/sum(ad_conversions),2) as CostPerConversion from Google;

-- ROAS Return On Ad Spend 
select round(sum(ad_conversion_value)/sum(ad_cost_usd),2) as ROAS from Google;

-- CPM (COST PER MILLE)
select round(sum(ad_cost_usd)/sum(ad_impressions)*1000,2) as CPM from Google;

-- Campaign-Level KPIs (Using campaign_ columns)
-- campaign CTR % 
select round(sum(campaign_clicks)/sum(campaign_impressions)*100,2) as Campaign_CTR from Google;

-- CAMPAIGN CONVERSION RATE % 
select round(sum(campaign_conversions)/sum(campaign_clicks)*100,2) as CampaignConversionRate from Google;

-- Campaign CPC 
select round(sum(campaign_cost_usd)/sum(campaign_clicks)*100,2) as Campaign_CPC from Google;

-- CAMPAIGN COST PER CONVERSION 
select round(sum(campaign_cost_usd)/sum(campaign_conversions),2) as Campaign_CostPerConversion from Google;

-- CAMPAIGN ROAS (RETURN ON AD SPEND)
select round(sum(campaign_conversion_value)/sum(campaign_cost_usd),2) as Campaign_ROAS from Google;

-- Campaign CPM 
select round(sum(campaign_cost_usd)/sum(campaign_impressions)*1000,2) as Campaign_CPM from Google;