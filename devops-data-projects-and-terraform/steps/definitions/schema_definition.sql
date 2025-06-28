-- SCHEMAS:
--Bronze
{% set DB = 'BRONZE'%}
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.ADT_FEEDS;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.CLAIMS_SYSTEM;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.REFERENCE;

--Silver
{% set DB = 'SILVER'%}
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.ADT_FEEDS;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.CLAIMS_SYSTEM;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.REFERENCE;

--Gold
{% set DB = 'GOLD'%}
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.MEMBERSHIP;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.CLAIMS;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.POPULATION_HEALTH;
DEFINE SCHEMA {{DB}}_{{ENV}}_DB.REFERENCE;



-- DATABASES:
    -- NOTE: The project is figuring out the statement execution order by itself, so you don't
    -- need to care of the statements order. The below statements will be executed before statements
    -- above that DEFINE SCHEMAs. This mechanism also applies to other entities like parent/child tasks etc.
DEFINE DATABASE BRONZE_{{ ENV }}_DB
    DATA_RETENTION_TIME_IN_DAYS = 2;

DEFINE DATABASE SILVER_{{ ENV }}_DB
    DATA_RETENTION_TIME_IN_DAYS = 1;

DEFINE DATABASE GOLD_{{ ENV }}_DB
    DATA_RETENTION_TIME_IN_DAYS = 30;

