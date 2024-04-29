-- This catalog acts as a container for schemas and data assets. It is a crucial component for organizing and
--managing data at a high level

CREATE CATALOG product_catalog;

-- We will create schemas to hold our base table (e.g, a `general` schema for common data tables)
-- and additional schemas for different functional areas or departments( e.g, `sales`, `marketing`)

-- Creating the general schema for common data tables
CREATE SCHEMA product_catalog.general;

-- Creating the sales schema for sales-specific views and data
CREATE SCHEMA product_catalog.sales;

-- Creating the marketing schema for marketing-specific views and data
CREATE SCHEMA product_catalog.marketing;
