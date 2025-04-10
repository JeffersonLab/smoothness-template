alter session set container = XEPDB1;

ALTER SYSTEM SET db_create_file_dest = '/opt/oracle/oradata';

create tablespace DEMO;

create user "DEMO_OWNER" profile "DEFAULT" identified by "password" default tablespace "DEMO" account unlock;

grant connect to DEMO_OWNER;
grant unlimited tablespace to DEMO_OWNER;

grant create view to DEMO_OWNER;
grant create sequence to DEMO_OWNER;
grant create table to DEMO_OWNER;
grant create procedure to DEMO_OWNER;
grant create type to DEMO_OWNER;
grant create trigger to DEMO_OWNER;