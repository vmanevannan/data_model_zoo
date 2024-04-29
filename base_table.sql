--Once the catalog and schemas are in place, we create the base table where the raw data will be stored.
CREATE TABLE product_catalog.general.products (
    product_id INT,
    product_name STRING,
    dept STRING,
    sales DOUBLE,
    ad_clicks INT
);
