-- Query extracted from SSIS_SQLText
-- FlowSQLId: 21
-- FlowId: 21
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330668

SELECT		jobopening_id, 
				location_id, 
				listorder, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobopening_location