scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Jax,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tag @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Jax,tag=!InLabyrinth] add JaxLeapstrikeTo
execute at @s[scores={kits.raycastTick=2222}] run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..20] ~ ~ ~ 10 1.25 1
execute at @s[scores={kits.raycastTick=2222}] run particle block{block_state:"minecraft:sand"} ~ ~0.5 ~ 1 0 1 0 50 force
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability2CD 0
execute as @s[scores={kits.raycastTick=..30}] positioned ^ ^ ^0.5 run function kits:char/jax/jaxpassive2
