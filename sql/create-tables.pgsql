CREATE TABLE IF NOT EXISTS basiclandpropertyunit
(
   RECORD_IDENTIFIER         INTEGER,
   CHANGE_TYPE               CHAR(1),
   PRO_ORDER                 INTEGER,
   UPRN                 NUMERIC(12,0),
   LOGICAL_STATUS            INTEGER,
   BLPU_STATE                INTEGER,
   BLPU_STATE_DATE           VARCHAR,
   PARENT_UPRN          NUMERIC(12,0),
    X_COORDINATE        NUMERIC(8,2),
    Y_COORDINATE        NUMERIC(9,2),
    LATITUDE            NUMERIC(9,7),
    LONGITUDE           NUMERIC(8,7),
   RPC                       CHAR(1),
   LOCAL_CUSTODIAN_CODE      INTEGER,
   COUNTRY                   CHAR(1),
  START_DATE                CHAR(10),
   END_DATE                  VARCHAR,
   LAST_UPDATE_DATE          VARCHAR,
   ENTRY_DATE                VARCHAR,
   ADDRESSBASE_POSTAL     VARCHAR(1),
   POSTCODE_LOCATOR          VARCHAR,
    MULTI_OCC_COUNT           INTEGER
);

CREATE TABLE IF NOT EXISTS classification
(
   RECORD_IDENTIFIER    INTEGER,
   CHANGE_TYPE          CHAR(1),
   PRO_ORDER            INTEGER,
   UPRN                  FLOAT8,
   CLASS_KEY            VARCHAR,
   CLASSIFICATION_CODE  VARCHAR,
   CLASS_SCHEME         VARCHAR,
   SCHEME_VERSION        FLOAT8,
   START_DATE          CHAR(10),
   END_DATE            CHAR(10),
   LAST_UPDATE_DATE    CHAR(10),
   ENTRY_DATE          CHAR(10)
);

CREATE TABLE IF NOT EXISTS deliverypointaddress
(
  RECORD_IDENTIFIER                   INTEGER,
  CHANGE_TYPE                         CHAR(1),
  PRO_ORDER                           INTEGER,
  UPRN                                 FLOAT8,
  UDPRN                           NUMERIC(8,0),
  ORGANISATION_NAME               VARCHAR(60),
  DEPARTMENT_NAME                 VARCHAR(60),
  SUB_BUILDING_NAME               VARCHAR(30),
  BUILDING_NAME                   VARCHAR(50),
  BUILDING_NUMBER                 NUMERIC(4,0),
  DEPENDENT_THOROUGHFARE          VARCHAR(80),
  THOROUGHFARE                    VARCHAR(80),
  DOUBLE_DEPENDENT_LOCALITY       VARCHAR(35),
  DEPENDENT_LOCALITY              VARCHAR(35),
  POST_TOWN                       VARCHAR(30),
  POSTCODE                         VARCHAR(8),
  POSTCODE_TYPE                       CHAR(1),
  DELIVERY_POINT_SUFFIX               VARCHAR,
  WELSH_DEPENDENT_THOROUGHFARE        VARCHAR,
  WELSH_THOROUGHFARE                  VARCHAR,
  WELSH_DOUBLE_DEPENDENT_LOCALITY     VARCHAR,
  WELSH_DEPENDENT_LOCALITY            VARCHAR,
  WELSH_POST_TOWN                     VARCHAR,
  PO_BOX_NUMBER                    VARCHAR(6),
  PROCESS_DATE                        VARCHAR,
  START_DATE                         CHAR(10),
  END_DATE                           CHAR(10),
  LAST_UPDATE_DATE                   CHAR(10),
  ENTRY_DATE                         CHAR(10)
);

CREATE TABLE IF NOT EXISTS landpropertyidentifier
(
  RECORD_IDENTIFIER     INTEGER,
  CHANGE_TYPE           CHAR(1),
  PRO_ORDER             INTEGER,
  UPRN                   FLOAT8,
  LPI_KEY               VARCHAR,
  LANGUAGE              VARCHAR,
  LOGICAL_STATUS        INTEGER,
  START_DATE           CHAR(10),
  END_DATE             CHAR(10),
  LAST_UPDATE_DATE     CHAR(10),
  ENTRY_DATE           CHAR(10),
  SAO_START_NUMBER      INTEGER,
  SAO_START_SUFFIX      VARCHAR,
  SAO_END_NUMBER        INTEGER,
  SAO_END_SUFFIX        VARCHAR,
  SAO_TEXT              VARCHAR,
  PAO_START_NUMBER      INTEGER,
  PAO_START_SUFFIX      VARCHAR,
  PAO_END_NUMBER        INTEGER,
  PAO_END_SUFFIX        VARCHAR,
  PAO_TEXT              VARCHAR,
  USRN                  INTEGER,
  USRN_MATCH_INDICATOR  INTEGER,
  AREA_NAME             VARCHAR,
  LEVEL                 VARCHAR,
  OFFICIAL_FLAG         VARCHAR
);

CREATE TABLE IF NOT EXISTS organisation
(
  RECORD_IDENTIFIER  INTEGER,
  CHANGE_TYPE        CHAR(1),
  PRO_ORDER          INTEGER,
  UPRN                FLOAT8,
  ORG_KEY            VARCHAR,
  ORGANISATION       VARCHAR,
  LEGAL_NAME         VARCHAR,
  START_DATE        CHAR(10),
  END_DATE          CHAR(10),
  LAST_UPDATE_DATE  CHAR(10),
  ENTRY_DATE        CHAR(10)
);

CREATE TABLE IF NOT EXISTS applicationcrossreference
(
  RECORD_IDENTIFIER  INTEGER,
  CHANGE_TYPE        CHAR(1),
  PRO_ORDER          INTEGER,
  UPRN                FLOAT8,
  XREF_KEY           VARCHAR,
  CROSS_REFERENCE    VARCHAR,
  VERSION            INTEGER,
  SOURCE             VARCHAR,
  START_DATE        CHAR(10),
  END_DATE          CHAR(10),
  LAST_UPDATE_DATE  CHAR(10),
  ENTRY_DATE        CHAR(10)
);

CREATE TABLE IF NOT EXISTS street
(
  RECORD_IDENTIFIER      INTEGER,
  CHANGE_TYPE            CHAR(1),
  PRO_ORDER              INTEGER,
  USRN                   INTEGER,
  RECORD_TYPE            INTEGER,
  SWA_ORG_REF_NAMING     INTEGER,
  STATE                  INTEGER,
  STATE_DATE            CHAR(10),
  STREET_SURFACE         INTEGER,
  STREET_CLASSIFICATION  INTEGER,
  VERSION                INTEGER,
  STREET_START_DATE     CHAR(10),
  STREET_END_DATE       CHAR(10),
  LAST_UPDATE_DATE      CHAR(10),
  RECORD_ENTRY_DATE     CHAR(10),
  STREET_START_X         VARCHAR,
  STREET_START_Y         VARCHAR,
  STREET_START_LAT       VARCHAR,
  STREET_START_LONG      VARCHAR,
  STREET_END_X           VARCHAR,
  STREET_END_Y           VARCHAR,
  STREET_END_LAT         VARCHAR,
  STREET_END_LONG        VARCHAR,
  STREET_TOLERANCE       INTEGER
);

CREATE TABLE IF NOT EXISTS streetdescriptiveidentifier
(
  RECORD_IDENTIFIER      INTEGER,
  CHANGE_TYPE            CHAR(1),
  PRO_ORDER              INTEGER,
  USRN                   INTEGER,
  STREET_DESCRIPTION     VARCHAR,
  LOCALITY               VARCHAR,
  TOWN_NAME              VARCHAR,
  ADMINISTRATIVE_AREA    VARCHAR,
  LANGUAGE               CHAR(3),
  START_DATE            CHAR(10),
  END_DATE              CHAR(10),
  LAST_UPDATE_DATE      CHAR(10),
  ENTRY_DATE            CHAR(10)
);
