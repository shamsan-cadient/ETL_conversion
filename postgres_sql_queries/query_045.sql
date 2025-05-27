-- Query extracted from SSIS_SQLText
-- FlowSQLId: 45
-- FlowId: 45
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333188

SELECT		positionkey_id, 
				version, 
				client_id, 
				key as keyname, 
				description, 
				jobopening_id, 
				jobcode, 
				isactive::integer, 
				locationtype, 
				location_id, 
				customfield_id, 
				TO_CHAR(datecreated,'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified,'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				TO_CHAR(dateopened,'YYYY-MM-DD HH24:MI:SS') as dateopened, 
				TO_CHAR(dateclosed,'YYYY-MM-DD HH24:MI:SS') as dateclosed, 
				closedby, 
				closedreason, 
				guuid, 
				positionkeynumber, 
				minimumsalary, 
				maximumsalary, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM positionkey 
	 WHERE (datelastmodified >= <FROMDATE_Q>) 