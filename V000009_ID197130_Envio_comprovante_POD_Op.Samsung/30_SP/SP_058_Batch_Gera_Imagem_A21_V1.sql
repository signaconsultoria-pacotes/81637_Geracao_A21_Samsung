USE [ECARGOROSA]
GO
/****** Object:  StoredProcedure [dbo].[SP_058_Batch_Gera_Imagem_A21_V1]    Script Date: 02/03/2023 15:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[SP_058_Batch_Gera_Imagem_A21_V1]
AS
Declare @Ids Varchar(Max)

Declare @TrackingIds as Table (Tracking_Id int)

Update	Docto
Set
		Flag_Integrado = 'A'
		Output Inserted.Tracking_Id
		Into @TrackingIds
From
		Img_Docto Img
		Inner Join Docto_Img Docto On Docto.Img_Docto_Id = Img.Img_Docto_Id
		Inner Join Tracking On Tracking.Tracking_Id = Docto.Tracking_Id
		Cross Apply (
			Select * From Docto_Transporte DT Where DT.Docto_Transporte_Id = Docto.Docto_Transporte_Id
			Union
			Select	DT.*
			From	Docto_Transporte DT 
					Inner Join Nota_Fiscal Nota On Nota.Docto_Transporte_Id = DT.Docto_Transporte_Id
			Where	Nota.Nota_Fiscal_Id = Docto.Nota_Fiscal_Id
			Union
			Select	DT.*
			From	Docto_Transporte DT 
					Inner Join Docto_Transp_Manifesto_Rod Mdfe On Mdfe.Docto_Transporte_Id = DT.Docto_Transporte_Id
			Where	Mdfe.Manifesto_Rod_Id = Docto.Manifesto_Rod_Id
		) DT
Where
		Docto.Flag_Integrado Is Null And Docto.Tab_Status_Id = 1 And Tracking.Tab_Status_Id = 1
And		Exists (Select * From Cliente Where DT.Cliente_Id = Pessoa_Id And Grupo_Cliente_Id = 12)
And		Exists (Select * From Tab_Tipo_Tracking TT Where TT.Tab_Status_Tracking_Id = 113 And Tracking.Tab_Tipo_Tracking_Id = TT.Tab_Tipo_Tracking_Id)

If @@RowCount > 0
	Begin
		Select @Ids = master.dbo.Concat2(Tracking_Id, '#') From @TrackingIds

		Exec SP_040_EPOD_SAMGUNG_GRA_COMP_ENTREGA02 @Ids
	End
