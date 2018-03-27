//1
MATCH (t:Troll) -[:POSTED]-> (:Tweet) -[:CONTAINS_ENTITY]->(l:Location) 
RETURN l.name as name, count(distinct t) as counter
ORDER BY counter DESC LIMIT 10