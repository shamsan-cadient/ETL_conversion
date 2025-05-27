-- Query extracted from SSIS_SQLText
-- FlowSQLId: 40
-- FlowId: 40
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332622

SELECT		permission_id, 
				version, 
				name, 
				dtname, 
				description, 
				permissiontype, 
				label_id, 
				client_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM permission_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>)