
-- 2.41
SELECT SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState
FROM Warehouses
WHERE WarehouseCity = 'Atlanta' OR WarehouseCity = 'Bangor' OR WarehouseCity = 'Chicago';

-- 2.42
SELECT SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState
FROM Warehouses
WHERE WarehouseCity <> 'Atlanta' OR WarehouseCity <> 'Bangor' OR WarehouseCity <> 'Chicago';

-- 2.43

