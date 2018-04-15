// do poprawy, nie umiem wyłączyć tych co mają połączenie tylko do monachium

g.V().has("country","PL").where(outE().inV().has("city","Munich")).as("PL").outE().as("dystans").inV().has("country","DE").as("DE").select("PL","dystans", "DE").by("city").by("dist").by("city")

g.V().has("country","PL").where(and(outE().inV().has("city","Munich"),outE().inV().has("country","DE"))).as("PL").outE().as("dystans").inV().has("country","DE").as("DE").select("PL","dystans", "DE").by("city").by("dist").by("city")
