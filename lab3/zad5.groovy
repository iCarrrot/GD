g.V().
    has("city","Wroclaw").
    repeat(out().has("country","UK")).
    times(4).emit().
    has("country","UK").
    path().
    by("city")
