## When Holy is Used
# Hits nearby enemies
effect give @s instant_health 1 1 true
execute as @e[type=!#kits:non_entity,distance=..20,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/siris/blade/magic/spells/holy/hit

# FX
execute rotated ~ 0 positioned ^ ^0.4 ^1.5 run function kits:char/siris/vfx/particles/magic/holy
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5
playsound entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 0.75 1.5 0.75

# Confirms spell
scoreboard players set @s kits.timer -1
