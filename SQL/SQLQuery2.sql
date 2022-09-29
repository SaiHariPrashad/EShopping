-- ================================================
-- Template generated from Template Explorer using:
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> GetBySearch 'Watch'
-- =============================================
CREATE PROCEDURE GetBySearch 
	@search nvarchar(max)=null
AS
BEGIN
 	SELECT * FROM [dbo].[Tbl_Product] P
	left join [dbo].[Tbl_Category] C on p.CategoryId = c.CategoryId
	where
	P.ProductName LIKE CASE WHEN @search is not null then '%'+@search+'%' else P.ProductName end
	or
	C.CategoryName LIKE CASE WHEN @search is not null then '%'+@search+'%' else C.CategoryName end
END
GO
