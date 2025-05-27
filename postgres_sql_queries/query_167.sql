-- Query extracted from SSIS_SQLText
-- FlowSQLId: 167
-- FlowId: 167
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349299

SELECT		atfdetail_id AS availabilitytimeframedetail_id, 
				version, 
				atf_id as availabilitytimeframe_id,
				location_id,
				isactive::integer,
				ishighlight::integer,
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby,
				lastmodifiedby,
				<BATCHDATE> as extractdate, 
				<BATCHDATE> as batchdate, 
				<SOURCESKEY> as sourceskey 
	 FROM availabilitytimeframedetails