-- Query extracted from SSIS_SQLText
-- FlowSQLId: 3
-- FlowId: 3
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328781

SELECT		availability_id, 
				version, 
				CONVERT(VARCHAR(19), startdate, 120) as startdate, 
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
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				availabilitybits,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM availability 
	 WHERE (datelastmodified >= <FROMDATE_Q>)