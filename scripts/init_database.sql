/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


-- Create database warehouse

USE master;
Go


-- Drop and recreate the 'DataWahoure'
IF EXISTS (SELECT 1 FROM SYS.DATABASES WHERE NAME='DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;

GO 

-- CREATE DATA WAREHOUSE

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- CREATING SCHEMAS


CREATE SCHEMA Bronze;
Go
CREATE SCHEMA Silver;
Go
CREATE SCHEMA Gold;
Go
