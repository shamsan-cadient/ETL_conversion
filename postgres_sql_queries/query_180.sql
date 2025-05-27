-- Query extracted from SSIS_SQLText
-- FlowSQLId: 180
-- FlowId: 180
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351097

SELECT		pa_score_id, 
				description, 
				comments, 
				url, 
				rawscore, 
				score,
				status,
				TO_CHAR(statusdate, 'YYYY-MM-DD HH24:MI:SS') as statusdate,
				percentile,
				language,
				scriptscore_id,
				externalid,
				islatest::integer,
				sortvalue,
				assessmentname,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM pa_score 
	 WHERE (statusdate >= <FROMDATE_Q>)