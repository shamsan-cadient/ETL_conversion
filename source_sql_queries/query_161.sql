-- Query extracted from SSIS_SQLText
-- FlowSQLId: 161
-- FlowId: 161
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348507

SELECT
			positionscript_id
			,version
			,position_id
			,script_id
			,script_type
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
			,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified 
			,createdby
			,lastmodifiedby
			,scriptweight
			,cutoffscore
			,assessmentphase_id
			,issilentscore
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM position_script