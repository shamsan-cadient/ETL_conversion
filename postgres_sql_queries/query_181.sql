-- Query extracted from SSIS_SQLText
-- FlowSQLId: 181
-- FlowId: 181
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351202

SELECT	jobbid_id, 
		client_id, 
		TO_CHAR(date_purged_utc, ''YYYY-MM-DD HH24:MI:SS'') as date_purged_utc,
		document_id, 
		userinfo_id, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM dbo.post_purge  
	 WHERE (date_purged_utc >(select DATE_PURGED_UTC_HWM from post_purge_hwm where process_name=''Analytics'' LIMIT 1)) 