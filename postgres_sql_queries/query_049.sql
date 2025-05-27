-- Query extracted from SSIS_SQLText
-- FlowSQLId: 49
-- FlowId: 49
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333624

SELECT		question_id, 
				version, 
				questioncategory, 
				questiontype, 
				questionsubtype, 
				client_id, 
				scriptsupertype, 
				heading, 
				description, 
				questionkey, 
				editable, 
				parentquestion_id, 
				itaxquid, 
				objectmapping, 
				isactive, 
				/*to_number(NULL) source_question_id, */
				guuid, 
				to_char(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
				createdby, 
				to_char(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				lastmodifiedby, 
				time_limit, 
				displayformat, 
				decimalprecision, 
				encrypted::integer, 
				usesselectlist::integer, 
				issensitivedata::integer,
				questioncontext,
				datameaning_id,
				responseminvalue,
				responsemaxvalue,
				numericlength,
				questionidentifier,
				datevalidationtype,
				datefromoffset,
				datetooffset,
				isintegrationquestion::integer,
				<BATCHDATE> as extractdate, 
				<BATCHDATE> as batchdate, 
				<SOURCESKEY> as sourceskey
	 FROM question_atao 
	 WHERE (datecreated >= <FROMDATE_Q>) OR (datelastmodified >= <FROMDATE_Q>)
