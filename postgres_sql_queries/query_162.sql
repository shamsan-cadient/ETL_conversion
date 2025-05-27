-- Query extracted from SSIS_SQLText
-- FlowSQLId: 162
-- FlowId: 162
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348631

SELECT
			postingscript_id
			,version
			,posting_id
			,script_id
			,script_type
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated
			,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified
			,createdby
			,lastmodifiedby
			,scriptweight
			,cutoffscore
			,assessmentphase_id
			,issilentscore
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM posting_script