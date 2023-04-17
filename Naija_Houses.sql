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

-- To get list of columns present in the dataset
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'NaijaHouses'
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

-- List of states with their respective numbers
SELECT State, COUNT(State) AS 'Number of States'
FROM NaijaHouses
GROUP BY State
ORDER BY 'Number of States' DESC
GO

-- List of building types with their respective prices
SELECT DISTINCT TOP 20 [Building Types], Price
FROM NaijaHouses
ORDER BY 'Price' DESC
GO

-- List of most expensive buildings with their respective locations
SELECT DISTINCT TOP 20 [Building Types], COUNT(Price) AS 'Price'
FROM NaijaHouses
GROUP BY [Building Types]
ORDER BY 'Price' DESC
