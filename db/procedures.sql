-- Get all sales details with farmer and crop names
CREATE PROCEDURE GetSalesDetails()
BEGIN
    SELECT 
        f.name AS farmer_name,
        c.name AS crop_name,
        s.quantity_sold,
        s.sale_amount,
        s.sale_date
    FROM 
        sales s
    INNER JOIN 
        farmers f ON s.farmer_id = f.id
    INNER JOIN 
        crops c ON s.crop_id = c.id;
END;

-- Get all planting records with farmer and crop names
CREATE PROCEDURE GetPlantingRecords()
BEGIN
    SELECT 
        f.name AS farmer_name,
        c.name AS crop_name,
        p.planting_date,
        p.harvest_date
    FROM 
        planting_records p
    LEFT JOIN 
        farmers f ON p.farmer_id = f.id
    LEFT JOIN 
        crops c ON p.crop_id = c.id;
END;

-- Get total sales amount per farmer
CREATE PROCEDURE GetTotalSalesPerFarmer()
BEGIN
    SELECT 
        f.name AS farmer_name,
        SUM(s.sale_amount) AS total_sales
    FROM 
        sales s
    INNER JOIN 
        farmers f ON s.farmer_id = f.id
    GROUP BY 
        f.name;
END;
