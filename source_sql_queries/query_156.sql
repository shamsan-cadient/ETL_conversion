-- Query extracted from SSIS_SQLText
-- FlowSQLId: 156
-- FlowId: 156
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347835

SELECT
			jobscript_id
			,version
			,job_id
			,script_id
			,script_type
			,assessmentphase_id
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
			,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified 
			,createdby
			,lastmodifiedby
			,scriptweight
			,cutoffscore
			,issilentscore
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM job_script