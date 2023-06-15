
/** TASK PROJ 1 - List the top 5 countries with the highest number of EV cars currently.  **/
SELECT TOP(5) [region]
	,SUM(value) AS Number_of_EVs


FROM AdventureWorks2017.[dbo].[IEA-EV-dataEV stockCarsHistorical2]
WHERE [region] <> 'World' AND [region] <> 'Europe' AND [region] <> 'EU27'
GROUP BY [region]

ORDER BY Number_of_EVs desc;