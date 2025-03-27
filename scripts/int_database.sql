/*
=========================================
Create Database and Schemas
=========================================

Purpose:
This script is designed to create a database named 'DataWarehouse'. If the database already exists, 
it will be deleted and recreated to ensure a fresh setup. The script also establishes three schemas: 
'bronze', 'silver', and 'gold' to organize data effectively.

Caution:
Running this script will remove the existing 'DataWarehouse' database along with all its data. 
Ensure you have a backup before proceeding, as this action is irreversible.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
