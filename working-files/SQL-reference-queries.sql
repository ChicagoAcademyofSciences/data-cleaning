-- checks mammal events for verification status count and returns event ids
SELECT count(specimen_event.verificationstatus) count_verif,
decode(specimen_event.verificationstatus,
  'unaccepted', 'a unaccepted',
  'accepted', 'b accepted',
  'unverified', 'c unverified',
  'other') verificationstatus, 
cataloged_item.cat_num, collecting_event.collecting_event_id, specimen_event.specimen_event_id from specimen_event

left join cataloged_item on specimen_event.COLLECTION_OBJECT_ID = cataloged_item.collection_object_id
left join collection on cataloged_item.collection_id = collection.collection_id
left join collecting_event on specimen_event.collecting_event_id = collecting_event.collecting_event_id

where collection.guid_prefix like 'CHAS:Mamm'

group by cataloged_item.cat_num, specimen_event.specimen_event_id, specimen_event.verificationstatus, collecting_event.collecting_event_id

order by cat_num, verificationstatus


-- Returns bird specimen_event/locality stack
SELECT cataloged_item.cat_num,
specimen_event.specimen_event_id,
specimen_event.VERIFICATIONSTATUS,
specimen_event.VERIFIED_DATE,
agent.preferred_agent_name as verified_agent,
specimen_event.SPECIMEN_EVENT_REMARK,
collecting_event.collecting_event_id,
collecting_event.verbatim_date,
collecting_event.began_date,
collecting_event.ended_date,
collecting_event.VERBATIM_LOCALITY,
collecting_event.coll_event_remarks,
collecting_event.verbatim_coordinates,
locality.LOCALITY_ID,
locality.spec_locality,
locality.DEC_LAT,
locality.DEC_LONG,
locality.LOCALITY_REMARKS,
GEOG_AUTH_REC.HIGHER_GEOG

FROM cataloged_item

LEFT JOIN specimen_event on cataloged_item.COLLECTION_OBJECT_ID = specimen_event.COLLECTION_OBJECT_ID
LEFT JOIN collecting_event on specimen_event.COLLECTING_EVENT_ID = collecting_event.COLLECTING_EVENT_ID
LEFT JOIN locality on collecting_event.locality_id = locality.locality_id
LEFT JOIN collection on cataloged_item.collection_id = collection.collection_id
LEFT JOIN agent on specimen_event.VERIFIED_BY_AGENT_ID = agent.agent_id
LEFT JOIN GEOG_AUTH_REC on locality.GEOG_AUTH_REC_ID = GEOG_AUTH_REC.GEOG_AUTH_REC_ID

where collection.guid_prefix like 'CHAS:Bird'

order by cataloged_item.cat_num

-- Checks if the taxon_name input exists in the database
SELECT count(classification_id), scientific_name
from taxon_name left join taxon_term on taxon_name.taxon_name_id = taxon_term.taxon_name_id where source like 'Arctos' AND

scientific_name like 'Tectura scutum'

group by scientific_name


--Select all identifications with Arctos classifications from a given collection
SELECT identification.accepted_id_fg,
  identification.identification_remarks,
  identification.nature_of_id,
  identification.scientific_name as id_string,
  identification.taxa_formula,
  identification.made_date,
  identification.identification_id,
  agent.preferred_agent_name,
  cataloged_item.cat_num,
  cataloged_item.collection_cde,
  cataloged_item.collection_object_id,
  taxon_name.scientific_name as id_class,
  decode(taxon_term.source,
    'Arctos', 'Arctos',
    'Other') source,
  taxon_term.classification_id,
  taxon_term.term,
  taxon_term.term_type

from identification

left join cataloged_item on identification.collection_object_id = cataloged_item.collection_object_id
left join identification_taxonomy on identification.identification_id = identification_taxonomy.identification_id
left join taxon_name on identification_taxonomy.taxon_name_id = taxon_name.taxon_name_id
left join identification_agent on identification.identification_id = identification_agent.identification_id
left join agent on identification_agent.agent_id = agent.agent_id
left join taxon_term on taxon_name.taxon_name_id = taxon_term.taxon_name_id

--this last bit selects based on Arctos Source
where cataloged_item.collection_cde like 'Ento' and source = 'Arctos'



--Cleaning up no date records with birth/death dates and accession receipt dates

SELECT collection.institution_acronym, cataloged_item.collection_cde, cataloged_item.cat_num, accn.accn_number, accn.received_date, collecting_event.began_date, collecting_event.ended_date, identification.scientific_name, identification.accepted_id_fg, agent_status.agent_status, agent_status.status_date

FROM cataloged_item

JOIN specimen_event ON cataloged_item.collection_object_id = specimen_event.collection_object_id
JOIN collecting_event ON specimen_event.collecting_event_id = collecting_event.collecting_event_id
JOIN accn ON cataloged_item.accn_id = accn.transaction_id
JOIN collection ON cataloged_item.collection_id = collection.collection_id

JOIN identification ON cataloged_item.collection_object_id = identification.collection_object_id


JOIN collector ON cataloged_item.collection_object_id = collector.collection_object_id
JOIN agent ON collector.agent_ID = agent.agent_id
JOIN agent_status ON agent.agent_id = agent_status.agent_id

WHERE collection.institution_acronym = 'CHAS'
AND agent_status.agent_status NOT LIKE 'alive'
AND collector.collector_role = 'collector'
AND identification.accepted_id_fg = 1
AND collecting_event.began_date = '1800'
AND accn.accn_number NOT LIKE 'accession unknown'
AND accn.accn_number NOT LIKE '2015.13'
AND accn.accn_number NOT LIKE '2016.5'
AND accn.accn_number NOT LIKE '2016.2'
AND accn.accn_number NOT LIKE '2016.6'
AND accn.accn_number NOT LIKE '2017.10'
AND accn.accn_number NOT LIKE '2017.13'
AND accn.accn_number NOT LIKE '2017.14'
AND accn.accn_number NOT LIKE '2017.15'
AND accn.accn_number NOT LIKE '2017.2'
AND accn.accn_number NOT LIKE '2017.3'
AND accn.accn_number NOT LIKE '2017.5'
AND accn.accn_number NOT LIKE '2018.2'

-- Matching accessions contents
-- The following returns a list of collectors within an accn and enumerates the number of specimens they collected in this accn
SELECT accn_agt.institution_acronym, accn_agt.accn_number, accn_agt.preferred_agent_name, count(accn_agt.agent_ID) AS agt_cnt

FROM
  (SELECT accn.accn_number, accn.transaction_id, collector.agent_id, agent.preferred_agent_name, collection.institution_acronym

  FROM accn

  JOIN cataloged_item ON accn.transaction_id = cataloged_item.accn_id
  JOIN collector ON cataloged_item.collection_object_id = collector.collection_object_id
  JOIN agent ON collector.agent_id = agent.agent_id
  JOIN trans ON accn.transaction_id = trans.transaction_id
  JOIN collection ON trans.collection_id = collection.collection_id
  JOIN specimen_event ON cataloged_item.collection_object_id = specimen_event.collection_object_id
  JOIN collecting_event ON specimen_event.collecting_event_id = collecting_event.collecting_event_id

  WHERE accn.accn_number NOT LIKE 0

  ORDER BY accn.transaction_id, collector.agent_id) accn_agt

WHERE accn_agt.institution_acronym = 'CHAS'

GROUP BY accn_agt.institution_acronym, accn_agt.accn_number, accn_agt.preferred_agent_name
ORDER BY accn_agt.accn_number, agt_cnt DESC

--Returns accns with specimens contained within as well as the nature of material

SELECT accn.estimated_count, accn.accn_number, (SELECT COUNT(*) FROM cataloged_item WHERE cataloged_item.accn_ID = accn.transaction_ID) AS cnt_spec, trans.nature_of_material, collection.institution_acronym, agent.preferred_agent_name, trans.trans_date

FROM accn

JOIN trans ON accn.transaction_ID = trans.transaction_ID
JOIN collection ON trans.collection_id = collection.collection_id
JOIN trans_agent ON trans.transaction_id = trans_agent.transaction_id
JOIN agent ON trans_agent.agent_ID = agent.agent_ID

WHERE institution_acronym = 'CHAS' AND
(trans_agent.trans_agent_role = 'received from' OR trans_agent.trans_agent_role = 'associated with agency')

ORDER BY accn_number


-- To pull georeferences by a specific agent_ID

select agent.preferred_agent_name, specimen_event.verified_date, cataloged_item.cat_num, identification.scientific_name, collecting_event.verbatim_locality, locality.spec_locality, geog_auth_rec.state_prov, geog_auth_rec.county, locality.locality_remarks

from cataloged_item

join specimen_event on cataloged_item.collection_object_id = specimen_event.collection_object_id
join agent on specimen_event.verified_by_agent_id = agent_id
join identification on cataloged_item.collection_object_id = identification.collection_object_id
join collecting_event on specimen_event.collecting_event_id = collecting_event.collecting_event_id
join locality on collecting_event.locality_id = locality.locality_id
join geog_auth_rec on locality.geog_auth_rec_id = geog_auth_rec.geog_auth_rec_id

where specimen_event.VERIFIED_BY_AGENT_ID = 21313948
and identification.accepted_id_fg = 1
