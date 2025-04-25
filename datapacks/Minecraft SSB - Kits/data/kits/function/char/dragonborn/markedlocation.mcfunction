scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Dragonborn,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tag @s remove DragonbornAttacked
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tag @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Dragonborn,tag=!InLabyrinth,limit=1,sort=nearest] add DragonbornMarked
#execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run effect give @e[tag=DragonbornMarked] minecraft:poison 5 0 true
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s run playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s run playsound minecraft:ambient.cave neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run function kits:char/dragonborn/boom
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s run scoreboard players set @s kits.ability1CD 0

execute as @s[scores={kits.raycastTick=..99}] positioned ^ ^ ^0.5 run function kits:char/dragonborn/markedlocation
