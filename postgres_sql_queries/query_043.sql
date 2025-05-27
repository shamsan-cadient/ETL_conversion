-- Query extracted from SSIS_SQLText
-- FlowSQLId: 43
-- FlowId: 43
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332960

SELECT		personcontact_id, 
				version, 
				lastname, 
				middlename, 
				firstname, 
				emailaddress, 
				cellphone, 
				homephone, 
				alternatephone, 
				workphone, 
				pager, 
				address1, 
				address2, 
				city, 
				unformattedhomephone, 
				state, 
				country, 
				zipcode, 
				prefix, 
				suffix, 
				workpreference, 
				locale_id, 
				source, 
				specificsource, 
				customfield_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				actualsource, 
				actualspecificsource, 
				TO_CHAR(presentaddr_begindate, 'YYYY-MM-DD HH24:MI:SS') as presentaddr_begindate,
				county, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM personcontact 
	 WHERE (datelastmodified >= <FROMDATE_Q>)