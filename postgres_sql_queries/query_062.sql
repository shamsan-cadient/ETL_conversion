-- Query extracted from SSIS_SQLText
-- FlowSQLId: 62
-- FlowId: 62
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335152

SELECT	assessmentscoringinstance_id, 
			version, 
			assessment_external_id, 
			blendedscoreband, 
			CAST(blendedrawscore AS numeric(38, 20)) as blendedrawscore,
			status_cd, 
			responses, 				
		    TO_CHAR(STARTDATE, 'YYYY-MM-DD HH24:MI:SS') as assessmentstartdate,  
            TO_CHAR(ENDDATE, 'YYYY-MM-DD HH24:MI:SS') as assessmentenddate, 
			TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
			TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
			clientid, 
			sitenumber, 
			geography, 
			brand, 
			positiontitle, 
			jobfamily, 
			gender, 
			ethnicity, 
			race, 
			locale, 
			agerange, 
			trackingid, 
			applicantmunicipality, 
			applicantregion, 
			applicantcountry, 
			createdby, 
			lastmodifiedby, 
			CAST(cut_score_1 AS numeric(38, 20)) as cut_score_1, 
			CAST(cut_score_2 AS numeric(38, 20)) as cut_score_2, 
			cut_score_1_operator, 
			cut_score_2_operator, 
			issilentscore,
			<BATCHDATE> as ExtractDate, 
			<BATCHDATE> as BatchDate, 
			<SOURCESKEY> as SourceSkey 
	 FROM ss_assessmentscoringinstance 
	 WHERE (datelastmodified >= <FROMDATE_Q>)