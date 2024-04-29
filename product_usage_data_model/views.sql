-- Creating the view in the sales schema
CREATE VIEW product_catalog.sales.product_insights AS
SELECT
    product_id,
    SUM(sales) AS total_sales
FROM product_catalog.general.products
WHERE dept = 'Sales'
GROUP BY product_id;

-- Creating the view in the marketing schema
CREATE VIEW product_catalog.marketing.product_insights AS
SELECT
    product_id,
    SUM(ad_clicks) AS total_clicks
FROM product_catalog.general.products
WHERE dept = 'Marketing'
GROUP BY product_id;
