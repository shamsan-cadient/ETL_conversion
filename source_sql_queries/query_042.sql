-- Query extracted from SSIS_SQLText
-- FlowSQLId: 42
-- FlowId: 42
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332841

SELECT		personaccounting_id, 
				version, 
				wotcstatus, 
				wtwstatus, 
				statecredit, 
				federalqualified, 
				statequalified, 
				taxcreditcomplete, 
				adpformurl, 
				wotcformurl, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				customfield_id, 
				wotctransactionid, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM personaccounting 
	 WHERE (datelastmodified >= <FROMDATE_Q>)