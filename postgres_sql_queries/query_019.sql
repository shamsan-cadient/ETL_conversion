-- Query extracted from SSIS_SQLText
-- FlowSQLId: 19
-- FlowId: 19
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330477

SELECT		jobbid_workflow_instance_id, 
				version, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				jobbid_id, 
				processinstance_id, 
				isactive, 
				flowname, 
				instancestate, 
				workflowtype, 
				remainingruncount, 
				order_num, 
				applicablebidstatuses, 
				currentnodename, 
				parent_processinstance_id, 
				businessrulename, 
				workflowcategory, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobbid_workflow_instance jbwi
	 WHERE (datelastmodified >= <FROMDATE_Q>)