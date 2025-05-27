-- Query extracted from SSIS_SQLText
-- FlowSQLId: 20
-- FlowId: 20
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330584
SELECT  jobopening_id, 
	version, 
	jobcode, 
	jobtype, 
	jobcategory, 
	job_id, 
	clientid, 
	TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,
	TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
	createdby, 
	lastmodifiedby, 
	guuid, 
	positionkey_count, 
	<BATCHDATE> as ExtractDate, 
	<BATCHDATE> as BatchDate, 
	<SOURCESKEY> as SourceSkey  
FROM dbo.jobopening 
WHERE datelastmodified >= <FROMDATE_Q>;
