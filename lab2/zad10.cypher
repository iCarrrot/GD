//10
match (u:User)-[:POSTED]->(a:Tweet)-[:RETWEETED]->(b:Tweet)<-[:POSTED]-(t:Troll), 
    (a:Tweet)-[:MENTIONS]->(:User { screen_name: 'realdonaldtrump'}) 
where NOT u:Troll
return u,a,b,t
limit 10