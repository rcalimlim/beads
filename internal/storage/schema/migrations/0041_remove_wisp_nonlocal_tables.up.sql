-- Remove wisps and wisp_* from dolt_nonlocal_tables.
-- These were incorrectly added in migration 0040 (now fixed).
-- dolt_nonlocal_tables prevents CREATE TABLE on matching names, which breaks
-- bd init on fresh databases where wisp_events/wisp_labels need to be created.
-- wisps are already in dolt_ignore (migration 0019) which is sufficient to
-- prevent them from syncing to remote.
DELETE FROM dolt_nonlocal_tables WHERE table_name IN ('wisps', 'wisp_*');
CALL DOLT_COMMIT('-Am', 'fix: remove wisps from nonlocal tables (allows local table creation)');
