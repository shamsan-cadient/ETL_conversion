-- Query extracted from SSIS_SQLText
-- FlowSQLId: 8
-- FlowId: 8
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329298

SELECT		document_id, 
				version, 
				documentname, 
				filename, 
				contenttype, 
				documenttype, 
				textsearchdocid,
				CONVERT(VARCHAR(19), textsearchlastregistered, 120) as textsearchlastregistered, 
				jobbid_id, 
				person_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM document 
	 WHERE (datelastmodified >= <FROMDATE_Q>)