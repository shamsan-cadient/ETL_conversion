-- Query extracted from SSIS_SQLText
-- FlowSQLId: 32
-- FlowId: 32
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331796

SELECT		location_id, 
				version, 
				state, 
				country, 
				zipcode, 
				email, 
				phone, 
				faxnumber, 
				isactive, 
				storenum, 
				parentlocation_id, 
				logicalqualifier_id, 
				parentlogicalqualifier_id, 
				client_id, 
				customfield_id, 
				locationtype, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				apptype, 
				versionobject_id, 
				domainobject_id, 
				isarchived, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM location_atao