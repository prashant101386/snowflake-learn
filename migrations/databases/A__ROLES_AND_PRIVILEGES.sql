--Create environment default role and grant to SYSADMIN
USE ROLE USERADMIN;
CREATE ROLE IF NOT EXISTS "{{ENVIRONMENT}}_SYSADMIN";
GRANT ROLE "{{ENVIRONMENT}}_SYSADMIN" TO ROLE SYSADMIN;


  BEGIN
  LET count := 1;
  IF (count = 1) THEN
USE ROLE USERADMIN;
CREATE ROLE IF NOT EXISTS "AZURE3_AZURE_FR";
  ELSE
    RETURN 'positive value';
  END IF;
END;