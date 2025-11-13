use cape_codd;
-- 217
select SKU, SKU_Description
from INVENTORY;

-- 2.18
select SKU_Description,  SKU
from INVENTORY;

-- 2.19
select WarehouseID 
from INVENTORY;

-- 2.20
select distinct WarehouseID  as ID
from INVENTORY;

-- 2.21
select WarehouseID, SKU, SKU_Description, QuantityOnhand, QuantityOnOrder
from INVENTORY;

-- 2.22
select*
from INVENTORY;

-- 2.23
select QuantityOnhand 
from INVENTORY
WHERE QuantityOnhand > 0;

-- 2.24
select SKU, SKU_Description, QuantityOnhand 
from INVENTORY
WHERE QuantityOnhand = 0;

-- 2.25
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
ORDER BY WarehouseID  ASC;

-- 2.26
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE  QuantityOnOrder > 0 
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.27
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 and QuantityOnOrder > 0 
ORDER BY WarehouseID DESC, SKU ASC;


-- 2.28
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 and QuantityOnOrder = 0 
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1 < 10;

-- 230 
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand between 1 and 10;

-- 2.31
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome%';

-- 2.32
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE  'Climb';

-- 2.33
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%';







