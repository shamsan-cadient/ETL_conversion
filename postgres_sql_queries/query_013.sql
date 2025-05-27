-- Query extracted from SSIS_SQLText
-- FlowSQLId: 13
-- FlowId: 13
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329851


SELECT jobbid_id, version,        TO_CHAR(biddate, 'YYYY-MM-DD HH24:MI:SS') as biddate,   
     null as atsstatus,         null as atsstatusdate,   null as atsstatusreason,   
	      process_id,       prescreenscore,       prescreenrawscore,       averagescore,   
		      mailstatus,       prescreenstatus,         bidstatus,       hmcbidstatus,      
			   initialhmcbidstatus,       qualifier_id,       postingtype,       referredby_id,    
			      person_id,        application_id,        location_id,       null as customfield_id,    
				     datachannel,        TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,        
					  TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,  TO_CHAR(datelockends, 'YYYY-MM-DD HH24:MI:SS') as 
					  datelockends,  TO_CHAR(dateapplicationexpires, 'YYYY-MM-DD HH24:MI:SS') as dateapplicationexpires,       
					    jobapplicationstatus,       initialstatus,       dirtybit,       pageflowinstance,       
						  TO_CHAR(datejaflockrelinquishes, 'YYYY-MM-DD HH24:MI:SS') as datejaflockrelinquishes, appliedforlocation_id, 
						  createdby, lastmodifiedby, ismetajobbid, metajobbid_id, wassaved,        null as islocked, positionkey_id,
						    assessmentscore_id, initialposting_id, migratedversion, uniqueapplicationid,       
							  guuid, isformeremployee,  null as isrehireeligible, i9taxwithholding_id, w4taxwithholding_id,scorebandsortvalue, 
							         basepayamount, basepayrate, islocking, biddatenumber,eobflowinstance,videoconfirmation,     
									    overallphasescore_id, scoredisplaylevel,null as isexplicitlyunlocked,      
										 <BATCHDATE>	 as ExtractDate,
										 <BATCHDATE> as BatchDate,    
										    CAST(1 AS integer) as SourceSkey      FROM jobbid       WHERE (datelastmodified >= <BATCHDATE>)