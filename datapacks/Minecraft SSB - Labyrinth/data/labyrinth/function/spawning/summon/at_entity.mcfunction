## Executes at spawned entity
# merge specific data
$function labyrinth:spawning/summon/id/$(id)
data merge entity @s {drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,body:0.000,mainhand:0.000,offhand:0.000,saddle:0.000}}
data modify entity @s PersistenceRequired set value 1b

# join team
team join LabyrinthMobs

# tracking
tag @s add labyrinth.newEntity
data merge entity @s {attributes:[{id:"minecraft:follow_range",base:100}]}
schedule function labyrinth:spawning/summon/track_schedule 2t replace

# vfx
execute rotated ~ 0 positioned ~ ~ ~0.0625 run function labyrinth:spawning/summon/pentagram