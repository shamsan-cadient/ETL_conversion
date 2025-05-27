-- Query extracted from SSIS_SQLText
-- FlowSQLId: 142
-- FlowId: 142
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345597

SELECT		gapdetail_id, 
				version, 
				jobbid_id, 
				gapdetailfor, 
				gapdetail, 
				gapafterid, 
				gapbeforeid, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM gapdetail 
	 WHERE (datelastmodified >= <FROMDATE_Q>)