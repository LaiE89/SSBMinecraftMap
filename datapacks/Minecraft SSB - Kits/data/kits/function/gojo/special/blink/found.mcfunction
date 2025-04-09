## When User Faces an Enemy While Using Blink
# Teleports behind targeted enemy
effect give @s slow_falling 2 0 true
scoreboard players set @s kits.raycastTick 2222
scoreboard players set @s kits.raycastTick2 0
execute positioned as @e[distance=..2,limit=1,sort=nearest,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] positioned ~ ~1 ~ run function kits:gojo/special/blink/tp

# SFX
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 0.5

# Remove scores
scoreboard players remove @s kits.ability1CD 20
scoreboard players set @s kits.ability5CD 0
