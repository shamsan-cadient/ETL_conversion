-- Query extracted from SSIS_SQLText
-- FlowSQLId: 39
-- FlowId: 39
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332521

SELECT		logicalqualifier_id, 
				qualifiertype, 
				version, 
				parent_id, 
				client_id, 
				name, 
				description, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				NULL AS genericidentifier, 
				guuid, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM logicalqualifier