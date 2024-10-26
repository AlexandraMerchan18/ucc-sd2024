CREATE TABLE ETL.CRIME_LACITY6 (
	DR_NO NUMBER(15,0),
	DATE_RPTD VARCHAR2(22),
	AREA_NAME VARCHAR2(50),
	CRM_CD_DESC VARCHAR2(56),
	LOCATION VARCHAR2(100),
	MOCODES VARCHAR2(50),
	VICT_AGE NUMBER(3,0),
	VICT_SEX VARCHAR2(1),
	VICT_DESCENT VARCHAR2(2),
	PREMIS_DESC VARCHAR2(100),
	WEAPON_DESC VARCHAR2(50),
	STATUS VARCHAR2(10),
	STATUS_DESC VARCHAR2(50),
	AREA VARCHAR2(50),
	RPT_DIST_NO VARCHAR2(50),
	PART_1_2 VARCHAR2(10),
	CRM_CD VARCHAR2(50),
	PREMIS_CD VARCHAR2(50),
	WEAPON_USED_CD VARCHAR2(50),
	CRM_CD_1 VARCHAR2(50),
	CRM_CD_2 VARCHAR2(50),
	CONSTRAINT CRIME_LACITY6_PK PRIMARY KEY (DR_NO),
	CONSTRAINT SYS_C008660 CHECK ("DR_NO" IS NOT NULL)
);
CREATE UNIQUE INDEX CRIME_LACITY6_PK ON ETL.CRIME_LACITY6 (DR_NO)

SELECT * FROM ETL.CRIME_LACITY6 cl 