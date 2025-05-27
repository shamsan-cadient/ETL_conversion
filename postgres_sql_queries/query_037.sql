-- Query extracted from SSIS_SQLText
-- FlowSQLId: 37
-- FlowId: 37
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332305

SELECT		locationgroupmember_id, 
				version, 
				location_id, 
				locationgroup_id, 
				TO_CHAR(datecreated,'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified,'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locationgroupmember 
	 WHERE (datelastmodified >= <FROMDATE_Q>) 