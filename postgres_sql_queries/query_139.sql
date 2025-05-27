-- Query extracted from SSIS_SQLText
-- FlowSQLId: 139
-- FlowId: 139
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345121


		

		SELECT		/*+first_rows cursor_sharing_exact INDEX(wha, ix_wha_datelastmodified)*/
				workhistory_id, 
				version, 
				companyname, 
				jobtitle, 
				supervisorfname, 
				supervisorlname, 
				address1, 
				address2, 
				city, 
				zip, 
				phone, 
				fax, 
				TO_CHAR(startdate, 'YYYY-MM-DD HH24:MI:SS') as startdate,  
	            TO_CHAR(enddate, 'YYYY-MM-DD HH24:MI:SS') as enddate, 
				enddatepresent, 
				isactive, 
				responsegroup, 
				startsalary, 
				endsalary, 
				contactcurrentemployer, 
				reasonforleaving, 
				contact, 
				cancontactemployer, 
				fmcsrstatus, 
				cfr40status, 
				equipmentdriven, 
				reasonforleavingnotes, 
				additionalreasonforleaving, 
				state, 
				country, 
				CAST(description AS VARCHAR(2000)) as description, 
				savedforlater, 
				customfield_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
	            TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				needsverification, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey
	 FROM workhistory_atao wha
	WHERE (wha.datelastmodified >= <FROMDATE_Q>)
		