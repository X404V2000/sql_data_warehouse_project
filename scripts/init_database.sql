/*
== Create Database and Schemas

Script Purpose:
	this script creates a new database named 'dataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three
	schemas within the database: 'bronze', 'silver', & 'gold'.

WARNING:
	Running this scripts will drop the entire 'dataWarehouse' database if it exists. All
	data in the database will be permanently deleted. Proceed with caution and ensure you
	have proper backups before running this script.
*/

USE master;
GO

-- check if database exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'dataWarehouse') 
BEGIN
	ALTER DATABASE dataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE dataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE dataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
