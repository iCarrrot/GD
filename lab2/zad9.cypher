//9

match (t:Troll)-[:POSTED]->(tweet:Tweet)-[:HAS_TAG]->(tag:Hashtag) where t.partition is not null
with t.partition as group, tag.tag as htag, count(tweet) as counter
order by counter desc 
with group, collect({hashtag: htag, count: counter}) as tags
return group, tags[0].hashtag, tags[0].count as counter
order by counter desc