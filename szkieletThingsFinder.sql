USE [ThingFinder]
GO
/****** Object:  Table [dbo].[filtry]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filtry](
	[id_filtr] [int] IDENTITY(1,1) NOT NULL,
	[id_kolor] [int] NOT NULL,
	[id_material] [int] NOT NULL,
 CONSTRAINT [PK_filtry] PRIMARY KEY CLUSTERED 
(
	[id_filtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kategoria]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoria](
	[id_kategoria] [int] IDENTITY(1,1) NOT NULL,
	[id_kategoria_nad] [int] NULL,
	[nazwa] [nvarchar](50) NOT NULL,
	[kod] [nchar](2) NOT NULL,
 CONSTRAINT [PK_kategoria] PRIMARY KEY CLUSTERED 
(
	[id_kategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kolory]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kolory](
	[id_kolor] [int] IDENTITY(1,1) NOT NULL,
	[nazwa_koloru] [varchar](40) NOT NULL,
	[wartosc] [int] NOT NULL,
 CONSTRAINT [PK_kolory] PRIMARY KEY CLUSTERED 
(
	[id_kolor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kontakt]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kontakt](
	[id_kontakt] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](20) NOT NULL,
	[nazwisko] [nvarchar](30) NOT NULL,
	[telefon] [nchar](12) NOT NULL,
 CONSTRAINT [PK_kontakt] PRIMARY KEY CLUSTERED 
(
	[id_kontakt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materialy]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materialy](
	[id_material] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [varchar](20) NOT NULL,
 CONSTRAINT [PK_materialy] PRIMARY KEY CLUSTERED 
(
	[id_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rzeczy_zarejestrowane]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rzeczy_zarejestrowane](
	[id_rzecz] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_filtr] [int] NOT NULL,
	[id_kat_gl] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[kod] [char](25) NOT NULL,
	[data_zarejstrowania] [datetime] NOT NULL,
	[nazwa] [nvarchar](30) NULL,
 CONSTRAINT [PK_rzeczy_zarejestrowane] PRIMARY KEY CLUSTERED 
(
	[id_rzecz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[status]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tablica_rzeczy_zgubionych]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablica_rzeczy_zgubionych](
	[id_zgubionej] [int] IDENTITY(1,1) NOT NULL,
	[id_kategoria] [int] NOT NULL,
	[id_kontakt] [int] NOT NULL,
	[nazwa] [nvarchar](45) NOT NULL,
	[x] [decimal](10, 6) NOT NULL,
	[y] [decimal](10, 6) NOT NULL,
	[zakres] [int] NULL,
 CONSTRAINT [PK_tablica_rzeczy_zgubionych] PRIMARY KEY CLUSTERED 
(
	[id_zgubionej] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tablica_rzeczy_znalezionych]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tablica_rzeczy_znalezionych](
	[id_znalezionego] [int] IDENTITY(1,1) NOT NULL,
	[id_kontakt] [int] NOT NULL,
	[id_kategoria] [int] NOT NULL,
	[nazwa] [varchar](45) NOT NULL,
	[x] [decimal](10, 6) NOT NULL,
	[y] [decimal](10, 6) NOT NULL,
	[slowa_klucze] [varchar](100) NOT NULL,
	[data_znalezienia] [datetime] NOT NULL,
 CONSTRAINT [PK_tablica_rzeczy_znalezionych] PRIMARY KEY CLUSTERED 
(
	[id_znalezionego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[uzytkownicy]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uzytkownicy](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[imie] [nvarchar](10) NOT NULL,
	[nazwisko] [nvarchar](10) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
	[miejscowosc] [nvarchar](30) NOT NULL,
	[ulica] [nvarchar](30) NOT NULL,
	[nr_mieszkania] [nchar](5) NOT NULL,
	[kod_pocztowy] [nchar](5) NOT NULL,
	[telefon] [nchar](12) NOT NULL,
	[status] [bit] NOT NULL,
	[kod] [nchar](5) NOT NULL,
 CONSTRAINT [PK_uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[zdjecia]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zdjecia](
	[id_zdjecia] [int] IDENTITY(1,1) NOT NULL,
	[id_rzeczy] [int] NOT NULL,
	[ikona] [image] NULL,
	[zdjecie] [image] NOT NULL,
	[skrot] [nvarchar](32) NOT NULL,
	[opis] [nvarchar](32) NULL,
 CONSTRAINT [PK_zdjecia] PRIMARY KEY CLUSTERED 
(
	[id_zdjecia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[zgloszenia]    Script Date: 2016-08-25 16:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zgloszenia](
	[id_zgloszenia] [int] IDENTITY(1,1) NOT NULL,
	[id_rzeczy] [int] NOT NULL,
	[x] [decimal](10, 6) NOT NULL,
	[y] [decimal](10, 6) NOT NULL,
	[opis] [nvarchar](100) NOT NULL,
	[data_znalezienia] [datetime] NOT NULL,
	[data_zgloszenia] [datetime] NOT NULL,
	[znalazca] [varchar](60) NULL,
	[id_znalazca] [int] NULL,
 CONSTRAINT [PK_zgloszenia] PRIMARY KEY CLUSTERED 
(
	[id_zgloszenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[filtry]  WITH CHECK ADD  CONSTRAINT [FK_filtry_kolory] FOREIGN KEY([id_kolor])
REFERENCES [dbo].[kolory] ([id_kolor])
GO
ALTER TABLE [dbo].[filtry] CHECK CONSTRAINT [FK_filtry_kolory]
GO
ALTER TABLE [dbo].[filtry]  WITH CHECK ADD  CONSTRAINT [FK_filtry_materialy] FOREIGN KEY([id_material])
REFERENCES [dbo].[materialy] ([id_material])
GO
ALTER TABLE [dbo].[filtry] CHECK CONSTRAINT [FK_filtry_materialy]
GO
ALTER TABLE [dbo].[kategoria]  WITH CHECK ADD  CONSTRAINT [FK_kategoria_kategoria] FOREIGN KEY([id_kategoria_nad])
REFERENCES [dbo].[kategoria] ([id_kategoria])
GO
ALTER TABLE [dbo].[kategoria] CHECK CONSTRAINT [FK_kategoria_kategoria]
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane]  WITH CHECK ADD  CONSTRAINT [FK_rzeczy_zarejestrowane_filtry] FOREIGN KEY([id_filtr])
REFERENCES [dbo].[filtry] ([id_filtr])
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane] CHECK CONSTRAINT [FK_rzeczy_zarejestrowane_filtry]
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane]  WITH CHECK ADD  CONSTRAINT [FK_rzeczy_zarejestrowane_kategoria] FOREIGN KEY([id_kat_gl])
REFERENCES [dbo].[kategoria] ([id_kategoria])
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane] CHECK CONSTRAINT [FK_rzeczy_zarejestrowane_kategoria]
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane]  WITH CHECK ADD  CONSTRAINT [FK_rzeczy_zarejestrowane_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id_status])
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane] CHECK CONSTRAINT [FK_rzeczy_zarejestrowane_status]
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane]  WITH CHECK ADD  CONSTRAINT [FK_rzeczy_zarejestrowane_uzytkownicy] FOREIGN KEY([id_user])
REFERENCES [dbo].[uzytkownicy] ([id_user])
GO
ALTER TABLE [dbo].[rzeczy_zarejestrowane] CHECK CONSTRAINT [FK_rzeczy_zarejestrowane_uzytkownicy]
GO
ALTER TABLE [dbo].[tablica_rzeczy_zgubionych]  WITH CHECK ADD  CONSTRAINT [FK_tablica_rzeczy_zgubionych_kategoria] FOREIGN KEY([id_kategoria])
REFERENCES [dbo].[kategoria] ([id_kategoria])
GO
ALTER TABLE [dbo].[tablica_rzeczy_zgubionych] CHECK CONSTRAINT [FK_tablica_rzeczy_zgubionych_kategoria]
GO
ALTER TABLE [dbo].[tablica_rzeczy_zgubionych]  WITH CHECK ADD  CONSTRAINT [FK_tablica_rzeczy_zgubionych_kontakt] FOREIGN KEY([id_kontakt])
REFERENCES [dbo].[kontakt] ([id_kontakt])
GO
ALTER TABLE [dbo].[tablica_rzeczy_zgubionych] CHECK CONSTRAINT [FK_tablica_rzeczy_zgubionych_kontakt]
GO
ALTER TABLE [dbo].[tablica_rzeczy_znalezionych]  WITH CHECK ADD  CONSTRAINT [FK_tablica_rzeczy_znalezionych_kategoria] FOREIGN KEY([id_kategoria])
REFERENCES [dbo].[kategoria] ([id_kategoria])
GO
ALTER TABLE [dbo].[tablica_rzeczy_znalezionych] CHECK CONSTRAINT [FK_tablica_rzeczy_znalezionych_kategoria]
GO
ALTER TABLE [dbo].[tablica_rzeczy_znalezionych]  WITH CHECK ADD  CONSTRAINT [FK_tablica_rzeczy_znalezionych_kontakt] FOREIGN KEY([id_kontakt])
REFERENCES [dbo].[kontakt] ([id_kontakt])
GO
ALTER TABLE [dbo].[tablica_rzeczy_znalezionych] CHECK CONSTRAINT [FK_tablica_rzeczy_znalezionych_kontakt]
GO
ALTER TABLE [dbo].[zdjecia]  WITH CHECK ADD  CONSTRAINT [FK_zdjecia_rzeczy_zarejestrowane] FOREIGN KEY([id_rzeczy])
REFERENCES [dbo].[rzeczy_zarejestrowane] ([id_rzecz])
GO
ALTER TABLE [dbo].[zdjecia] CHECK CONSTRAINT [FK_zdjecia_rzeczy_zarejestrowane]
GO
ALTER TABLE [dbo].[zgloszenia]  WITH CHECK ADD  CONSTRAINT [FK_zgloszenia_rzeczy_zarejestrowane] FOREIGN KEY([id_zgloszenia])
REFERENCES [dbo].[rzeczy_zarejestrowane] ([id_rzecz])
GO
ALTER TABLE [dbo].[zgloszenia] CHECK CONSTRAINT [FK_zgloszenia_rzeczy_zarejestrowane]
GO
ALTER TABLE [dbo].[zgloszenia]  WITH CHECK ADD  CONSTRAINT [FK_zgloszenia_uzytkownicy] FOREIGN KEY([id_znalazca])
REFERENCES [dbo].[uzytkownicy] ([id_user])
GO
ALTER TABLE [dbo].[zgloszenia] CHECK CONSTRAINT [FK_zgloszenia_uzytkownicy]
GO
