DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'eventflow_app_login') THEN
    CREATE ROLE eventflow_app_login LOGIN PASSWORD 'eventflow_local_dev_password';
  END IF;
END $$;

GRANT eventflow_app TO eventflow_app_login;
