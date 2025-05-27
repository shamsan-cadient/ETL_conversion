-- Query extracted from SSIS_SQLText
-- FlowSQLId: 150
-- FlowId: 150
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.346978

SELECT
			assessmentphase_id
			,version
			,phasename
			,clientext_id
			,rolluprule
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
			,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified
			,order_num
			,createdby
			,lastmodifiedby
			,guuid
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM assessmentphase
		WHERE
			(datelastmodified >= <FROMDATE_Q>)