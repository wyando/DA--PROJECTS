/* Analysis to determine the ranking of 'Mkt_Cap' within top 25, '24h volume' within top 50 and '7 day%' increase highest and positive */

SELECT *
FROM (
  SELECT Coin, Mkt_Cap,[_1h],[_24h],[_7d],
    RANK() OVER (ORDER BY Mkt_Cap DESC) AS Mkt_Cap_rank,
    RANK() OVER (ORDER BY _24h DESC) AS Vol_rank
  FROM [dbo].[Crypto_SQL_data_csv]
  WHERE Mkt_Cap >= 2754035669
) AS subquery
ORDER BY Mkt_Cap DESC;
