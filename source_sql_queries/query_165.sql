-- Query extracted from SSIS_SQLText
-- FlowSQLId: 165
-- FlowId: 165
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349023

SELECT		Client_Id,
				JobBid_Id,
				ProcessName,
				Processed_aTao,
				Processed_DW,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM JobBid_Process_Driver