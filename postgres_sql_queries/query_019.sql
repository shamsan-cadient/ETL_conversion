-- Query extracted from SSIS_SQLText
-- FlowSQLId: 19
-- FlowId: 19
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330477

SELECT		/*+first_rows cursor_sharing_exact INDEX(jbwi, FBI_JBWI_DATELASTMODIFIED)*/
				jobbid_workflow_instance_id, 
				version, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
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