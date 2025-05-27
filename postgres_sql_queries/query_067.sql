-- Query extracted from SSIS_SQLText
-- FlowSQLId: 67
-- FlowId: 67
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335585

SELECT		locationext_id, 
				redhires, 
				CONVERT(VARCHAR(19), grandopeningdate, 120) as grandopeningdate,  
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM tmdlocationext