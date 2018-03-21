match (u:User)-[:POSTED]->(a:Tweet)-[:RETWEETED]->(b:Tweet)<-[:POSTED]-(t:Troll), (a:Tweet)-[:MENTIONS]->(:User { screen_name: 'realdonaldtrump' })
return u,a,b,t
limit 10