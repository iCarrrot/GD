//3
MATCH (u:User) -[:POSTED]-> (:Tweet) -[:MENTIONS]-> (t:Troll)
RETURN t.screen_name as troll, count(distinct u) as counter
ORDER BY counter DESC LIMIT 10