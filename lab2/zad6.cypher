MATCH (trump:User { screen_name: 'realdonaldtrump' }), (hilary:User { screen_name: 'hillaryclinton' }), p = shortestPath((trump)-[*]-(hilary))
RETURN p