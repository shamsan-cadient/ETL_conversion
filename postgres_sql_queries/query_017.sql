-- Query extracted from SSIS_SQLText
-- FlowSQLId: 17
-- FlowId: 17
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330260

SELECT		statuslog_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				status_id, 
				bidstatus, 
				jobbid_id, 
				localuser_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobbid_statuslog 
	 WHERE (datecreated >= <FROMDATE_Q>) AND (bidstatus IN ('JobBidStatuses.hired', 'JobBidStatuses.Offered') )