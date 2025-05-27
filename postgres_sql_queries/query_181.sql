-- Query extracted from SSIS_SQLText
-- FlowSQLId: 181
-- FlowId: 181
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351202

SELECT	jobbid_id, 
		client_id, 
		CONVERT(VARCHAR(19), date_purged_utc, 120) as date_purged_utc,
		document_id, 
		userinfo_id, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM post_purge  
	 WHERE (date_purged_utc >(select top 1 DATE_PURGED_UTC_HWM from post_purge_hwm where process_name='Analytics')) 