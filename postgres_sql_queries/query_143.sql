-- Query extracted from SSIS_SQLText
-- FlowSQLId: 143
-- FlowId: 143
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345743

SELECT		personadditionalinfo_id, 
				version, 
				highesteducation, 
				highestgradehighschool, 
				highestgradecollege, 
				maritalstatus, 
				withholdingstatus, 
				allowances, 
				CAST(additionalamount AS numeric(38, 20)) as additionalamount,
				CAST(hourlyrate AS numeric(38, 20)) as hourlyrate,
				attendedhighschool::integer, 
				attendedcollege::integer, 
				attendedvocationalschool::integer, 
				hascriminalhistory::integer, 
				hasmilitaryservice::integer, 
				hasdrivinglicense::integer, 
				hasdrivingaccident::integer, 
				hasdrivingviolation::integer, 
				haspreviousaddress::integer, 
				hasged::integer, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated, 
			    TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				document_id, 
				attendeduniversityfurtheredu::integer,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.personadditionalinfo pai
	 WHERE (datelastmodified >= <FROMDATE_Q>)