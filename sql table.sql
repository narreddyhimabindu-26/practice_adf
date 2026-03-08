USE [AdventureWorks2022]
GO

SELECT [DatabaseLogID]
      ,[PostTime]
      ,[DatabaseUser]
      ,[Event]
      ,[Schema]
      ,[Object]
      ,[TSQL]
      ,[XmlEvent]
  FROM [dbo].[DatabaseLog]

GO

