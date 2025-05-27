-- Query extracted from SSIS_SQLText
-- FlowSQLId: 71
-- FlowId: 71
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335920

SELECT		userext_id, 
				version, 
				ext_type, 
				userinfo_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM userext 
	 WHERE (datelastmodified >= <FROMDATE_Q>)