-- Query extracted from SSIS_SQLText
-- FlowSQLId: 183
-- FlowId: 183
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351473

SELECT		/*+ INDEX (SS IX_SCRIPTSCORE_DATEMOD) */	fs.PA_FACTORSCORE_ID, 
				fs.FACTORNAME, 
				fs.DESCRIPTION, 
				fs.COMMENTS, 
				fs.RAWSCORE, 
				fs.FACTORSCORE,
				fs.PA_SCORE_ID,
				fs.PERCENTILE,
				fs.TRAITBAND,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM PA_FACTORSCORE fs 
	 JOIN SCRIPTSCORE ss 
	 ON fs.PA_FACTORSCORE_ID = ss.SCRIPTSCORE_ID
	 WHERE (ss.DATELASTMODIFIED >= <FROMDATE_Q>)