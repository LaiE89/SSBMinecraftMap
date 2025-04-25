scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..20] ~ ~ ~ 10 0.5 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run function kits:char/ness/smashknockback
execute as @s[scores={kits.raycastTick=..8}] positioned ^ ^ ^0.5 run function kits:char/ness/smash
