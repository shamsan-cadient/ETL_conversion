-- Query extracted from SSIS_SQLText
-- FlowSQLId: 149
-- FlowId: 149
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.346845

SELECT
			assessmentfactorconfig_id
			,version
			,script_id
			,clientext_id
			,factor_score_display_rule
			,question_display_rule
			,lowest_count_for_factor
			,lowest_count_for_question
			,TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated 
			,TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.assessmentfactorconfig
		WHERE
			(datelastmodified >= <FROMDATE_Q>)