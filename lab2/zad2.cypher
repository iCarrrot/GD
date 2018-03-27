//2
MATCH (:Tweet) -[:MENTIONS]-> (t:Troll)
RETURN t.screen_name as troll, count(*) as counter
ORDER BY counter DESC LIMIT 10