-- Query extracted from SSIS_SQLText
-- FlowSQLId: 36
-- FlowId: 36
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332206

SELECT		lg.locationgroup_id, 
				lg.version, 
				lg.name, 
				lg.description, 
				c.client_id, 
				TO_CHAR(lg.datecreated,'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(lg.datelastmodified,'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				lg.createdby, 
				lg.lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locationgroup lg 
	 INNER JOIN CLIENTEXT c 
	 ON c.clientext_id = lg.clientext_id 
	 WHERE (lg.datelastmodified >= <FROMDATE_Q>) 