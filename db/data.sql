INSERT INTO farmers (name, location) VALUES ('John Doe', 'Farmville');
INSERT INTO farmers (name, location) VALUES ('Jane Smith', 'AgroCity');

INSERT INTO crops (name, planting_season) VALUES ('Wheat', 'Winter');
INSERT INTO crops (name, planting_season) VALUES ('Corn', 'Summer');

INSERT INTO planting_records (farmer_id, crop_id, planting_date, harvest_date) 
VALUES (1, 1, '2024-01-15', '2024-04-15');

INSERT INTO planting_records (farmer_id, crop_id, planting_date, harvest_date) 
VALUES (2, 2, '2024-06-10', '2024-09-10');

INSERT INTO sales (farmer_id, crop_id, quantity_sold, sale_amount) 
VALUES (1, 1, 100, 1500.00);

INSERT INTO sales (farmer_id, crop_id, quantity_sold, sale_amount) 
VALUES (2, 2, 200, 3000.00);
