-- Query extracted from SSIS_SQLText
-- FlowSQLId: 166
-- FlowId: 166
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349164

SELECT		atf_id AS availabilitytimeframe_id, 
				version, 
				name, 
				day,
				starttime, 
				endtime, 
				location_id,
				jobopening_id,
				isvalid::integer,
				timeframetype,
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated, 
			    TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified, 
				createdby,
				lastmodifiedby,
				CAST(availabilitybits AS VARCHAR) as availabilitybits,
				<BATCHDATE> as extractdate, 
				<BATCHDATE> as batchdate, 
				<SOURCESKEY> as sourceskey 
	 FROM dbo.availabilitytimeframe