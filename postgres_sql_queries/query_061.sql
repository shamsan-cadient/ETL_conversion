-- Query extracted from SSIS_SQLText
-- FlowSQLId: 61
-- FlowId: 61
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335052

SELECT		assessmentscoreinstscore_id, 
				version, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated,  
				TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				assessmentscoringinstance_id, 
				factor_name, 
				responses, 
				CAST(rawscore AS numeric(38, 20)) as rawscore,
				scoreband, 
				CAST(cut_score_1 AS numeric(38, 20)) as cut_score_1, 
				CAST(cut_score_2 AS numeric(38, 20)) as cut_score_2, 
				cut_score_1_operator, 
				cut_score_2_operator, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.ss_assessmentscoreinstscore 
	 WHERE (datelastmodified >= <FROMDATE_Q>)