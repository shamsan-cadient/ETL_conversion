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
				isactive::integer, 
				order_num, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				isrestartable::integer, 
				maxexecutions, 
				businessrulename, 
				hiringprocess_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM flowactivation 
	 WHERE (datecreated >= <FROMDATE_Q>) OR (datelastmodified >= <FROMDATE_Q>)