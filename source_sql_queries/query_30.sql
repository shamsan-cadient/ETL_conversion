-- Query extracted from SSIS_SQLText
-- FlowSQLId: 30
-- FlowId: 30
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331583

SELECT		localelocation_id, 
				version, 
				name, 
				address1, 
				address2, 
				city, 
				storenum, 
				locationmessage, 
				locale_id, 
				location_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				locale, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localelocation 
	 WHERE (datecreated >= <FROMDATE_Q>) OR (datelastmodified >= <FROMDATE_Q>)