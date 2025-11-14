use cape_codd;
-- 2.41
SELECT SKU, SKU_Description, i.WarehouseID, WarehouseCity, WarehouseState
 FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
And WarehouseCity IN ('Atlanta' OR WarehouseCity = 'Bangor' OR WarehouseCity = 'Chicago');

-- 2.42

SELECT SKU, SKU_Description, i.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
And WarehouseCity IN ('Atlanta' OR WarehouseCity <> 'Bangor' OR WarehouseCity <> 'Chicago');




-- 2.43
SELECT SKU, SKU_Description, i.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
And WarehouseCity NOT IN ('Atlanta' OR WarehouseCity <> 'Bangor' OR WarehouseCity <> 'Chicago');

-- 2.44
SELECT 
SKU_Description || ' is located in ' || WarehouseCity AS ItemLocation
FROM INVENTORY i
JOIN WAREHOUSE w 
  ON i.WarehouseID = w.WarehouseID;
  
  -- 2.45
  SELECT i.SKU, i.SKU_Description, i.WarehouseID
FROM INVENTORY i
WHERE i.WarehouseID IN (
    SELECT w.WarehouseID
    FROM WAREHOUSE w
    WHERE w.ManagerName = 'Lucille Smith'
);


-- 2.46

SELECT i.SKU, i.SKU_Description, i.WarehouseID
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
  AND w.WarehouseID = 'Lucille Smith';
  
  
  -- 2.47
  SELECT i.SKU, i.SKU_Description, i.WarehouseID
FROM INVENTORY i
JOIN WAREHOUSE w 
  ON i.WarehouseID = w.WarehouseID
WHERE w.ManagerName = 'Lucille Smith';

-- 2.48

SELECT i.WarehouseID, AVG(i.QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY i
WHERE i.WarehouseID IN (
    SELECT w.WarehouseID
    FROM WAREHOUSE w
    WHERE w.WarehouseID = 'Lucille Smith'
)
GROUP BY i.WarehouseID;

-- 2.49
SELECT i.WarehouseID, AVG(i.QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
  AND w.ManagerName = 'Lucille Smith'
GROUP BY i.WarehouseID;

-- 2.50
SELECT i.WarehouseID, AVG(i.QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY i
JOIN WAREHOUSE w 
  ON i.WarehouseID = w.WarehouseID
WHERE w.ManagerName = 'Lucille Smith'
GROUP BY i.WarehouseID;




