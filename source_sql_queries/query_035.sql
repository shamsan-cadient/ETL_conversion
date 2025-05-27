-- Query extracted from SSIS_SQLText
-- FlowSQLId: 35
-- FlowId: 35
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332095

SELECT		locationext_id, 
				posting_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locationext_posting