-- Query extracted from SSIS_SQLText
-- FlowSQLId: 26
-- FlowId: 26
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331169


		
		SELECT		localescript_id, 
				version, 
				locale_id, 
				script_id, 
				name, 
				description, 
				traittext_redscore, 
				traittext_yellowscore, 
				traittext_greenscore, 
						CONVERT(VARCHAR(19), datecreated, 120) AS datecreated
				,createdby, 
				CONVERT(VARCHAR(19), datelastmodified, 120) AS datelastmodified , 
				lastmodifiedby, 
				interquestions interquestions, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locale_script_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>) 
		