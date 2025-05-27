-- Query extracted from SSIS_SQLText
-- FlowSQLId: 163
-- FlowId: 163
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348754

SELECT
			requisitionscript_id
			,version
			,requisition_id
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
		FROM requisition_script 