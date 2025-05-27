-- Query extracted from SSIS_SQLText
-- FlowSQLId: 12
-- FlowId: 12
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329687

SELECT		job_id, 
				version, 
				jobcode, 
				payratetype, 
				grade, 
				flsaexemptionstatus, 
				employmentstatus, 
				minimumsalary, 
				maximumsalary, 
				creator, 
				relocation::integer, 
				eeojobcategory, 
				maxaddcompntype, 
				maxaddcompnallowed, 
				address1, 
				address2, 
				city, 
				state, 
				country, 
				zipcode, 
				clientid, 
				isactive::integer, 
				customfield_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
                TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				jobcategory, 
				:BATCHDATE as ExtractDate, 
				:BATCHDATE as BatchDate, 
				:SOURCESKEY as SourceSkey 
	 FROM dbo.job 
	 WHERE datelastmodified >= :FROMDATE_Q