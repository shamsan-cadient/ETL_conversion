-- Query extracted from SSIS_SQLText
-- FlowSQLId: 16
-- FlowId: 16
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330173
SELECT jobbidscript_id
	,version
	,jobbid_id
	,script_id
	,script_type
	,scriptweight
	,isprimary::integer
	,iscomplete::integer
	,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated
	,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified
	,createdby
	,lastmodifiedby
	,assessmentphase_id
	,issilentscore::integer
	,< BATCHDATE > AS ExtractDate
	,< BATCHDATE > AS BatchDate
	,< SOURCESKEY > AS SourceSkey
FROM jobbid_script
WHERE (DateLastModified >= < FROMDATE_Q >)