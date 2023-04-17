-- Restructure each column title to a format that you understand
EXEC sp_rename 'NaijaHouses.bedrooms', 'Bedrooms', 'COLUMN';
EXEC sp_rename 'NaijaHouses.bathrooms', 'Bathrooms', 'COLUMN';
EXEC sp_rename 'NaijaHouses.toilets', 'Toilets', 'COLUMN';
EXEC sp_rename 'NaijaHouses.parking_space', 'Parking Space', 'COLUMN';
EXEC sp_rename 'NaijaHouses.Title', 'Building Types', 'COLUMN';
EXEC sp_rename 'NaijaHouses.town', 'Town', 'COLUMN';
EXEC sp_rename 'NaijaHouses.state', 'State', 'COLUMN';
EXEC sp_rename 'NaijaHouses.price', 'Price', 'COLUMN';

-- Get table
SELECT TOP 10 *
FROM NaijaHouses
GO

-- Get the different building tyoes and the ones that appear 
SELECT DISTINCT [Building Types], COUNT([Building Types]) AS 'Number of Buildings' 
FROM NaijaHouses
GROUP BY [Building Types]
ORDER BY 'Number of Buildings'


-- Number of bedrooms for each category of bedrooms present
SELECT DISTINCT Bedrooms, COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
GROUP BY Bedrooms
ORDER BY Bedrooms

-- List of towns with their respective numbers
SELECT DISTINCT [Town], COUNT([Town]) AS 'Number of Towns'
FROM NaijaHouses
GROUP BY Town
ORDER BY 'Number of Towns' DESC
GO

SELECT Town, COUNT(Town) AS 'Number'
FROM NaijaHouses
WHERE Town = 'Magboro'
GROUP BY Town
GO


SELECT COUNT(bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 5
GO

-- Number of bedrooms (5) category of bedrooms present
SELECT COUNT(bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 5
GO

