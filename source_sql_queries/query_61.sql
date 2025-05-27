-- Query extracted from SSIS_SQLText
-- FlowSQLId: 61
-- FlowId: 61
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335052

SELECT		assessmentscoreinstscore_id, 
				version, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
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
	 FROM ss_assessmentscoreinstscore 
	 WHERE (datelastmodified >= <FROMDATE_Q>)