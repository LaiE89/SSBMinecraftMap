execute on attacker run execute if entity @s[tag=!EdwardCastingWall] run function kits:edward/wallpunch
execute on target run execute if entity @s[scores={kits.ability3CD=200..},predicate=kits:items/edward/deconstruction] run function kits:edward/wallexplode
data remove entity @s attack
