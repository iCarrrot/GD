call apoc.algo.community(25,null,'partition','CITES','OUTGOING','weight',10000)

match (t:Troll) where t.partition is not null
return t.partition, count(t) as c
order by c desc