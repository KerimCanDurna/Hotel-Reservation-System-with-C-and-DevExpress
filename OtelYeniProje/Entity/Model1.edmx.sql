
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/11/2023 19:31:27
-- Generated from EDMX file: C:\Users\drnak\Desktop\Otel\Otel Tüm\OtelYeniProje\OtelYeniProje\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DbOtelYeni];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ilceler_iller]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ilceler] DROP CONSTRAINT [FK_ilceler_iller];
GO
IF OBJECT_ID(N'[dbo].[FK_TblBirim_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblBirim] DROP CONSTRAINT [FK_TblBirim_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblDepartman_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblDepartman] DROP CONSTRAINT [FK_TblDepartman_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblGorev_TblDepartman]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblGorev] DROP CONSTRAINT [FK_TblGorev_TblDepartman];
GO
IF OBJECT_ID(N'[dbo].[FK_TblGorev_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblGorev] DROP CONSTRAINT [FK_TblGorev_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblKasa_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblKasa] DROP CONSTRAINT [FK_TblKasa_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblKur_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblKur] DROP CONSTRAINT [FK_TblKur_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblMisafir_ilceler]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblMisafir] DROP CONSTRAINT [FK_TblMisafir_ilceler];
GO
IF OBJECT_ID(N'[dbo].[FK_TblMisafir_iller]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblMisafir] DROP CONSTRAINT [FK_TblMisafir_iller];
GO
IF OBJECT_ID(N'[dbo].[FK_TblMisafir_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblMisafir] DROP CONSTRAINT [FK_TblMisafir_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblOda_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblOda] DROP CONSTRAINT [FK_TblOda_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblPersonel_TblDepartman]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblPersonel] DROP CONSTRAINT [FK_TblPersonel_TblDepartman];
GO
IF OBJECT_ID(N'[dbo].[FK_TblPersonel_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblPersonel] DROP CONSTRAINT [FK_TblPersonel_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblPersonel_TblGorev]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblPersonel] DROP CONSTRAINT [FK_TblPersonel_TblGorev];
GO
IF OBJECT_ID(N'[dbo].[FK_TblRezervasyon_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblRezervasyon] DROP CONSTRAINT [FK_TblRezervasyon_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblRezervasyon_TblMisafir]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblRezervasyon] DROP CONSTRAINT [FK_TblRezervasyon_TblMisafir];
GO
IF OBJECT_ID(N'[dbo].[FK_TblRezervasyon_TblOda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblRezervasyon] DROP CONSTRAINT [FK_TblRezervasyon_TblOda];
GO
IF OBJECT_ID(N'[dbo].[FK_TblTelefon_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblTelefon] DROP CONSTRAINT [FK_TblTelefon_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblUrun_TblBirim]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblUrun] DROP CONSTRAINT [FK_TblUrun_TblBirim];
GO
IF OBJECT_ID(N'[dbo].[FK_TblUrun_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblUrun] DROP CONSTRAINT [FK_TblUrun_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblUrun_TblUrunGrup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblUrun] DROP CONSTRAINT [FK_TblUrun_TblUrunGrup];
GO
IF OBJECT_ID(N'[dbo].[FK_TblUrunGrup_TblDurum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblUrunGrup] DROP CONSTRAINT [FK_TblUrunGrup_TblDurum];
GO
IF OBJECT_ID(N'[dbo].[FK_TblUrunHareket_TblUrun]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblUrunHareket] DROP CONSTRAINT [FK_TblUrunHareket_TblUrun];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ilceler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ilceler];
GO
IF OBJECT_ID(N'[dbo].[iller]', 'U') IS NOT NULL
    DROP TABLE [dbo].[iller];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TblAdmin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblAdmin];
GO
IF OBJECT_ID(N'[dbo].[TblBirim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblBirim];
GO
IF OBJECT_ID(N'[dbo].[TblDepartman]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblDepartman];
GO
IF OBJECT_ID(N'[dbo].[TblDurum]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblDurum];
GO
IF OBJECT_ID(N'[dbo].[TblEkibimiz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblEkibimiz];
GO
IF OBJECT_ID(N'[dbo].[TblGorev]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblGorev];
GO
IF OBJECT_ID(N'[dbo].[TblHakkimda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblHakkimda];
GO
IF OBJECT_ID(N'[dbo].[Tbliletisim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbliletisim];
GO
IF OBJECT_ID(N'[dbo].[TblKasa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblKasa];
GO
IF OBJECT_ID(N'[dbo].[TblKasaCikisHareketi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblKasaCikisHareketi];
GO
IF OBJECT_ID(N'[dbo].[TblKasaHareketi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblKasaHareketi];
GO
IF OBJECT_ID(N'[dbo].[TblKur]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblKur];
GO
IF OBJECT_ID(N'[dbo].[TblMesaj]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblMesaj];
GO
IF OBJECT_ID(N'[dbo].[TblMesaj2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblMesaj2];
GO
IF OBJECT_ID(N'[dbo].[TblMisafir]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblMisafir];
GO
IF OBJECT_ID(N'[dbo].[TblOda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblOda];
GO
IF OBJECT_ID(N'[dbo].[TblOnRezervasyon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblOnRezervasyon];
GO
IF OBJECT_ID(N'[dbo].[TblPersonel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblPersonel];
GO
IF OBJECT_ID(N'[dbo].[TblRezervasyon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblRezervasyon];
GO
IF OBJECT_ID(N'[dbo].[TblTelefon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblTelefon];
GO
IF OBJECT_ID(N'[dbo].[TblUlke]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblUlke];
GO
IF OBJECT_ID(N'[dbo].[TblUrun]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblUrun];
GO
IF OBJECT_ID(N'[dbo].[TblUrunGrup]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblUrunGrup];
GO
IF OBJECT_ID(N'[dbo].[TblUrunHareket]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblUrunHareket];
GO
IF OBJECT_ID(N'[dbo].[TblYeniKayit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblYeniKayit];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TblBirim'
CREATE TABLE [dbo].[TblBirim] (
    [BirimID] int  NOT NULL,
    [BirimAd] nvarchar(50)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblDepartman'
CREATE TABLE [dbo].[TblDepartman] (
    [DepartmanID] int  NOT NULL,
    [DepartmanAd] nvarchar(50)  NULL,
    [Telefon] char(4)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblDurum'
CREATE TABLE [dbo].[TblDurum] (
    [DurumID] int IDENTITY(1,1) NOT NULL,
    [DurumAd] nvarchar(20)  NULL
);
GO

-- Creating table 'TblGorev'
CREATE TABLE [dbo].[TblGorev] (
    [GorevID] int IDENTITY(1,1) NOT NULL,
    [GorevAd] nvarchar(50)  NULL,
    [Departman] int  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblKasa'
CREATE TABLE [dbo].[TblKasa] (
    [KasaID] int IDENTITY(1,1) NOT NULL,
    [KasaAdi] nvarchar(50)  NULL,
    [Bakiye] decimal(18,2)  NULL,
    [Giren] decimal(18,2)  NULL,
    [Cikan] decimal(18,2)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblKur'
CREATE TABLE [dbo].[TblKur] (
    [KurID] int IDENTITY(1,1) NOT NULL,
    [KurAd] nvarchar(50)  NULL,
    [Sembol] nvarchar(1)  NULL,
    [Deger] decimal(18,4)  NULL,
    [Tarih] datetime  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblMisafir'
CREATE TABLE [dbo].[TblMisafir] (
    [MisafirID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [TC] char(11)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Adres] nvarchar(200)  NULL,
    [Aciklama] nvarchar(250)  NULL,
    [KimlikFoto1] nvarchar(100)  NULL,
    [KimlikFoto2] nvarchar(100)  NULL,
    [Ulke] int  NULL,
    [Durum] int  NULL,
    [sehir] int  NULL,
    [ilce] int  NULL
);
GO

-- Creating table 'TblOda'
CREATE TABLE [dbo].[TblOda] (
    [OdaID] int IDENTITY(1,1) NOT NULL,
    [OdaNo] char(3)  NULL,
    [Kat] varchar(2)  NULL,
    [Kapasite] char(1)  NULL,
    [Aciklama] nvarchar(200)  NULL,
    [Telefon] char(4)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblPersonel'
CREATE TABLE [dbo].[TblPersonel] (
    [PersonelID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [TC] char(11)  NULL,
    [Adres] nvarchar(250)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Mail] nvarchar(50)  NULL,
    [IseGirisTarih] datetime  NULL,
    [IstenCikisTarih] datetime  NULL,
    [Departman] int  NULL,
    [Gorev] int  NULL,
    [Aciklama] nvarchar(250)  NULL,
    [Durum] int  NULL,
    [KimlikOn] nvarchar(250)  NULL,
    [KimlkArka] nvarchar(250)  NULL,
    [Sifre] nvarchar(20)  NULL,
    [Yetki] char(1)  NULL
);
GO

-- Creating table 'TblTelefon'
CREATE TABLE [dbo].[TblTelefon] (
    [TelefonID] int IDENTITY(1,1) NOT NULL,
    [Aciklama] nvarchar(50)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblUlke'
CREATE TABLE [dbo].[TblUlke] (
    [UlkeID] int IDENTITY(1,1) NOT NULL,
    [UlkeAd] nvarchar(30)  NULL
);
GO

-- Creating table 'TblUrun'
CREATE TABLE [dbo].[TblUrun] (
    [UrunID] int IDENTITY(1,1) NOT NULL,
    [UrunAd] nvarchar(50)  NULL,
    [UrunGrup] int  NULL,
    [Birim] int  NULL,
    [Fiyat] decimal(18,2)  NULL,
    [Toplam] decimal(18,2)  NULL,
    [Kdv] tinyint  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblUrunGrup'
CREATE TABLE [dbo].[TblUrunGrup] (
    [UrunGrupID] int IDENTITY(1,1) NOT NULL,
    [UrunGrupAd] nvarchar(50)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'ilceler'
CREATE TABLE [dbo].[ilceler] (
    [id] int  NOT NULL,
    [ilce] nvarchar(255)  NULL,
    [sehir] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'iller'
CREATE TABLE [dbo].[iller] (
    [id] int IDENTITY(1,1) NOT NULL,
    [sehir] nvarchar(255)  NULL
);
GO

-- Creating table 'TblUrunHareket'
CREATE TABLE [dbo].[TblUrunHareket] (
    [Hareketid] int IDENTITY(1,1) NOT NULL,
    [Urun] int  NULL,
    [HareketTuru] nvarchar(5)  NULL,
    [Miktar] decimal(18,2)  NULL,
    [Tarih] datetime  NULL,
    [Aciklama] nvarchar(1000)  NULL,
    [BirimFiyat] decimal(18,2)  NULL,
    [ToplamFiyat] decimal(18,2)  NULL
);
GO

-- Creating table 'TblRezervasyon'
CREATE TABLE [dbo].[TblRezervasyon] (
    [RezervasyonID] int IDENTITY(1,1) NOT NULL,
    [Misafir] int  NULL,
    [GirisTarih] datetime  NULL,
    [CikisTarih] datetime  NULL,
    [Kisi] char(1)  NULL,
    [Oda] int  NULL,
    [RezervasyonAdSoyad] nvarchar(30)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Aciklama] nvarchar(500)  NULL,
    [Durum] int  NULL,
    [Kisi1] int  NULL,
    [Kisi2] int  NULL,
    [Kisi3] int  NULL,
    [Toplam] decimal(18,2)  NULL,
    [KasayaAktar] bit  NULL
);
GO

-- Creating table 'TblYeniKayit'
CREATE TABLE [dbo].[TblYeniKayit] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Sifre] nvarchar(20)  NULL
);
GO

-- Creating table 'TblOnRezervasyon'
CREATE TABLE [dbo].[TblOnRezervasyon] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Mail] nvarchar(50)  NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [GirisTarih] datetime  NULL,
    [CikisTarih] datetime  NULL,
    [Kisi] nvarchar(1)  NULL,
    [Telefon] nvarchar(50)  NULL,
    [Aciklama] nvarchar(50)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'TblEkibimiz'
CREATE TABLE [dbo].[TblEkibimiz] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [Unvan] nvarchar(50)  NULL,
    [Gorsel] nvarchar(250)  NULL
);
GO

-- Creating table 'Tbliletisim'
CREATE TABLE [dbo].[Tbliletisim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aciklama] nvarchar(1000)  NULL,
    [Koordinat] nvarchar(1000)  NULL,
    [Telefon] nvarchar(30)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Adres] nvarchar(250)  NULL
);
GO

-- Creating table 'TblMesaj'
CREATE TABLE [dbo].[TblMesaj] (
    [MesajID] int IDENTITY(1,1) NOT NULL,
    [Gonderen] nvarchar(50)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Konu] nvarchar(100)  NULL,
    [Mesaj] nvarchar(1000)  NULL
);
GO

-- Creating table 'TblMesaj2'
CREATE TABLE [dbo].[TblMesaj2] (
    [MesajID] int IDENTITY(1,1) NOT NULL,
    [Gonderen] nvarchar(100)  NULL,
    [Alici] nvarchar(100)  NULL,
    [Konu] nvarchar(100)  NULL,
    [Mesaj] nvarchar(max)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'TblHakkimda'
CREATE TABLE [dbo].[TblHakkimda] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Hakkimda1] nvarchar(1000)  NULL,
    [Hakkimda2] nvarchar(1000)  NULL,
    [Hakkimda3] nvarchar(1000)  NULL,
    [Hakkimda4] nvarchar(1000)  NULL
);
GO

-- Creating table 'TblAdmin'
CREATE TABLE [dbo].[TblAdmin] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Kullanici] nvarchar(20)  NULL,
    [Sifre] nvarchar(20)  NULL,
    [Rol] char(1)  NULL
);
GO

-- Creating table 'TblKasaHareketi'
CREATE TABLE [dbo].[TblKasaHareketi] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Misafir] nvarchar(50)  NULL,
    [Tarih] datetime  NULL,
    [Tutar] decimal(18,2)  NULL
);
GO

-- Creating table 'TblKasaCikisHareketi'
CREATE TABLE [dbo].[TblKasaCikisHareketi] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aciklama] nvarchar(250)  NULL,
    [Tarih] datetime  NULL,
    [Tutar] decimal(18,2)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [BirimID] in table 'TblBirim'
ALTER TABLE [dbo].[TblBirim]
ADD CONSTRAINT [PK_TblBirim]
    PRIMARY KEY CLUSTERED ([BirimID] ASC);
GO

-- Creating primary key on [DepartmanID] in table 'TblDepartman'
ALTER TABLE [dbo].[TblDepartman]
ADD CONSTRAINT [PK_TblDepartman]
    PRIMARY KEY CLUSTERED ([DepartmanID] ASC);
GO

-- Creating primary key on [DurumID] in table 'TblDurum'
ALTER TABLE [dbo].[TblDurum]
ADD CONSTRAINT [PK_TblDurum]
    PRIMARY KEY CLUSTERED ([DurumID] ASC);
GO

-- Creating primary key on [GorevID] in table 'TblGorev'
ALTER TABLE [dbo].[TblGorev]
ADD CONSTRAINT [PK_TblGorev]
    PRIMARY KEY CLUSTERED ([GorevID] ASC);
GO

-- Creating primary key on [KasaID] in table 'TblKasa'
ALTER TABLE [dbo].[TblKasa]
ADD CONSTRAINT [PK_TblKasa]
    PRIMARY KEY CLUSTERED ([KasaID] ASC);
GO

-- Creating primary key on [KurID] in table 'TblKur'
ALTER TABLE [dbo].[TblKur]
ADD CONSTRAINT [PK_TblKur]
    PRIMARY KEY CLUSTERED ([KurID] ASC);
GO

-- Creating primary key on [MisafirID] in table 'TblMisafir'
ALTER TABLE [dbo].[TblMisafir]
ADD CONSTRAINT [PK_TblMisafir]
    PRIMARY KEY CLUSTERED ([MisafirID] ASC);
GO

-- Creating primary key on [OdaID] in table 'TblOda'
ALTER TABLE [dbo].[TblOda]
ADD CONSTRAINT [PK_TblOda]
    PRIMARY KEY CLUSTERED ([OdaID] ASC);
GO

-- Creating primary key on [PersonelID] in table 'TblPersonel'
ALTER TABLE [dbo].[TblPersonel]
ADD CONSTRAINT [PK_TblPersonel]
    PRIMARY KEY CLUSTERED ([PersonelID] ASC);
GO

-- Creating primary key on [TelefonID] in table 'TblTelefon'
ALTER TABLE [dbo].[TblTelefon]
ADD CONSTRAINT [PK_TblTelefon]
    PRIMARY KEY CLUSTERED ([TelefonID] ASC);
GO

-- Creating primary key on [UlkeID] in table 'TblUlke'
ALTER TABLE [dbo].[TblUlke]
ADD CONSTRAINT [PK_TblUlke]
    PRIMARY KEY CLUSTERED ([UlkeID] ASC);
GO

-- Creating primary key on [UrunID] in table 'TblUrun'
ALTER TABLE [dbo].[TblUrun]
ADD CONSTRAINT [PK_TblUrun]
    PRIMARY KEY CLUSTERED ([UrunID] ASC);
GO

-- Creating primary key on [UrunGrupID] in table 'TblUrunGrup'
ALTER TABLE [dbo].[TblUrunGrup]
ADD CONSTRAINT [PK_TblUrunGrup]
    PRIMARY KEY CLUSTERED ([UrunGrupID] ASC);
GO

-- Creating primary key on [id] in table 'ilceler'
ALTER TABLE [dbo].[ilceler]
ADD CONSTRAINT [PK_ilceler]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'iller'
ALTER TABLE [dbo].[iller]
ADD CONSTRAINT [PK_iller]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Hareketid] in table 'TblUrunHareket'
ALTER TABLE [dbo].[TblUrunHareket]
ADD CONSTRAINT [PK_TblUrunHareket]
    PRIMARY KEY CLUSTERED ([Hareketid] ASC);
GO

-- Creating primary key on [RezervasyonID] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [PK_TblRezervasyon]
    PRIMARY KEY CLUSTERED ([RezervasyonID] ASC);
GO

-- Creating primary key on [ID] in table 'TblYeniKayit'
ALTER TABLE [dbo].[TblYeniKayit]
ADD CONSTRAINT [PK_TblYeniKayit]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblOnRezervasyon'
ALTER TABLE [dbo].[TblOnRezervasyon]
ADD CONSTRAINT [PK_TblOnRezervasyon]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblEkibimiz'
ALTER TABLE [dbo].[TblEkibimiz]
ADD CONSTRAINT [PK_TblEkibimiz]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Tbliletisim'
ALTER TABLE [dbo].[Tbliletisim]
ADD CONSTRAINT [PK_Tbliletisim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MesajID] in table 'TblMesaj'
ALTER TABLE [dbo].[TblMesaj]
ADD CONSTRAINT [PK_TblMesaj]
    PRIMARY KEY CLUSTERED ([MesajID] ASC);
GO

-- Creating primary key on [MesajID] in table 'TblMesaj2'
ALTER TABLE [dbo].[TblMesaj2]
ADD CONSTRAINT [PK_TblMesaj2]
    PRIMARY KEY CLUSTERED ([MesajID] ASC);
GO

-- Creating primary key on [ID] in table 'TblHakkimda'
ALTER TABLE [dbo].[TblHakkimda]
ADD CONSTRAINT [PK_TblHakkimda]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblAdmin'
ALTER TABLE [dbo].[TblAdmin]
ADD CONSTRAINT [PK_TblAdmin]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblKasaHareketi'
ALTER TABLE [dbo].[TblKasaHareketi]
ADD CONSTRAINT [PK_TblKasaHareketi]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblKasaCikisHareketi'
ALTER TABLE [dbo].[TblKasaCikisHareketi]
ADD CONSTRAINT [PK_TblKasaCikisHareketi]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Durum] in table 'TblBirim'
ALTER TABLE [dbo].[TblBirim]
ADD CONSTRAINT [FK_TblBirim_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblBirim_TblDurum'
CREATE INDEX [IX_FK_TblBirim_TblDurum]
ON [dbo].[TblBirim]
    ([Durum]);
GO

-- Creating foreign key on [Birim] in table 'TblUrun'
ALTER TABLE [dbo].[TblUrun]
ADD CONSTRAINT [FK_TblUrun_TblBirim]
    FOREIGN KEY ([Birim])
    REFERENCES [dbo].[TblBirim]
        ([BirimID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblUrun_TblBirim'
CREATE INDEX [IX_FK_TblUrun_TblBirim]
ON [dbo].[TblUrun]
    ([Birim]);
GO

-- Creating foreign key on [Durum] in table 'TblDepartman'
ALTER TABLE [dbo].[TblDepartman]
ADD CONSTRAINT [FK_TblDepartman_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblDepartman_TblDurum'
CREATE INDEX [IX_FK_TblDepartman_TblDurum]
ON [dbo].[TblDepartman]
    ([Durum]);
GO

-- Creating foreign key on [Departman] in table 'TblGorev'
ALTER TABLE [dbo].[TblGorev]
ADD CONSTRAINT [FK_TblGorev_TblDepartman]
    FOREIGN KEY ([Departman])
    REFERENCES [dbo].[TblDepartman]
        ([DepartmanID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblGorev_TblDepartman'
CREATE INDEX [IX_FK_TblGorev_TblDepartman]
ON [dbo].[TblGorev]
    ([Departman]);
GO

-- Creating foreign key on [Departman] in table 'TblPersonel'
ALTER TABLE [dbo].[TblPersonel]
ADD CONSTRAINT [FK_TblPersonel_TblDepartman]
    FOREIGN KEY ([Departman])
    REFERENCES [dbo].[TblDepartman]
        ([DepartmanID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblPersonel_TblDepartman'
CREATE INDEX [IX_FK_TblPersonel_TblDepartman]
ON [dbo].[TblPersonel]
    ([Departman]);
GO

-- Creating foreign key on [Durum] in table 'TblGorev'
ALTER TABLE [dbo].[TblGorev]
ADD CONSTRAINT [FK_TblGorev_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblGorev_TblDurum'
CREATE INDEX [IX_FK_TblGorev_TblDurum]
ON [dbo].[TblGorev]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblKasa'
ALTER TABLE [dbo].[TblKasa]
ADD CONSTRAINT [FK_TblKasa_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblKasa_TblDurum'
CREATE INDEX [IX_FK_TblKasa_TblDurum]
ON [dbo].[TblKasa]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblKur'
ALTER TABLE [dbo].[TblKur]
ADD CONSTRAINT [FK_TblKur_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblKur_TblDurum'
CREATE INDEX [IX_FK_TblKur_TblDurum]
ON [dbo].[TblKur]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblMisafir'
ALTER TABLE [dbo].[TblMisafir]
ADD CONSTRAINT [FK_TblMisafir_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblMisafir_TblDurum'
CREATE INDEX [IX_FK_TblMisafir_TblDurum]
ON [dbo].[TblMisafir]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblOda'
ALTER TABLE [dbo].[TblOda]
ADD CONSTRAINT [FK_TblOda_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblOda_TblDurum'
CREATE INDEX [IX_FK_TblOda_TblDurum]
ON [dbo].[TblOda]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblPersonel'
ALTER TABLE [dbo].[TblPersonel]
ADD CONSTRAINT [FK_TblPersonel_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblPersonel_TblDurum'
CREATE INDEX [IX_FK_TblPersonel_TblDurum]
ON [dbo].[TblPersonel]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblTelefon'
ALTER TABLE [dbo].[TblTelefon]
ADD CONSTRAINT [FK_TblTelefon_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblTelefon_TblDurum'
CREATE INDEX [IX_FK_TblTelefon_TblDurum]
ON [dbo].[TblTelefon]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblUrun'
ALTER TABLE [dbo].[TblUrun]
ADD CONSTRAINT [FK_TblUrun_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblUrun_TblDurum'
CREATE INDEX [IX_FK_TblUrun_TblDurum]
ON [dbo].[TblUrun]
    ([Durum]);
GO

-- Creating foreign key on [Durum] in table 'TblUrunGrup'
ALTER TABLE [dbo].[TblUrunGrup]
ADD CONSTRAINT [FK_TblUrunGrup_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblUrunGrup_TblDurum'
CREATE INDEX [IX_FK_TblUrunGrup_TblDurum]
ON [dbo].[TblUrunGrup]
    ([Durum]);
GO

-- Creating foreign key on [Gorev] in table 'TblPersonel'
ALTER TABLE [dbo].[TblPersonel]
ADD CONSTRAINT [FK_TblPersonel_TblGorev]
    FOREIGN KEY ([Gorev])
    REFERENCES [dbo].[TblGorev]
        ([GorevID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblPersonel_TblGorev'
CREATE INDEX [IX_FK_TblPersonel_TblGorev]
ON [dbo].[TblPersonel]
    ([Gorev]);
GO

-- Creating foreign key on [UrunGrup] in table 'TblUrun'
ALTER TABLE [dbo].[TblUrun]
ADD CONSTRAINT [FK_TblUrun_TblUrunGrup]
    FOREIGN KEY ([UrunGrup])
    REFERENCES [dbo].[TblUrunGrup]
        ([UrunGrupID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblUrun_TblUrunGrup'
CREATE INDEX [IX_FK_TblUrun_TblUrunGrup]
ON [dbo].[TblUrun]
    ([UrunGrup]);
GO

-- Creating foreign key on [sehir] in table 'ilceler'
ALTER TABLE [dbo].[ilceler]
ADD CONSTRAINT [FK_ilceler_iller]
    FOREIGN KEY ([sehir])
    REFERENCES [dbo].[iller]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ilceler_iller'
CREATE INDEX [IX_FK_ilceler_iller]
ON [dbo].[ilceler]
    ([sehir]);
GO

-- Creating foreign key on [ilce] in table 'TblMisafir'
ALTER TABLE [dbo].[TblMisafir]
ADD CONSTRAINT [FK_TblMisafir_ilceler]
    FOREIGN KEY ([ilce])
    REFERENCES [dbo].[ilceler]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblMisafir_ilceler'
CREATE INDEX [IX_FK_TblMisafir_ilceler]
ON [dbo].[TblMisafir]
    ([ilce]);
GO

-- Creating foreign key on [sehir] in table 'TblMisafir'
ALTER TABLE [dbo].[TblMisafir]
ADD CONSTRAINT [FK_TblMisafir_iller]
    FOREIGN KEY ([sehir])
    REFERENCES [dbo].[iller]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblMisafir_iller'
CREATE INDEX [IX_FK_TblMisafir_iller]
ON [dbo].[TblMisafir]
    ([sehir]);
GO

-- Creating foreign key on [Urun] in table 'TblUrunHareket'
ALTER TABLE [dbo].[TblUrunHareket]
ADD CONSTRAINT [FK_TblUrunHareket_TblUrun]
    FOREIGN KEY ([Urun])
    REFERENCES [dbo].[TblUrun]
        ([UrunID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblUrunHareket_TblUrun'
CREATE INDEX [IX_FK_TblUrunHareket_TblUrun]
ON [dbo].[TblUrunHareket]
    ([Urun]);
GO

-- Creating foreign key on [Durum] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [FK_TblRezervasyon_TblDurum]
    FOREIGN KEY ([Durum])
    REFERENCES [dbo].[TblDurum]
        ([DurumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblRezervasyon_TblDurum'
CREATE INDEX [IX_FK_TblRezervasyon_TblDurum]
ON [dbo].[TblRezervasyon]
    ([Durum]);
GO

-- Creating foreign key on [Misafir] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [FK_TblRezervasyon_TblMisafir]
    FOREIGN KEY ([Misafir])
    REFERENCES [dbo].[TblMisafir]
        ([MisafirID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblRezervasyon_TblMisafir'
CREATE INDEX [IX_FK_TblRezervasyon_TblMisafir]
ON [dbo].[TblRezervasyon]
    ([Misafir]);
GO

-- Creating foreign key on [Oda] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [FK_TblRezervasyon_TblOda]
    FOREIGN KEY ([Oda])
    REFERENCES [dbo].[TblOda]
        ([OdaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblRezervasyon_TblOda'
CREATE INDEX [IX_FK_TblRezervasyon_TblOda]
ON [dbo].[TblRezervasyon]
    ([Oda]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------