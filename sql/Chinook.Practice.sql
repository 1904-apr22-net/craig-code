-- every track that has never been purchased
SELECT TrackId, Name 
FROM Track
WHERE TrackId NOT IN 
(
    SELECT TrackId
    FROM InvoiceLine
)

-- GET the track that has been bought the most times

SELECT Name
FROM Track
WHERE TrackId = (
    SELECT TOP(1) TrackId
    FROM InvoiceLine
    GROUP BY TrackId
    ORDER BY SUM(Quantity) DESC
)

-- which artist did not make any albums at all?

Select Name
From Artist 
WHERE ArtistId NOT IN(
    SELECT ArtistId FROM Album
)

-- 2. which artists did not record any tracks of the Latin genre?
SELECT ar.Name
FROM Artist AS ar
    INNER JOIN Album AS al ON ar.ArtistId = al.ArtistId
    INNER JOIN Track AS t ON al.AlbumId = t.AlbumId
    INNER JOIN Genre AS g ON t.GenreId = g.GenreId
WHERE g.Name <> 'Latin'

-- 3. which video track has the longest length? (use media type table)
WITH VideoTracks AS (
    SELECT TOP(1) Name
    FROM Track
    WHERE MediaTypeId = '3'
    ORDER BY(Milliseconds) DESC
)
SELECT Name 
FROM Track
WHERE Name IN (
    SELECT * 
    FROM VideoTracks
)

-- 4. find the names of the customers who live in the same city as the
--    boss employee (the one who reports to nobody)
WITH Boss AS (
    SELECT *
    FROM Employee
    WHERE Title = 'General Manager'
)
SELECT c.FirstName + ' ' + c.LastName
FROM Customer AS c
    INNER JOIN Boss AS b ON b.City = c.City

-- 5. how many audio tracks were bought by German customers, and what was
--    the total price paid for them?

-- 6. list the names and countries of the customers supported by an employee
--    who was hired younger than 35.