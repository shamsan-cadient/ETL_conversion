-- Query extracted from SSIS_SQLText
-- FlowSQLId: 26
-- FlowId: 26
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331169
SELECT localescript_id
	,version
	,locale_id
	,script_id
	,name
	,description
	,traittext_redscore
	,traittext_yellowscore
	,traittext_greenscore
	,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated
	,createdby
	,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified
	,lastmodifiedby
	,interquestions interquestions
	,< BATCHDATE > AS ExtractDate
	,< BATCHDATE > AS BatchDate
	,< SOURCESKEY > AS SourceSkey
FROM locale_script_atao
WHERE (datelastmodified >= < FROMDATE_Q >)