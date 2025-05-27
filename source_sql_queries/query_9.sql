-- Query extracted from SSIS_SQLText
-- FlowSQLId: 9
-- FlowId: 9
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329406

SELECT		eeo_id, 
				version, 
				gender, 
				ethnicity, 
				race, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				customfield_id, 
				mgrEthnicity,
				mgrRace,
				mgrGender,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM eeo 
	 WHERE (datelastmodified >= <FROMDATE_Q>)