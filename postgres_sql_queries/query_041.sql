-- Query extracted from SSIS_SQLText
-- FlowSQLId: 41
-- FlowId: 41
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332732

SELECT		p.person_id, 
				p.version, 
				p.rahidentifier, 
				p.candidatetype, 
				p.userext_id, 
				p.personcontact_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				p.createdby, 
				p.lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM person_atao p 
	 WHERE (datelastmodified >= <FROMDATE_Q>)