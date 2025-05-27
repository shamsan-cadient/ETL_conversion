-- Query extracted from SSIS_SQLText
-- FlowSQLId: 48
-- FlowId: 48
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333531

SELECT		postingteam_id, 
				version, 
				memberrole, 
				posting_id, 
				member_id, 
				TO_CHAR(datecreated,'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified,'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM postingteam 
	 WHERE (datelastmodified >= <FROMDATE_Q>) 