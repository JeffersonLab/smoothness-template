alter session set container = XEPDB1;

CREATE TABLE TEMPLATE_OWNER.SETTING
(
    KEY                VARCHAR2(128 CHAR)  NOT NULL,
    VALUE              VARCHAR2(4000 BYTE) NOT NULL,
    TYPE               VARCHAR2(32 CHAR) DEFAULT 'STRING' NOT NULL,
    DESCRIPTION        VARCHAR2(2048 CHAR) NOT NULL,
    TAG                VARCHAR2(32 CHAR) DEFAULT 'OTHER' NOT NULL,
    WEIGHT             INTEGER DEFAULT 0 NOT NULL,
    CHANGE_ACTION_JNDI VARCHAR2(128 CHAR) NULL ,
    CONSTRAINT SETTING_PK PRIMARY KEY (KEY),
    CONSTRAINT SETTING_CK1 CHECK (TYPE IN ('STRING', 'BOOLEAN', 'CSV')),
    CONSTRAINT SETTING_CK2 CHECK ((VALUE in ('Y', 'N') AND TYPE = 'BOOLEAN') OR TYPE <> 'BOOLEAN')
);
