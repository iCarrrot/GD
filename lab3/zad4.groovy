g.V().
    has("city","Wroclaw").
    repeat(out()).
    times(4).emit().
    has("country","UK").
    path().
    by("city")
