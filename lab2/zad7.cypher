match (t1:Troll)-[:POSTED]->(a:Tweet)-[:RETWEETED]->(b:Tweet)<-[:POSTED]-(t2:Troll)
merge (t1)-[:CITES]-> (t2)