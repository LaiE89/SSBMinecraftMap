scoreboard players add @s kits.timer3 1
execute if score @s kits.timer3 matches 15.. run particle block{block_state:"minecraft:granite"} ~ ~0.2 ~ 2 0 2 0.25 150 force
execute if score @s kits.timer3 matches 15.. run particle smoke ~ ~0.2 ~ 2 0 2 0 200 force
execute if score @s kits.timer3 matches 15.. run playsound minecraft:block.gilded_blackstone.break neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute if score @s kits.timer3 matches 15.. run playsound minecraft:item.shield.block neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute if score @s kits.timer3 matches 15.. run playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute if score @s kits.timer3 matches 15.. run execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 3 bypass:player_attack by @p[tag=Cynthia]
execute if score @s kits.timer3 matches 15.. run scoreboard players add @s kits.timer4 1
execute if score @s kits.timer3 matches 15.. run scoreboard players reset @s kits.timer3

execute if score @s kits.timer4 matches 3.. run tag @s remove GarchompEarthquake
execute if score @s kits.timer4 matches 3.. run scoreboard players reset @s kits.timer4
