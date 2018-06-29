#Cleaning up no date records with birth/death dates and accession receipt dates

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

#Matching accessions contents
SELECT DISTINCT accn_number, agent_ID, count(agent_ID) AS agt_cnt
FROM (SELECT accn.accn_number, collector.agent_ID

FROM accn

JOIN cataloged_item ON accn.transaction_ID = cataloged_item.accn_ID
JOIN collector ON cataloged_item.collection_object_id = collector.collection_object_id

WHERE accn.accn_number NOT LIKE 0)

GROUP BY accn_number, agent_ID



SELECT accn.accn_number, collector.agent_ID, COUNT(*) as feq_coll

FROM accn, cataloged_item, collector

JOIN cataloged_item ON accn.transaction_ID = cataloged_item.accn_ID
JOIN collector ON cataloged_item.collection_object_id = ollector.collection_object_id

GROUP BY accn.transaction_ID, collector.agent_ID

WHERE cataloged_item.accn_ID = accn.transaction_ID AND
cataloged_item.collection_object_id = collector.collection_object_id AND
accn.accn_number NOT LIKE 0

ORDER BY accn.transaction_ID, collector.agent_ID



SELECT DISTINCT on (user_id) user_id, most_frequent_value
FROM (SELECT user_id, data1 AS most_frequent_value, count(*) as _count
FROM my_table
GROUP BY user_id, data1) a
ORDER BY user_id, _count DESC


Returns accns with specimens contained within

SELECT accn.estimated_count, accn.accn_number, (SELECT COUNT(*) FROM cataloged_item WHERE cataloged_item.accn_ID = accn.transaction_ID) as cnt_spec, trans.nature_of_material
FROM accn
JOIN trans on accn.transaction_ID = trans.transaction_ID

ORDER by cnt_spec DESC
