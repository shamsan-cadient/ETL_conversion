-- Query extracted from SSIS_SQLText
-- FlowSQLId: 157
-- FlowId: 157
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347965

SELECT
			norm_id
			,version
			,cut_score_1
			,cut_score_2
			,cut_score_operator_1
			,cut_score_operator_2
			,name
			,description
			,label_id
			,qual_id
			,TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated 
			,TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.norm
		WHERE
			(datelastmodified >= <FROMDATE_Q>)