-- Query extracted from SSIS_SQLText
-- FlowSQLId: 166
-- FlowId: 166
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349164

SELECT		ATF_Id AS AvailabilityTimeframe_Id, 
				Version, 
				Name, 
				Day,
				StartTime, 
				EndTime, 
				Location_Id,
				Jobopening_id,
				IsValid,
				TimeframeType,
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				CreatedBy,
				LastModifiedBy,
				CAST(availabilitybits AS VARCHAR) as Availabilitybits,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM AvailabilityTimeframe