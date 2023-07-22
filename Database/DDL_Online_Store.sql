USE [master]
GO

USE master;
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'PRN211_Online_Store')
BEGIN
    ALTER DATABASE PRN211_Online_Store SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PRN211_Online_Store;
END

CREATE DATABASE [PRN211_Online_Store]
GO
USE [PRN211_Online_Store]
GO


-- -------------------- ENTITIES --------------------
CREATE TABLE [User] (
	username varchar(50) NOT NULL,
	password varchar(50),
	displayName nvarchar(255),
	avatarPath varchar(255),
	CONSTRAINT PK_User PRIMARY KEY (username)
)


CREATE TABLE [Role] (
	roleId int IDENTITY(1,1) NOT NULL,
	roleName varchar(50),
	CONSTRAINT PK_Role PRIMARY KEY (roleId)
)


CREATE TABLE [Feature] (
	featureId int IDENTITY(1,1) NOT NULL,
	featureName nvarchar(255),
	featureUrl varchar(255),
	CONSTRAINT PK_Feature PRIMARY KEY (featureId)
)


CREATE TABLE [Product] (
	productId int IDENTITY(1,1) NOT NULL,
	productName nvarchar(255),
	productDescription nvarchar(max),
	unitPrice int,
	stockUnit int,
	soldUnit int,
	CONSTRAINT PK_Product PRIMARY KEY (productId)
)


CREATE TABLE [Category] (
	categoryId int IDENTITY(1,1) NOT NULL,
	categoryName nvarchar(255),
	CONSTRAINT PK_Category PRIMARY KEY (categoryId)
)


CREATE TABLE [ProductAttachment] (
	attachmentId int IDENTITY(1,1) NOT NULL,
	productId int NOT NULL,
	fileType varchar(255),
	filePath varchar(max),
	description nvarchar(255),
	CONSTRAINT PK_ProductAttachment PRIMARY KEY (attachmentId)
)
ALTER TABLE [ProductAttachment] ADD CONSTRAINT FK_ProductAttachment_Product FOREIGN KEY (productId)
REFERENCES [Product] (productId)


CREATE TABLE [Variant] (
	variantId int IDENTITY(1,1) NOT NULL,
	productId int NOT NULL,
	variantName nvarchar(255),
	variantPrice int,
	variantDescription nvarchar(max),
	CONSTRAINT PK_Variant PRIMARY KEY (variantId)
)
ALTER TABLE [Variant] ADD CONSTRAINT FK_Variant_Product FOREIGN KEY (productId)
REFERENCES [Product] (productId)


-- -------------------- RELATIONSHIPS --------------------

CREATE TABLE [UserRole] (
	username varchar(50) NOT NULL,
	roleId int NOT NULL,
	CONSTRAINT PK_UserRole PRIMARY KEY (username, roleId)
)
ALTER TABLE [UserRole] ADD CONSTRAINT FK_UserRole_User FOREIGN KEY (username)
REFERENCES [User] (username)
ALTER TABLE [UserRole] ADD CONSTRAINT FK_UserRole_Role FOREIGN KEY (roleId)
REFERENCES [Role] (roleId)


CREATE TABLE [RoleFeature] (
	roleId int NOT NULL,
	featureId int NOT NULL,
	CONSTRAINT PK_RoleFeature PRIMARY KEY (roleId, featureId)
)
ALTER TABLE [RoleFeature] ADD CONSTRAINT FK_RoleFeature_Role FOREIGN KEY (roleId)
REFERENCES [Role] (roleId)
ALTER TABLE [RoleFeature] ADD CONSTRAINT FK_RoleFeature_Feature FOREIGN KEY (featureId)
REFERENCES [Feature] (featureId)


CREATE TABLE [ProductCategory] (
	productId int NOT NULL,
	categoryId int NOT NULL,
	CONSTRAINT PK_ProductCategory PRIMARY KEY (productId, categoryId)
)
ALTER TABLE [ProductCategory] ADD CONSTRAINT FK_ProductCategory_Product FOREIGN KEY (productId)
REFERENCES [Product] (productId)
ALTER TABLE [ProductCategory] ADD CONSTRAINT FK_ProductCategory_Category FOREIGN KEY (categoryId)
REFERENCES [Category] (categoryId)


CREATE TABLE [Feedback] (
	feedbackId int IDENTITY(1,1) NOT NULL,
	username varchar(50) NOT NULL,
	productId int NOT NULL,
	rating int,
	comment nvarchar(255),
	feedbackTime datetime,
	-- editTimes DEFAULT 0,
	CONSTRAINT PK_Feedback PRIMARY KEY (feedbackId)
)
ALTER TABLE [Feedback] ADD CONSTRAINT FK_Feedback_User FOREIGN KEY (username)
REFERENCES [User] (username)
ALTER TABLE [Feedback] ADD CONSTRAINT FK_Feedback_Product FOREIGN KEY (productId)
REFERENCES [Product] (productId)


CREATE TABLE [FeedbackAttachment] (
	attachmentId int IDENTITY(1,1) NOT NULL,
	feedbackId int NOT NULL,
	fileType varchar(255),
	filePath varchar(255),
	description nvarchar(255),
	CONSTRAINT PK_FeedbackAttachment PRIMARY KEY (attachmentId)
)
ALTER TABLE [FeedbackAttachment] ADD CONSTRAINT FK_FeedbackAttachment_Feedback FOREIGN KEY (feedbackId)
REFERENCES [Feedback] (feedbackId);
ALTER TABLE [FeedbackAttachment] ALTER COLUMN filePath varchar(255) NULL;

-- DROP TABLES
/*
IF OBJECT_ID('[ProductCategory]', 'U') IS NOT NULL DROP TABLE [ProductCategory];
IF OBJECT_ID('[UserRole]', 'U') IS NOT NULL DROP TABLE [UserRole];
IF OBJECT_ID('[RoleFeature]', 'U') IS NOT NULL DROP TABLE [RoleFeature];
IF OBJECT_ID('[Variant]', 'U') IS NOT NULL DROP TABLE [Variant];
IF OBJECT_ID('[ProductAttachment]', 'U') IS NOT NULL DROP TABLE [ProductAttachment];
IF OBJECT_ID('[FeedbackAttachment]', 'U') IS NOT NULL DROP TABLE [FeedbackAttachment];
IF OBJECT_ID('[Feedback]', 'U') IS NOT NULL DROP TABLE [Feedback];
IF OBJECT_ID('[Product]', 'U') IS NOT NULL DROP TABLE [Product];
IF OBJECT_ID('[User]', 'U') IS NOT NULL DROP TABLE [User];
IF OBJECT_ID('[Role]', 'U') IS NOT NULL DROP TABLE [Role];
IF OBJECT_ID('[Feature]', 'U') IS NOT NULL DROP TABLE [Feature];
IF OBJECT_ID('[Category]', 'U') IS NOT NULL DROP TABLE [Category];
*/
