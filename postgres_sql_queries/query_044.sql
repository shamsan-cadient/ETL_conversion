-- Query extracted from SSIS_SQLText
-- FlowSQLId: 44
-- FlowId: 44
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333074


SELECT		personidentifier_id, 
				version, 
				identifiervalue, 
				identifiertype, 
				identifiersubtype, 
				0 as numapplications,
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				person_id, 
				identifierpartialvalue, 
				0 idx,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM personidentifier 
	 WHERE (datelastmodified >= <FROMDATE_Q>)