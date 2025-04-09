scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tag @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] add SansInTelekinesis
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run effect give @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] glowing 5 0 true
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tag @s add SansTelekinesis
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run playsound minecraft:entity.arrow.hit_player neutral @a[distance=..100] ~ ~ ~ 10 0.75 1
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability4CD 0

execute as @s[scores={kits.raycastTick=..40}] positioned ^ ^ ^0.5 run function kits:sans/sanspassive6
