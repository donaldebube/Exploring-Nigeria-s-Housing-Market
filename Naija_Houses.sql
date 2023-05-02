-- Restructure each column title to a format that you understand
EXEC sp_rename 'NaijaHouses.bedrooms', 'Bedrooms', 'COLUMN';
EXEC sp_rename 'NaijaHouses.bathrooms', 'Bathrooms', 'COLUMN';
EXEC sp_rename 'NaijaHouses.toilets', 'Toilets', 'COLUMN';
EXEC sp_rename 'NaijaHouses.parking_space', 'Parking Space', 'COLUMN';
EXEC sp_rename 'NaijaHouses.Title', 'Building Types', 'COLUMN';
EXEC sp_rename 'NaijaHouses.town', 'Town', 'COLUMN';
EXEC sp_rename 'NaijaHouses.state', 'State', 'COLUMN';
EXEC sp_rename 'NaijaHouses.price', 'Price', 'COLUMN';

-- Use the Format function to change transform the price column appropraitely.
-- Push into new table created
SELECT  
    [State], 
    FORMAT(Price, '#,#') AS 'Price',
    [Building Types],
    [Town],
    Bathrooms,
    Bedrooms,
    Toilets,
    [Parking Space]
INTO NaijaHouses_1
FROM NaijaHouses
GO

-- Get table
-- Initial table
SELECT *
FROM NaijaHouses
GO

-- Get Table
-- Mew and enhanced table with format
SELECT *
FROM NaijaHouses_1
GO

-- Duplicates found
SELECT DISTINCT Town, [State]
FROM NaijaHouses_1
GO

-- Duplicate handled for Agege.
SELECT *
FROM NaijaHouses_1
WHERE Town = 'Agege' AND [State] = 'Anambara'
GO

-- Change the column name (State), from Anambara to Lagos 
UPDATE NaijaHouses_1
SET [State] = 'Lagos'
WHERE Town = 'Agege'
GO

-- Duplicate handled for Ajah.
SELECT *
FROM NaijaHouses_1
WHERE Town = 'Ajah' AND [State] = 'Anambara'
GO

-- Change the column name (State), from Anambara to Lagos 
UPDATE NaijaHouses_1
SET [State] = 'Lagos'
WHERE Town = 'Ajah'
GO

-- Change Akure from Anambra to Ondo s the state.
UPDATE NaijaHouses_1
SET [State] = 'Ondo'
WHERE Town = 'Akure'
GO

-- Change Alimosho from Anambara to Lagos
UPDATE NaijaHouses_1
SET [State] = 'Lagos'
WHERE Town = 'Alimosho'
GO

-- Change Arepo from Anambara to Ogun
UPDATE NaijaHouses_1
SET [State] = 'Ogun'
WHERE Town = 'Arepo'
GO

-- To get list of columns present in the dataset
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'NaijaHouses'
GO

-- Get the different building tyoes and the ones that appear 
SELECT DISTINCT [Building Types], 
    COUNT([Building Types]) AS 'Number of Buildings For Each Building Type' 
FROM NaijaHouses
GROUP BY [Building Types]
ORDER BY 'Number of Buildings For Each Building Type' DESC

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

SELECT DISTINCT [Parking Space], COUNT([Parking Space]) AS 'Number of Parking Spaces'
    -- [Building Types]
FROM NaijaHouses
GROUP BY [Parking Space], [Building Types]
ORDER BY 'Number of Parking Spaces' DESC
GO


-- List of towns with their respective numbers
SELECT DISTINCT [Town], COUNT([Town]) AS 'Number of Towns'
FROM NaijaHouses
GROUP BY Town
ORDER BY 'Number of Towns' DESC
GO

-- To get the total number of towns present in the dataset
SELECT COUNT(DISTINCT Town) AS 'Number of Towns'
FROM NaijaHouses
GO

-- List of states with their respective numbers
SELECT State, COUNT(State) AS 'Number of Houses'
FROM NaijaHouses
GROUP BY State
ORDER BY 'Number of Houses' DESC
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
    ---- SUM(Price) AS 'Price', 
    [State], 
    Town
FROM NaijaHouses
-- GROUP BY [Building Types], [State], Town
ORDER BY 'Price' DESC
)
INTO building_info
FROM NaijaHouses
GO

SELECT TOP 20
    [Building Types], 
    (FORMAT(Price, '#,#')) AS 'Price',
    [State], 
    Town
INTO building_info
FROM NaijaHouses
ORDER BY Price DESC
GO

SELECT TOP 20
    [Building Types], 
    ROUND(FORMAT(Price, '#,#'), 3) AS 'Price',
    [State], 
    Town
INTO building_info
FROM NaijaHouses
ORDER BY Price DESC
GO

SELECT TOP 20
    [Building Types], 
    Price,
    [State], 
    Town
INTO building_info_1
FROM NaijaHouses
ORDER BY Price DESC
GO

SELECT *
FROM building_info_1
GO

SELECT *
FROM building_info

DROP TABLE building_info_1

