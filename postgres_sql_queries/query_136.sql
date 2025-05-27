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
			TO_CHAR(authorizedtowork, 'YYYY-MM-DD HH24:MI:SS') as authorizedtowork,  
			alienoradmissionno, 
			maidenname, 
			TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
			createdby, 
			lastmodifiedby, 
			identityeligibility, 
			identityeligibilitya,
			TO_CHAR(expdatelista, 'YYYY-MM-DD HH24:MI:SS') as expdatelista,  
			issuingauthlista, 
			documentlista, 
			identityeligibilityb,
			TO_CHAR(expdatelistb, 'YYYY-MM-DD HH24:MI:SS') as expdatelistb,  
			issuingauthlistb, 
			documentlistb, 
			identityeligibilityc,
			TO_CHAR(expdatelistc, 'YYYY-MM-DD HH24:MI:SS') as expdatelistc,  
			issuingauthlistc, 
			documentlistc,
			TO_CHAR(secondexpdatelista, 'YYYY-MM-DD HH24:MI:SS') as secondexpdatelista,  
			seconddocumentlista, 
			null as preparername, 
			null as prepareraddress, 
			null as preparerdate, 
			TO_CHAR(beganemploymentdate, 'YYYY-MM-DD HH24:MI:SS') as beganemploymentdate, 
			alienoradmissiontype, 
			<BATCHDATE> as ExtractDate, 
			<BATCHDATE> as BatchDate, 
			<SOURCESKEY> as SourceSkey 
	 FROM i9taxwithholding 
	 WHERE (datelastmodified >= <FROMDATE_Q>)