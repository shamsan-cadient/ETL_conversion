-- Query extracted from SSIS_SQLText
-- FlowSQLId: 10
-- FlowId: 10
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329502

SELECT		flowactivation_id, 
				version, 
				flowname, 
				isactive, 
				order_num, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				isrestartable, 
				maxexecutions, 
				businessrulename, 
				hiringprocess_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM flowactivation 
	 WHERE (datecreated >= <FROMDATE_Q>) OR (datelastmodified >= <FROMDATE_Q>)