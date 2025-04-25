## All portals
# from spawn
execute if entity @s[x=5,y=1,z=-57,dx=-10,dy=23,dz=0] run function system:utilities/portals/spawn_to_arena
execute if entity @s[x=5,y=1,z=57,dx=-10,dy=23,dz=0] run function system:utilities/portals/spawn_to_labyrinth

# from arena
execute if entity @s[x=2,y=18,z=-919,dx=-4,dy=6,dz=0] run function system:utilities/portals/arena_to_spawn