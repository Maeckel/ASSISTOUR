DROP DATABASE IF EXISTS assistour;

CREATE DATABASE IF NOT EXISTS assistour;
USE assistour;
# -----------------------------------------------------------------------------
#       TABLE : TRANSPORTEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TRANSPORTEUR
 (
   ID INTEGER(2) NOT NULL  ,
   NOM CHAR(32) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : MODEDETRANSPORT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MODEDETRANSPORT
 (
   IDMT INTEGER(2) NOT NULL  ,
   LIBELLE CHAR(32) NULL  
   , PRIMARY KEY (IDMT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : DSSINISTRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS DSSINISTRE
 (
   IDDS INTEGER(2) NOT NULL  ,
   IDTA INTEGER(2) NOT NULL  ,
   IDGARAGE INTEGER(2) NOT NULL  ,
   IDCONTRAT INTEGER(2) NOT NULL  ,
   LaDATE date NOT NULL  ,
   HEURES time NOT NULL  ,
   CAUSE CHAR(32) NOT NULL  ,
   DIAGNOSTIC CHAR(32) NOT NULL  ,
   LIEU CHAR(32) NOT NULL  ,
   NBPERSONNE INTEGER(2) NOT NULL  
   , PRIMARY KEY (IDDS) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : DATEDEP
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS DATEDEP
 (
   DATEDEPART date NOT NULL  
   , PRIMARY KEY (DATEDEPART) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : GARAGE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS GARAGE
 (
   IDGARAGE INT(4) NOT NULL  ,
   NOM CHAR(32) NOT NULL  ,
   ADRESSE CHAR(32) NOT NULL  ,
   MARQUE CHAR(255) NOT NULL  ,
   TEL INTEGER(20) NOT NULL  ,
   FORFAITS INTEGER(5) NOT NULL  
   , PRIMARY KEY (IDGARAGE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TECHNICIENASSISTANCE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TECHNICIENASSISTANCE
 (
   IDTA INTEGER(2) NOT NULL  ,
   NOMTA CHAR(32) NOT NULL  ,
   PRENOMTA CHAR(32) NOT NULL  
   , PRIMARY KEY (IDTA) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : COULEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COULEUR
 (
   CODECOULEUR INTEGER(2) NOT NULL  ,
   LIBELLECOULEUR CHAR(32) NULL  
   , PRIMARY KEY (CODECOULEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : HOTEL
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS HOTEL
 (
   IDHOTEL INTEGER(2) NOT NULL  ,
   NOM CHAR(32) NOT NULL  ,
   ADRESSE CHAR(50) NOT NULL  ,
   TEL INTEGER(20) NOT NULL  ,
   PRIXUNITÉ INTEGER(10) NOT NULL ,
   CODECOULEUR INTEGER(2) NOT NULL 
   , PRIMARY KEY (IDHOTEL) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CONTRAT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CONTRAT
 (
   IDCONTRAT INTEGER(2) NOT NULL  ,
   IDTYPECONTRAT INTEGER(2) NOT NULL  ,
   NUMADHERENT INTEGER(2) NOT NULL  ,
   PRIXNEGOCIE INTEGER(32) NOT NULL  ,
   IMMATRICULATION CHAR(32) NOT NULL  ,
   MARQUE CHAR(32) NOT NULL  ,
   TYPE CHAR(32) NOT NULL  ,
   MODELE CHAR(32) NOT NULL  ,
   DATEMISEENCIRCULATION date NOT NULL  
   , PRIMARY KEY (IDCONTRAT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ADHERENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADHERENT
 (
   NUMADHERENT INTEGER(2) NOT NULL  ,
   IDTYPECONTRAT INTEGER(2) NOT NULL  ,
   NOMADHERENT CHAR(32) NOT NULL  ,
   PRENOMADHERENT CHAR(32) NOT NULL  ,
   ADRESSEADHERENT CHAR(32) NOT NULL  ,
   CODEPOSTALADHERENT INTEGER(10) NOT NULL  ,
   VILLEADHERENT CHAR(32) NOT NULL  ,
   TELEPHONEADHERENT INTEGER(10) NOT NULL  
   , PRIMARY KEY (NUMADHERENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TYPECONTRAT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TYPECONTRAT
 (
   IDTYPECONTRAT INTEGER(2) NOT NULL  ,
   NOMTYPECONTRAT CHAR(32) NOT NULL  
   , PRIMARY KEY (IDTYPECONTRAT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ETAPE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ETAPE
 (
   NUMORDRE INTEGER(2) NOT NULL  ,
   IDDS INTEGER(2) NOT NULL  ,
   IDMT INTEGER(2) NOT NULL  ,
   ID INTEGER(2) NOT NULL  ,
   HORAIRE time NOT NULL  ,
   PRIX INTEGER(10) NOT NULL  ,
   VILLEDEPART CHAR(32) NOT NULL  ,
   VILLEARRIVE CHAR(32) NOT NULL  
   , PRIMARY KEY (IDDS,NUMORDRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : PROPOSER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PROPOSER
 (
   IDMT INTEGER(2) NOT NULL  ,
   ID INTEGER(2) NOT NULL  
   , PRIMARY KEY (IDMT,ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : HÉBERGER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS HÉBERGER
 (
   DATEDEPART date NOT NULL  ,
   IDDS INTEGER(2) NOT NULL  ,
   IDHOTEL INTEGER(2) NOT NULL  ,
   NBNUITÉE INTEGER(2) NOT NULL  ,
   DATEARRIVEE date NOT NULL  
   , PRIMARY KEY (DATEDEPART,IDDS,IDHOTEL) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TYPEOPERATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TYPEOPERATION
 (
   CODETO CHAR(32) NOT NULL  ,
   LIBELLETO CHAR(50) NULL  
   , PRIMARY KEY (CODETO) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : EFFECTUER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EFFECTUER
 (
   IDDS INTEGER(2) NOT NULL  ,
   CODETO CHAR(32) NOT NULL  
   , PRIMARY KEY (IDDS,CODETO) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE DSSINISTRE 
  ADD FOREIGN KEY FK_DSSINISTRE_TECHNICIENASSISTANCE (IDTA)
      REFERENCES TECHNICIENASSISTANCE (IDTA) ;


ALTER TABLE DSSINISTRE 
  ADD FOREIGN KEY FK_DSSINISTRE_GARAGE (IDGARAGE)
      REFERENCES GARAGE (IDGARAGE) ;


ALTER TABLE DSSINISTRE 
  ADD FOREIGN KEY FK_DSSINISTRE_CONTRAT (IDCONTRAT)
      REFERENCES CONTRAT (IDCONTRAT) ;


ALTER TABLE CONTRAT 
  ADD FOREIGN KEY FK_CONTRAT_TYPECONTRAT (IDTYPECONTRAT)
      REFERENCES TYPECONTRAT (IDTYPECONTRAT) ;


ALTER TABLE CONTRAT 
  ADD FOREIGN KEY FK_CONTRAT_ADHERENT (NUMADHERENT)
      REFERENCES ADHERENT (NUMADHERENT) ;


ALTER TABLE ADHERENT 
  ADD FOREIGN KEY FK_ADHERENT_TYPECONTRAT (IDTYPECONTRAT)
      REFERENCES TYPECONTRAT (IDTYPECONTRAT) ;


ALTER TABLE ETAPE 
  ADD FOREIGN KEY FK_ETAPE_MODEDETRANSPORT (IDMT)
      REFERENCES MODEDETRANSPORT (IDMT) ;


ALTER TABLE ETAPE 
  ADD FOREIGN KEY FK_ETAPE_TRANSPORTEUR (ID)
      REFERENCES TRANSPORTEUR (ID) ;


ALTER TABLE ETAPE 
  ADD FOREIGN KEY FK_ETAPE_DSSINISTRE (IDDS)
      REFERENCES DSSINISTRE (IDDS) ;


ALTER TABLE PROPOSER 
  ADD FOREIGN KEY FK_PROPOSER_MODEDETRANSPORT (IDMT)
      REFERENCES MODEDETRANSPORT (IDMT) ;


ALTER TABLE PROPOSER 
  ADD FOREIGN KEY FK_PROPOSER_TRANSPORTEUR (ID)
      REFERENCES TRANSPORTEUR (ID) ;


ALTER TABLE HÉBERGER 
  ADD FOREIGN KEY FK_HÉBERGER_DATEDEP (DATEDEPART)
      REFERENCES DATEDEP (DATEDEPART) ;


ALTER TABLE HÉBERGER 
  ADD FOREIGN KEY FK_HÉBERGER_DSSINISTRE (IDDS)
      REFERENCES DSSINISTRE (IDDS) ;


ALTER TABLE HÉBERGER 
  ADD FOREIGN KEY FK_HÉBERGER_HOTEL (IDHOTEL)
      REFERENCES HOTEL (IDHOTEL) ;
      
ALTER TABLE EFFECTUER 
  ADD FOREIGN KEY FK_EFFECTUER_DSSINISTRE (IDDS)
      REFERENCES DSSINISTRE (IDDS) ;


ALTER TABLE EFFECTUER 
  ADD FOREIGN KEY FK_EFFECTUER_TYPEOPERATION (CODETO)
      REFERENCES TYPEOPERATION (CODETO) ;

ALTER TABLE HOTEL 
  ADD FOREIGN KEY FK_HOTEL_COULEUR (CODECOULEUR)
      REFERENCES COULEUR (CODECOULEUR) ;

