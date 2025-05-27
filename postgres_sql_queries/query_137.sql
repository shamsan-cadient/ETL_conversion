-- Query extracted from SSIS_SQLText
-- FlowSQLId: 137
-- FlowId: 137
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344807

SELECT		signeddocumenthistory_id, 
				version, 
				document_id, 
				signee_id, 
				signeetype, 
				needsresign::integer, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated,  
				TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				waivedprint::integer, 
				documentdatakey, 
				signeddocumentmanagerinfo_id, 
				isdirty::integer, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.signeddocumenthistory 
	 WHERE (datelastmodified >= <FROMDATE_Q>)