$$
BEGIN
  IF (count = {{CONDITION}}) THEN
  USE ROLE USERADMIN;
  CREATE ROLE IF NOT EXISTS "AZURE3_AZURE_FR";
  ELSE
    RETURN 'positive value';
  END IF;
END;
$$