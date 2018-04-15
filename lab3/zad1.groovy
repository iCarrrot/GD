 g.V().has("country","PL").as("PL").outE().as("dystans").inV().has("country","DE").as("DE").select("PL","dystans", "DE").by("city").by("dist").by("city")
