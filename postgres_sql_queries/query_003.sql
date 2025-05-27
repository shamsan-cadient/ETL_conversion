-- Query extracted from SSIS_SQLText
-- FlowSQLId: 3
-- FlowId: 3
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328781

SELECT		availability_id, 
				version, 
				TO_CHAR(startdate, 'YYYY-MM-DD HH24:MI:SS') as startdate, 
				workpreference, 
				mondaystarttime, 
				mondayendtime, 
				tuesdaystarttime, 
				tuesdayendtime, 
				wednesdaystarttime, 
				wednesdayendtime, 
				thursdaystarttime, 
				thursdayendtime, 
				fridaystarttime, 
				fridayendtime, 
				saturdaystarttime, 
				saturdayendtime, 
				sundaystarttime, 
				sundayendtime, 
				cantwork, 
				cantworkdetail, 
				willworkholidays, 
				willworkweekends, 
				willworkovertime, 
				willworkevenings, 
				willworkovernight, 
				willworkextrawork, 
				hoursperweek, 
				document_id, 
				customfield_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				availabilitybits,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM availability 
	 WHERE (datelastmodified >= <FROMDATE_Q>)