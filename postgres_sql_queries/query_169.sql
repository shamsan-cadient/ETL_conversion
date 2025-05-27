-- Query extracted from SSIS_SQLText
-- FlowSQLId: 169
-- FlowId: 169
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349655


		

	 SELECT	vs.veteranstatus_id, 
		vs.document_id, 
		vs.veteranstatus, 
		vs.dischargedate, 
		CONVERT(VARCHAR(19), d.datecreated, 120) as datecreated,  
	    CONVERT(VARCHAR(19), d.datelastmodified, 120) as datelastmodified,   
		vs.createdby, 
		vs.lastmodifiedby, 
		vs.version, 
		vs.client_id, 
		vs.origin_cd, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM veteranstatus vs 
	 INNER JOIN document d 
		ON vs.document_id = d.document_id 
	 WHERE (d.datelastmodified >= <FROMDATE_Q>)