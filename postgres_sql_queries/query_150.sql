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
			,TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated 
			,TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified
			,order_num
			,createdby
			,lastmodifiedby
			,guuid
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.assessmentphase
		WHERE
			(datelastmodified >= <FROMDATE_Q>)