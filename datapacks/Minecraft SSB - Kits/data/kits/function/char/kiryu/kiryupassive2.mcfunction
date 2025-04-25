scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

# Wall Crush
execute if entity @s[scores={kits.timer2=10..}] as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run function kits:char/kiryu/wallcrushgrab
execute if entity @s[scores={kits.timer2=10..}] at @s[scores={kits.raycastTick=2222}] run scoreboard players set @s[scores={kits.timer2=10..}] kits.timer2 0

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.ability1CD 0

execute as @s[scores={kits.raycastTick=..9}] positioned ^ ^ ^0.5 run function kits:char/kiryu/kiryupassive2
