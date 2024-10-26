CREATE TABLE ETL.CRIME_LACITY2 (
	DR_NO NUMBER(15,0),
	DATE_RPTD VARCHAR2(22),
	AREA_NAME VARCHAR2(11),
	CRM_CD_DESC VARCHAR2(56),
	CONSTRAINT CRIME_LACITY_PK PRIMARY KEY (DR_NO),
	CONSTRAINT SYS_C008645 CHECK ("DR_NO" IS NOT NULL)
);
CREATE UNIQUE INDEX CRIME_LACITY_PK ON ETL.CRIME_LACITY2 (DR_NO);