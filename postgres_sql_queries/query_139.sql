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
				CONVERT(VARCHAR(19), startdate, 120) as startdate,  
	            CONVERT(VARCHAR(19), enddate, 120) as enddate, 
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
				CAST(description AS NVARCHAR(2000)) as description, 
				savedforlater, 
				customfield_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
	            CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				needsverification, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey
	 FROM workhistory_atao wha
	WHERE (wha.datelastmodified >= <FROMDATE_Q>)
		