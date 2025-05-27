-- Query extracted from SSIS_SQLText
-- FlowSQLId: 176
-- FlowId: 176
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350605

SELECT	job_history_log_id, 
		version, 
		parent, 
		parent_id, 
		client_id, 
		audit_entity, 
		entity_id, 
		alternate_id, 
		action, 
		attribute, 
		locale_id, 
		transaction_id, 
		--DBMS_LOB.SUBSTR(old_value,1000,1) as old_value, 
		--DBMS_LOB.SUBSTR(new_value,1000,1) as new_value, 
		CAST(old_value AS VARCHAR) as old_value, 
	    CAST(new_value AS VARCHAR) as new_value, 
		mailsent::integer, 
		TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
		createdby, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM job_history_log  
	 WHERE (datecreated >= <FROMDATE_Q>)