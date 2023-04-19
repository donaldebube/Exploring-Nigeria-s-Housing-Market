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
ORDER BY 'Number of Bedrooms' DESC

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 9
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 9 
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 8
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 8 
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 7
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 7
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 6
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 6
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 5
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 5
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 4
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 4 
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 3
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 3
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 2
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 2
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Bedrooms, where number of bedroooms is 1
SELECT [Building Types], COUNT(Bedrooms) AS 'Number of Bedrooms'
FROM NaijaHouses
WHERE Bedrooms = 1
GROUP BY [Building Types]
ORDER BY 'Number of Bedrooms' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 9
SELECT COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 9
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 8
SELECT COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 8
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 7
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 7
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 6
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 6
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 5
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 5
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 4
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 4
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 3
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 3
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 2
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 2
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

-- Building Types by NUmber of Toilets, where number of toilet is 1
SELECT Toilets, COUNT(Toilets) AS 'Number of Toilets', [Building Types]
FROM NaijaHouses
WHERE Toilets = 1
GROUP BY Toilets, [Building Types]
ORDER BY 'Number of Toilets' DESC
GO

SELECT [Parking Space], COUNT([Parking Space]) AS 'Number of Parking Spaces', [Building Types]
FROM NaijaHouses
GROUP BY [Parking Space], [Building Types]
ORDER BY 'Number of Parking Spaces'


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
SELECT 
(
    SELECT DISTINCT TOP 20 
    [Building Types], 
    Price,
    -- SUM(Price) AS 'Price', 
    [State], 
    Town
FROM NaijaHouses
-- GROUP BY [Building Types], [State], Town
ORDER BY 'Price' DESC
)
INTO building_info
FROM NaijaHouses
GO

SELECT DISTINCT TOP 20
    [Building Types], 
    Price,
    [State], 
    Town
INTO building_info
FROM NaijaHouses
ORDER BY Price DESC

SELECT *
FROM building_info

