-- Query extracted from SSIS_SQLText
-- FlowSQLId: 184
-- FlowId: 184
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351583

 
	 SELECT	opening_audit_id,
		version,
		opening_id,
		action,
		attribute,
		transaction_id,
		 old_value,
		 new_value,
		client_id,
		TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated, 
		createdby,
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
FROM dbo.opening_audit 
WHERE (datecreated >= <FROMDATE_Q>) 
AND   attribute in (''endDate'', ''status'') 