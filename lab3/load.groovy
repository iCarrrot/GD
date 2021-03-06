// To execute use the console command ":load load-data.groovy"
//

conf = new BaseConfiguration()
conf.setProperty("gremlin.tinkergraph.vertexIdManager","LONG")
conf.setProperty("gremlin.tinkergraph.edgeIdManager","LONG")
graph = TinkerGraph.open(conf)

// Change the path below to point to wherever you put the data file
graph.io(graphml()).readGraph('air-routes.graphml')

g=graph.traversal()
