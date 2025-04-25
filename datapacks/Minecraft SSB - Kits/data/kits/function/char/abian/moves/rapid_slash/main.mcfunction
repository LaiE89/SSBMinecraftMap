## Execute at RS Travel Marker
# VFX
function kits:char/abian/moves/rapid_slash/vfx/main

# Dashes towards RS end marker
execute as @p[tag=Abian] at @s facing entity @e[limit=1,sort=nearest,tag=AbianRslashEndMarker,type=area_effect_cloud] eyes run tp @s ^ ^ ^2
execute positioned as @p[tag=Abian] run tp @s ~ ~ ~

# Collision
execute as @e[distance=..3,tag=!Abian,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/abian/moves/rapid_slash/hit

# Stops if near RS end marker
execute if entity @e[distance=..3,limit=1,sort=nearest,tag=AbianRslashEndMarker,type=area_effect_cloud] run function kits:char/abian/moves/rapid_slash/reached_end

# SFX
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 1.5 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 1 2 1
