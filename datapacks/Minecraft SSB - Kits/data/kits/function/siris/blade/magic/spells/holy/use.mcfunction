## When Holy is Used
# Hits nearby enemies
effect give @s instant_health 1 1 true
execute as @e[distance=..10,tag=!Siris,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:siris/blade/magic/spells/holy/hit

# FX
function kits:siris/vfx/particles/magic/holy
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5
playsound entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 0.75 1.5 0.75

# Confirms spell
scoreboard players set @s kits.timer -1
