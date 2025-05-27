-- Query extracted from SSIS_SQLText
-- FlowSQLId: 29
-- FlowId: 29
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331483

SELECT		localejobopening_id, 
				version, 
				title, 
				description, 
				requirements, 
				locale_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				jobopening_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localejobopening 
	 WHERE (datelastmodified >= <FROMDATE_Q>)