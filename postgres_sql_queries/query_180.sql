-- Query extracted from SSIS_SQLText
-- FlowSQLId: 180
-- FlowId: 180
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351097

SELECT		PA_SCORE_ID, 
				DESCRIPTION, 
				COMMENTS, 
				URL, 
				RAWSCORE, 
				SCORE,
				STATUS,
				TO_CHAR(STATUSDATE, 'YYYY-MM-DD HH24:MI:SS') as STATUSDATE,
				PERCENTILE,
				LANGUAGE,
				SCRIPTSCORE_ID,
				EXTERNALID,
				ISLATEST,
				SORTVALUE,
				ASSESSMENTNAME,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM PA_SCORE 
	 WHERE (STATUSDATE >= <FROMDATE_Q>)