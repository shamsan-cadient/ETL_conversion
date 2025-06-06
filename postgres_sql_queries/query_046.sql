-- Query extracted from SSIS_SQLText
-- FlowSQLId: 46
-- FlowId: 46
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333324

SELECT		posting_id, 
				version, 
				jobcode, 
				postingnumber, 
				TO_CHAR(postingbegindate, 'YYYY-MM-DD HH24:MI:SS') as postingbegindate, 
			    TO_CHAR(postingenddate, 'YYYY-MM-DD HH24:MI:SS') as postingenddate,
				postingactivedays, 
				rollupname, 
				ishotjob::integer, 
				isactive::integer, 
				positionnum, 
				soundfilelocation, 
				jobtype, 
				jobfunction, 
				specificjobfunction, 
				jobfamily, 
				jobcategory, 
				salaryfrequency, 
				salarycurrency, 
				positionlevel, 
				flsaexemptionstatus, 
				degreerequired, 
				postingstatus, 
				salarygradecode, 
				minimumsalary, 
				midrangesalary, 
				maximumsalary, 
				referralbonus, 
				relocation::integer, 
				travelpercent, 
				minexperience, 
				contactemail, 
				contactphone, 
				isfulltime::integer, 
				equestupdated::integer, 
				openfordays, 
				jobindustry, 
				qualifier_id, 
				reportsto_id, 
				postingsite_id, 
				jobopening_id, 
				parentscript_id, 
				postingtoapply, 
				guuid, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				postingcreator_id, 
				customfield_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM posting 
	 WHERE (datelastmodified >= <FROMDATE_Q>)