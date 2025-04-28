## When Ice is Used
# Hits nearby enemies
execute as @e[type=!#kits:non_entity,distance=..20,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/siris/blade/magic/spells/ice/hit

# FX
execute rotated ~ 0 positioned ^ ^0.4 ^1.5 run function kits:char/siris/vfx/particles/magic/ice
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.player.hurt_freeze neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Confirms spell
scoreboard players set @s kits.timer -1
