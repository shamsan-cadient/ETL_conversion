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
				needsresign, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				waivedprint, 
				documentdatakey, 
				signeddocumentmanagerinfo_id, 
				isdirty, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM signeddocumenthistory 
	 WHERE (datelastmodified >= <FROMDATE_Q>)