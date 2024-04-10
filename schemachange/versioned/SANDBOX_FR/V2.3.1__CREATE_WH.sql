--
-- DEV Environment
--

-- REPORTING
-- ELT
-- ADHOC_ANALYSIS

USE ROLE "DEV_SYSADMIN";

CREATE WAREHOUSE IF NOT EXISTS "DEV_ADHOC_ANALYSIS_WH" WITH INITIALLY_SUSPENDED = TRUE WAREHOUSE_SIZE = XSMALL;
ALTER WAREHOUSE "DEV_ADHOC_ANALYSIS_WH" SET
WAIT_FOR_COMPLETION = TRUE
WAREHOUSE_SIZE = XSMALL
MIN_CLUSTER_COUNT = 1
MAX_CLUSTER_COUNT = 1
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
ENABLE_QUERY_ACCELERATION = FALSE
WAREHOUSE_TYPE = STANDARD;


USE ROLE "DEV_SYSADMIN";
CREATE WAREHOUSE IF NOT EXISTS "DEV_REPORTING_WH" WITH INITIALLY_SUSPENDED = TRUE WAREHOUSE_SIZE = XSMALL;
ALTER WAREHOUSE "DEV_REPORTING_WH" SET
WAIT_FOR_COMPLETION = TRUE
WAREHOUSE_SIZE = XSMALL
MIN_CLUSTER_COUNT = 1
MAX_CLUSTER_COUNT = 1
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
ENABLE_QUERY_ACCELERATION = FALSE
WAREHOUSE_TYPE = STANDARD;


USE ROLE "DEV_SYSADMIN";

CREATE WAREHOUSE IF NOT EXISTS "DEV_ELT_WH" WITH INITIALLY_SUSPENDED = TRUE WAREHOUSE_SIZE = XSMALL;
ALTER WAREHOUSE "DEV_ELT_WH" SET
WAIT_FOR_COMPLETION = TRUE
WAREHOUSE_SIZE = XSMALL
MIN_CLUSTER_COUNT = 1
MAX_CLUSTER_COUNT = 1
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
ENABLE_QUERY_ACCELERATION = FALSE
WAREHOUSE_TYPE = STANDARD;

USE ROLE "DEV_SYSADMIN";
CREATE WAREHOUSE IF NOT EXISTS "SANDBOX_WH" WITH INITIALLY_SUSPENDED = TRUE WAREHOUSE_SIZE = XSMALL;
ALTER WAREHOUSE "SANDBOX_WH" SET
WAIT_FOR_COMPLETION = TRUE
WAREHOUSE_SIZE = XSMALL
MIN_CLUSTER_COUNT = 1
MAX_CLUSTER_COUNT = 1
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
ENABLE_QUERY_ACCELERATION = FALSE
WAREHOUSE_TYPE = STANDARD;