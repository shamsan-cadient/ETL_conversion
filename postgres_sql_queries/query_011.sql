-- Query extracted from SSIS_SQLText
-- FlowSQLId: 11
-- FlowId: 11
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329584

SELECT		userext_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM hcomuserext 