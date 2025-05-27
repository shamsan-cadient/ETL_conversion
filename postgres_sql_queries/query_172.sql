-- Query extracted from SSIS_SQLText
-- FlowSQLId: 172
-- FlowId: 172
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350035


		
	 SELECT
		    ofccp_view_audit_id
		    ,version
		    ,viewedby_person_id
		    ,person_id
		    ,jobbid_id
			,TO_CHAR(datelastviewed, 'YYYY-MM-DD HH24:MI:SS') as datelastviewed
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated 
			,createdby
			,client_id
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM ofccp_view_audit
		WHERE
			datelastviewed >= <FROMDATE_Q> 
	
