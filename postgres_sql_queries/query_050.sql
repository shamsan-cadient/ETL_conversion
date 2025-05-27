-- Query extracted from SSIS_SQLText
-- FlowSQLId: 50
-- FlowId: 50
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333783

SELECT		requisition_id, 
				requisitionnumber, 
				pageflowinstance, 
				workflowtemplate, 
				processinstance_id, 
				numericrequisitionnumber, 
				rollupname, 
				requisitionstatus, 
				salarygradecode, 
				minimumsalary, 
				midrangesalary, 
				maximumsalary, 
				salaryfrequency, 
				salarycurrency, 
				minexperience, 
				isfulltime, 
				positionlevel, 
				flsaexemptionstatus, 
				degreerequired, 
				relocation, 
				travelpercent, 
				jobfamily, 
				reportsto, 
				customfield_id, 
				noofopenings, 
				offercount, 
				filledcount, 
				reasonforopenings, 
				incumbent, 
				creator, 
				TO_CHAR(targetfilldate, 'YYYY-MM-DD HH24:MI:SS') as targetfilldate,  
				hiringmanager, 
				maxaddcompntype, 
				maxaddcompnallowed, 
				employmentstatus, 
				grade, 
				payratetype, 
				approverlist_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM requisition