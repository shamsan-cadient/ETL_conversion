-- Query extracted from SSIS_SQLText
-- FlowSQLId: 140
-- FlowId: 140
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345254

SELECT		customfielddef_id, 
				version, 
				client_id, 
				obj, 
				name, 
				type, 
				columnname, 
				maxsize, 
				description, 
				displaysetdefinitionname, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM customfielddef 
	 WHERE (datelastmodified >= <FROMDATE_Q>)