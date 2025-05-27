-- Query extracted from SSIS_SQLText
-- FlowSQLId: 182
-- FlowId: 182
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351336

SELECT		vendorintegration_id,                    
				version,                                 
				vendor_name,                                                                                          
				integration_type,                                                                                                                                                                                                                                                                   
				internal_name,                                                                                                                  
				scriptcategory,                                                                                                                                                                                                                                                  
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,         
				createdby,                               
				lastmodifiedby,                          
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM vendorintegration 
	 WHERE (datelastmodified >= <FROMDATE_Q>)