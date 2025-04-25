execute as @e[type=block_display,tag=GarchompStoneEdge] at @s run tp @s ~ ~3 ~
playsound minecraft:entity.zombie.attack_wooden_door neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 5 0 1
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Cynthia]
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run scoreboard players set @s kits.raycastTick 0
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run function kits:char/cynthia/garchomp/knockup
schedule function kits:char/cynthia/garchomp/stoneedgefinish 10t append
