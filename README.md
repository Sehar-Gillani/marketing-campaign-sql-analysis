Marketing Campaign SQL Analysis
Six ad campaigns across five channels, analyzed in SQL (SQLite): which channels
earn their budget, and which one is leaking money?
Metrics used
CTR = clicks / impressions — of 100 people who saw the ad, how many clicked
Conversion rate = conversions / clicks — of 100 clickers, how many bought
CAC = spend / conversions — what one customer cost to acquire
ROAS = revenue / spend — dollars back per dollar spent (below 1.0 = losing money)
Findings
Best CTR: Brand Search (Google Search) at 8% — people already searching for
  the brand click at the highest rate. Email followed at 6%.
Best conversion: Email and Brand Search at 5% of clicks. TikTok and
  Instagram converted only 1% — TikTok delivered 1,800 clicks but just 18 buyers.
Cheapest customers: Email CAC $3.33; Google Search $10.95. Most expensive:
  Instagram at $111.11 per customer (~33x Email).
ROAS: Email 27.0 ($27 back per $1), Google Search 8.87, Meta 4.8,
  TikTok 1.2, Instagram 0.81.
Recommendation
Drop the Instagram influencer campaign: it spent $1,000 to return $810
(ROAS 0.81), and each customer it acquired cost $111 against $90 in revenue.
Move that budget to Email and Google Search, the two channels that convert
clicks into buyers at the lowest acquisition cost.
Data note
A duplicate Brand_Search row was caught with a GROUP BY count check and removed
before the money metrics (Q3/Q4) were run, since duplicates inflate SUM totals.
Tools
SQLite (sqliteonline), GitHub. Queries in queries.sql, data in campaigns.csv.
