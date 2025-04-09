## When Ice is Used
# Hits nearby enemies
execute as @e[distance=..10,tag=!Siris,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:siris/blade/magic/spells/ice/hit

# FX
function kits:siris/vfx/particles/magic/ice
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.player.hurt_freeze neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Confirms spell
scoreboard players set @s kits.timer -1
