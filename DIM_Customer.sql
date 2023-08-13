SELECT 
c.CustomerKey AS CustomerKey,
--,[GeographyKey]
--,[CustomerAlternateKey]
--,[Title]      
c.firstname AS [FirstName],
--,[MiddleName]
c.lastname AS [LastName],
c.firstname + ' ' + lastname AS [Full Name],
-- combined first and last name --
--,[NameStyle]
--,[BirthDate]
--,[MaritalStatus]
--,[Suffix]
CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
--,[EmailAddress]
--,[YearlyIncome]
--,[TotalChildren]
--,[EnglishEducation]
--,[SpanishEducation]
--,[FrenchEducation]
--,[EnglishOccupation]
--,[SpanishOccupation]
--,[FrenchOccupation]
--,[HouseOwnerFlag]
--,[NumberCarsOwned]
--,[AddressLine1]
--,[AddressLine2]
--,[Phone]
c.datefirstpurchase AS DateFirstPurchase,
--,[CommuteDistance]
g.city AS [Customer City] --joined in customer city from geography table
FROM
dbo.dimcustomer AS c
LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY 
CustomerKey ASC --ordered list by customerkey
--Ultima actualización 09/08/2023 por Agus
