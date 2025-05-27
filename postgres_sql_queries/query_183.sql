-- Query extracted from SSIS_SQLText
-- FlowSQLId: 183
-- FlowId: 183
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351473

SELECT		fs.pa_factorscore_id, 
				fs.factorname, 
				fs.description, 
				fs.comments, 
				fs.rawscore, 
				fs.factorscore,
				fs.pa_score_id,
				fs.percentile,
				fs.traitband,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM pa_factorscore fs 
	 JOIN scriptscore ss 
	 ON fs.pa_factorscore_id = ss.scriptscore_id
	 WHERE (ss.datelastmodified >= <FROMDATE_Q>)