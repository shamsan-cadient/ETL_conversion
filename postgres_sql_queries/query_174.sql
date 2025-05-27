-- Query extracted from SSIS_SQLText
-- FlowSQLId: 174
-- FlowId: 174
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350314

SELECT	opening_id,
		version,
		position_id,
		locationext_id,
		status,
		planned_hire_count,
		reason_closed,
		startdate,
		enddate,
		client_id,
		TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
		createdby, 
		TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
		lastmodifiedby, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM opening 