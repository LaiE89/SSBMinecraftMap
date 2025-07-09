# note: called in tick function
## Running executed at zones
# basement
execute unless score %spawning.zone.prison labyrinth.math matches 1 if entity @a[predicate=labyrinth:zones/prison] run function labyrinth:spawning/zones/enter {"createMarkers":"function labyrinth:spawning/zones/prison/create","zoneName":"%spawning.zone.prison"}
execute if score %spawning.zone.prison labyrinth.math matches 1 unless entity @a[predicate=labyrinth:zones/prison] run function labyrinth:spawning/zones/exit {"deleteMarkers":"function labyrinth:spawning/zones/prison/delete","zoneName":"%spawning.zone.prison"}

# low frequency checks
schedule clear labyrinth:spawning/zones/main