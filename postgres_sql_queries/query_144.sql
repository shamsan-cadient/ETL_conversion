-- Query extracted from SSIS_SQLText
-- FlowSQLId: 144
-- FlowId: 144
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345903

SELECT		/*+first_rows cursor_sharing_exact INDEX(r, FBI_R_DATELASTMODIFIED)*/
				reference_id, 
				version, 
				document_id, 
				firstname, 
				lastname, 
				phone, 
				business, 
				relationship, 
				yearsknown, 
				responsegroup, 
				isactive, 
				address1, 
				address2, 
				city, 
				state, 
				zip, 
				title, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				customfield_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM reference r
	 WHERE (datelastmodified >= <FROMDATE_Q>)