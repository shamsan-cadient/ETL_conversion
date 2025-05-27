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
								TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
								TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
								createdby, 
								lastmodifiedby, 
								document_id, 
								customfield_id, 
								mgrEthnicity,
								mgrRace,
								mgrGender,
								:BATCHDATE as ExtractDate, 
								:BATCHDATE as BatchDate, 
								:SOURCESKEY as SourceSkey 
					 FROM dbo.eeo 
					 WHERE datelastmodified >= :FROMDATE_Q