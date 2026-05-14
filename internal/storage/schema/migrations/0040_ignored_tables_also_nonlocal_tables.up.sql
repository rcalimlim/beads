INSERT INTO dolt_nonlocal_tables (table_name, target_ref, options) VALUES ('repo_mtimes', 'main', 'immediate');
CALL DOLT_COMMIT('-Am', 'create nonlocal table repo_mtimes');
INSERT INTO dolt_nonlocal_tables (table_name, target_ref, options) VALUES ('local_metadata', 'main', 'immediate');
CALL DOLT_COMMIT('-Am', 'create nonlocal table local_metadata');
