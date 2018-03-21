MATCH (:Troll) -[:POSTED]-> (:Tweet) -[:CONTAINS_ENTITY]->(l:Location) 
RETURN l.name as name, count(*) as counter
ORDER BY counter DESC LIMIT 10