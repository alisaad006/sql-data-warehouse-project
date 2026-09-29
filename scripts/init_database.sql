/*
===============================================================================
Create Database 'DataWarehouse'
===============================================================================
Script Purpose:
    This script creates a new database named 'DataaWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataaWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this scropt.
*/

USE master;
GO

-- Drp and recreate the 'DataaWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataaWarehouse')
BEGIN
   ALTER DATABASE DataaWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataaWarehouse;
END;
GO

-- Create the 'DataaWarehouse' database
create DATABASE DataaWarehouse;
GO

USE DataaWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
