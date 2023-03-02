/******  Sc_Insert_Funcao     02/12/2022 11:15:37 ******/
If Not Exists (Select 1 From [Funcao] Where Funcao_Id = 81637)    
	Insert [Funcao]( [Funcao_Id], [Desc_Funcao], [Tab_Status_Id], [Tab_Tipo_Funcao_Id], [Desc_Funcao_Resum], [Nome_Elemento], [Nome_Figura], [Flag_Ctr_Acesso], [Ordem_Funcao], [Nome_Asp], [Nome_Figura_Sombra], [Order_Funcao], [Titulo_Principal], [Nome_Figura_Menu], [Nome_Batch], [Flag_Abre_Janela], [Nome_Arquivo], [Diretorio_Arquivo], [Funcao_Pai_Id], [Versao], [Flag_Mobile], [Tema_Id], [Nome_Diretorio], [Url], [Flag_Multilinguagem], [Nome_Arquivo_Help], [Flag_Bloqueio_Implantacao], [Funcao_Id_Original])     
	Select [Funcao_Id]=81637,
			[Desc_Funcao]='GERA EDI A21 Samsung',
			[Tab_Status_Id]=1,
			[Tab_Tipo_Funcao_Id]=NULL,
			[Desc_Funcao_Resum]='GERA EDI A21 Samsung',
			[Nome_Elemento]=Null,
			[Nome_Figura]=Null,
			[Flag_Ctr_Acesso]=Null,
			[Ordem_Funcao]=Null,
			[Nome_Asp]=Null,
			[Nome_Figura_Sombra]=Null,
			[Order_Funcao]=Null,
			[Titulo_Principal]=Null,
			[Nome_Figura_Menu]=Null,
			[Nome_Batch]=Null,
			[Flag_Abre_Janela]='N',
			[Nome_Arquivo]=Null,
			[Diretorio_Arquivo]=Null,
			[Funcao_Pai_Id]=Null,
			[Versao]=9.00,
			[Flag_Mobile]=Null,
			[Tema_Id]=Null,
			[Nome_Diretorio]=Null,
			[Url]=Null,
			[Flag_Multilinguagem]=Null,
			[Nome_Arquivo_Help]=Null,
			[Flag_Bloqueio_Implantacao]=Null,
			[Funcao_Id_Original]=Null  
Else  
	Update Funcao Set Desc_Funcao= 'GERA EDI A21 Samsung',Tab_Status_Id= '1',Tab_Tipo_Funcao_Id= NULL,Desc_Funcao_Resum= 'GERA EDI A21 Samsung',Nome_Elemento= Null,Nome_Figura= Null,Flag_Ctr_Acesso= Null,Ordem_Funcao= Null,Nome_Asp= Null,Nome_Figura_Sombra= Null,Order_Funcao= Null,Titulo_Principal= Null,Nome_Figura_Menu= Null,Nome_Batch= Null,Flag_Abre_Janela= Null,Nome_Arquivo= Null,Diretorio_Arquivo= Null,Funcao_Pai_Id= Null,Versao= 9.00,Flag_Mobile= Null,Tema_Id= Null,Nome_Diretorio= Null,URL= Null,Flag_MultiLinguagem= Null,Nome_Arquivo_Help= Null,Flag_Bloqueio_Implantacao= Null,funcao_id_original= Null Where Funcao_ID = 81637  
Go  