g.V().has("country","UK").values("city").toList() - 
g.V().
    has("city","Wroclaw").
    repeat(out()).
    times(4).emit().
    has("country","UK").
    values("city").toList()
