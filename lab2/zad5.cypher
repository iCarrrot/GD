MATCH (troll:Troll)-[:POSTED]->(t:Tweet) where t.created_str <> '' and toLower( troll.location) contains 'us' and not toLower( troll.location) contains 'uss' 
RETURN (apoc.date.fields(t.created_str).hours+3) %24 as hour , count(* ) as counter
order by counter desc