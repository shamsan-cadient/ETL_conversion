-- Query extracted from SSIS_SQLText
-- FlowSQLId: 177
-- FlowId: 177
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350710

SELECT		NonHireable_Id,
                Version,
				TO_CHAR(NonHireExpiry, 'YYYY-MM-DD HH24:MI:SS') as NonHireExpiry,
                SSN,
                Client_Id,
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				CreatedBy, 
				LastModifiedBy, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM nonhireable