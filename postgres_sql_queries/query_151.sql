-- Query extracted from SSIS_SQLText
-- FlowSQLId: 151
-- FlowId: 151
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347120

SELECT	assessmentphasescript_id
			,version
			,order_num
			,applicationassessmentphase_id AS assessmentphase_id
			,script_id
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated 
			,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified
			,createdby
			,lastmodifiedby
			,guuid
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM assessmentphase_script