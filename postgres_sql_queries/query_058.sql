-- Query extracted from SSIS_SQLText
-- FlowSQLId: 58
-- FlowId: 58
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334787
SELECT scriptscore_id
	,version
	,points
	,percentage
	,band
	,scorestatus
	,jobbid_id
	,script_id
	,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated
	,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified
	,createdby
	,lastmodifiedby
	,scoreband
	,clientintegration_id
	,< BATCHDATE > AS ExtractDate
	,< BATCHDATE > AS BatchDate
	,< SOURCESKEY > AS SourceSkey
FROM scriptscore WITH (NOLOCK)
WHERE (datelastmodified >= < FROMDATE_Q >)