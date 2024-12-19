DROP TABLE IF EXISTS AdPerformance;

CREATE TABLE AdPerformance (
    adid INT PRIMARY KEY,
    VIEWS INT,
    clicks INT,
    COST DECIMAL(10, 2)
);


INSERT INTO AdPerformance (adid, VIEWS, clicks, COST)
VALUES
    (1, 1000, 50, 20.5),
    (2, 800, 30, 15.2),
    (3, 1200, 80, 25.7),
    (4, 600, 20, 10.9),
    (5, 1500, 120, 40.3);


SELECT 
    adid,
    ROUND((clicks / CAST(VIEWS AS DECIMAL)) * 100, 1) AS CTR,
    VIEWS,
    clicks,
    COST
FROM AdPerformance
ORDER BY CTR DESC;
