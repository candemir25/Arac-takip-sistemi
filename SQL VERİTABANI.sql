USE [ARAC_MUAYENE_SISTEMI]
GO
/****** Object:  Table [dbo].[ARAC_BILGISI]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARAC_BILGISI](
	[Plaka] [varchar](10) NOT NULL,
	[Surucu_TCKN] [varchar](11) NOT NULL,
	[Arac_Turu] [varchar](10) NOT NULL,
	[Ruhsat_No] [varchar](7) NOT NULL,
	[Trafik_Sigortasi] [char](1) NULL,
	[Randevu_No] [varchar](10) NOT NULL,
	[MARKA] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARAC_SAHIBI]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARAC_SAHIBI](
	[TCKN] [varchar](11) NOT NULL,
	[Telefon] [varchar](11) NOT NULL,
	[Adi_Soyadi] [varchar](30) NOT NULL,
	[Dogum_Tarihi] [datetime] NULL,
	[Eposta] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TCKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARAC_TURU]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARAC_TURU](
	[Arac_Tur_No] [varchar](10) NOT NULL,
	[Arac_Turu] [varchar](15) NOT NULL,
	[Model] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Arac_Tur_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIZMET]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIZMET](
	[Hizmet_No] [varchar](10) NOT NULL,
	[Hizmet_Turu] [varchar](50) NOT NULL,
	[Hizmet_Bedelı] [int] NOT NULL,
	[Hizmet_Tarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Hizmet_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RANDEVU]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RANDEVU](
	[Randevu_No] [varchar](10) NOT NULL,
	[Hizmet] [varchar](10) NOT NULL,
	[Istasyon] [varchar](2) NOT NULL,
	[Tarih] [date] NULL,
	[Randevu_Saati] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Randevu_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEHIRLER]    Script Date: 22.12.2020 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEHIRLER](
	[Sehir_No] [varchar](2) NOT NULL,
	[SehirAdi] [varchar](15) NOT NULL,
	[Tam_Adres] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sehir_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ARAC_BILGISI] ([Plaka], [Surucu_TCKN], [Arac_Turu], [Ruhsat_No], [Trafik_Sigortasi], [Randevu_No], [MARKA]) VALUES (N'12 AEA 124', N'3142586695', N'2', N'1965', N'+', N'18', N'Ford')
INSERT [dbo].[ARAC_BILGISI] ([Plaka], [Surucu_TCKN], [Arac_Turu], [Ruhsat_No], [Trafik_Sigortasi], [Randevu_No], [MARKA]) VALUES (N'16 FT 365', N'9861596524', N'3', N'9451', N'-', N'09', NULL)
INSERT [dbo].[ARAC_BILGISI] ([Plaka], [Surucu_TCKN], [Arac_Turu], [Ruhsat_No], [Trafik_Sigortasi], [Randevu_No], [MARKA]) VALUES (N'18 SD 147', N'3142586695', N'2', N'1008', N'+', N'18', NULL)
INSERT [dbo].[ARAC_BILGISI] ([Plaka], [Surucu_TCKN], [Arac_Turu], [Ruhsat_No], [Trafik_Sigortasi], [Randevu_No], [MARKA]) VALUES (N'25 CD 25', N'2154853623', N'1', N'4978', N'-', N'10', NULL)
GO
INSERT [dbo].[ARAC_SAHIBI] ([TCKN], [Telefon], [Adi_Soyadi], [Dogum_Tarihi], [Eposta]) VALUES (N'2154853623', N'05461252314', N'Murat  AÇIKGÖZ', CAST(N'2000-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ARAC_SAHIBI] ([TCKN], [Telefon], [Adi_Soyadi], [Dogum_Tarihi], [Eposta]) VALUES (N'2458612479', N'05321597561', N'Sinan DÖNGEL', CAST(N'1998-02-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ARAC_SAHIBI] ([TCKN], [Telefon], [Adi_Soyadi], [Dogum_Tarihi], [Eposta]) VALUES (N'3142586695', N'05318306319', N'Can DEMİR', CAST(N'1999-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ARAC_SAHIBI] ([TCKN], [Telefon], [Adi_Soyadi], [Dogum_Tarihi], [Eposta]) VALUES (N'9861596524', N'05452791205', N'Furkan DUVARDELEN', CAST(N'1997-11-12T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ARAC_TURU] ([Arac_Tur_No], [Arac_Turu], [Model]) VALUES (N'1', N'Agır Vasita', NULL)
INSERT [dbo].[ARAC_TURU] ([Arac_Tur_No], [Arac_Turu], [Model]) VALUES (N'2', N'Traktor', NULL)
INSERT [dbo].[ARAC_TURU] ([Arac_Tur_No], [Arac_Turu], [Model]) VALUES (N'3', N'Binek Araba', N'2015')
INSERT [dbo].[ARAC_TURU] ([Arac_Tur_No], [Arac_Turu], [Model]) VALUES (N'4', N'Motosiklet', NULL)
GO
INSERT [dbo].[HIZMET] ([Hizmet_No], [Hizmet_Turu], [Hizmet_Bedelı], [Hizmet_Tarihi]) VALUES (N'1', N'Genel Muayene', 250, NULL)
INSERT [dbo].[HIZMET] ([Hizmet_No], [Hizmet_Turu], [Hizmet_Bedelı], [Hizmet_Tarihi]) VALUES (N'2', N'Motor Bakım', 500, NULL)
INSERT [dbo].[HIZMET] ([Hizmet_No], [Hizmet_Turu], [Hizmet_Bedelı], [Hizmet_Tarihi]) VALUES (N'3', N'Arıza Tespit', 350, NULL)
GO
INSERT [dbo].[RANDEVU] ([Randevu_No], [Hizmet], [Istasyon], [Tarih], [Randevu_Saati]) VALUES (N'09', N'2', N'35', CAST(N'2019-02-04' AS Date), NULL)
INSERT [dbo].[RANDEVU] ([Randevu_No], [Hizmet], [Istasyon], [Tarih], [Randevu_Saati]) VALUES (N'10', N'3', N'34', CAST(N'2018-02-10' AS Date), CAST(N'2018-02-10T11:30:00.000' AS DateTime))
INSERT [dbo].[RANDEVU] ([Randevu_No], [Hizmet], [Istasyon], [Tarih], [Randevu_Saati]) VALUES (N'12', N'2', N'25', CAST(N'2020-12-14' AS Date), CAST(N'2020-12-22T14:30:00.000' AS DateTime))
INSERT [dbo].[RANDEVU] ([Randevu_No], [Hizmet], [Istasyon], [Tarih], [Randevu_Saati]) VALUES (N'18', N'1', N'44', CAST(N'2019-09-01' AS Date), NULL)
GO
INSERT [dbo].[SEHIRLER] ([Sehir_No], [SehirAdi], [Tam_Adres]) VALUES (N'25', N'Erzurum', NULL)
INSERT [dbo].[SEHIRLER] ([Sehir_No], [SehirAdi], [Tam_Adres]) VALUES (N'34', N'Istanbul', NULL)
INSERT [dbo].[SEHIRLER] ([Sehir_No], [SehirAdi], [Tam_Adres]) VALUES (N'35', N'Izmir', NULL)
INSERT [dbo].[SEHIRLER] ([Sehir_No], [SehirAdi], [Tam_Adres]) VALUES (N'44', N'Sivas', N'Divriği/Erenköy')
INSERT [dbo].[SEHIRLER] ([Sehir_No], [SehirAdi], [Tam_Adres]) VALUES (N'49', N'Muş', N'Varto Atatürk Caddesi')
GO
ALTER TABLE [dbo].[ARAC_BILGISI]  WITH CHECK ADD FOREIGN KEY([Arac_Turu])
REFERENCES [dbo].[ARAC_TURU] ([Arac_Tur_No])
GO
ALTER TABLE [dbo].[ARAC_BILGISI]  WITH CHECK ADD FOREIGN KEY([Randevu_No])
REFERENCES [dbo].[RANDEVU] ([Randevu_No])
GO
ALTER TABLE [dbo].[ARAC_BILGISI]  WITH CHECK ADD FOREIGN KEY([Surucu_TCKN])
REFERENCES [dbo].[ARAC_SAHIBI] ([TCKN])
GO
ALTER TABLE [dbo].[RANDEVU]  WITH CHECK ADD FOREIGN KEY([Hizmet])
REFERENCES [dbo].[HIZMET] ([Hizmet_No])
GO
ALTER TABLE [dbo].[RANDEVU]  WITH CHECK ADD FOREIGN KEY([Istasyon])
REFERENCES [dbo].[SEHIRLER] ([Sehir_No])
GO
