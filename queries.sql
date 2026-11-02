-- Marketing Campaign SQL Analysis — queries.sql
-- Dataset: campaigns.csv (6 campaigns, 5 channels)
-- Author: Sehar Gillani

-- Data quality check: every campaign must appear exactly once
SELECT campaign, COUNT(*) AS copies FROM campaigns GROUP BY campaign;

-- Q1: CTR by campaign (clicks per 100 impressions)
SELECT
  campaign,
  channel,
  clicks * 1.0 / impressions * 100 AS ctr_percent
FROM campaigns
ORDER BY ctr_percent DESC;

-- Q2: Conversion rate by campaign (buyers per 100 clicks)
SELECT
  campaign,
  channel,
  conversions * 1.0 / clicks * 100 AS conv_rate_percent
FROM campaigns
ORDER BY conv_rate_percent DESC;

-- Q3: CAC by channel (cost to acquire one customer)
SELECT
  channel,
  SUM(spend) * 1.0 / SUM(conversions) AS cac
FROM campaigns
GROUP BY channel
ORDER BY cac ASC;

-- Q4: ROAS by channel (revenue back per $1 spent; below 1.0 = losing money)
SELECT
  channel,
  ROUND(SUM(revenue) * 1.0 / SUM(spend), 2) AS roas
FROM campaigns
GROUP BY channel
ORDER BY roas DESC;
