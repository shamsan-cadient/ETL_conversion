-- Query extracted from SSIS_SQLText
-- FlowSQLId: 136
-- FlowId: 136
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344647

SELECT	i9taxwithholding_id, 
			version, 
			eligibilitytowork,
			CONVERT(VARCHAR(19), authorizedtowork, 120) as authorizedtowork,  
			alienoradmissionno, 
			maidenname, 
			CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
			createdby, 
			lastmodifiedby, 
			identityeligibility, 
			identityeligibilitya,
			CONVERT(VARCHAR(19), expdatelista, 120) as expdatelista,  
			issuingauthlista, 
			documentlista, 
			identityeligibilityb,
			CONVERT(VARCHAR(19), expdatelistb, 120) as expdatelistb,  
			issuingauthlistb, 
			documentlistb, 
			identityeligibilityc,
			CONVERT(VARCHAR(19), expdatelistc, 120) as expdatelistc,  
			issuingauthlistc, 
			documentlistc,
			CONVERT(VARCHAR(19), secondexpdatelista, 120) as secondexpdatelista,  
			seconddocumentlista, 
			null as preparername, 
			null as prepareraddress, 
			null as preparerdate, 
			CONVERT(VARCHAR(19), beganemploymentdate, 120) as beganemploymentdate, 
			alienoradmissiontype, 
			<BATCHDATE> as ExtractDate, 
			<BATCHDATE> as BatchDate, 
			<SOURCESKEY> as SourceSkey 
	 FROM i9taxwithholding 
	 WHERE (datelastmodified >= <FROMDATE_Q>)