-- Query extracted from SSIS_SQLText
-- FlowSQLId: 173
-- FlowId: 173
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350179

SELECT	disabilitystatus_id, 
		version, 
		origin_cd, 
		status, 
		fullname, 
		ombnumber, 
		document_id, 
		client_id, 
		TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
		createdby, 
		TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
		lastmodifiedby, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM disabilitystatus  
	 WHERE (datelastmodified >= <FROMDATE_Q>)