scoreboard players add @s kits.timer3 1
execute if score @s kits.timer3 matches 20.. run clear @s[scores={kits.timer4=..4}] arrow
execute if score @s kits.timer3 matches 20.. run item replace entity @s[scores={kits.timer4=..4}] container.9 with arrow 5
execute if score @s kits.timer3 matches 1 run playsound minecraft:item.crossbow.loading_start neutral @a[distance=..20] ~ ~ ~ 2 1 1
execute if score @s kits.timer3 matches 10 run playsound minecraft:item.crossbow.loading_middle neutral @a[distance=..20] ~ ~ ~ 2 1 1
execute if score @s kits.timer3 matches 20.. run playsound minecraft:item.crossbow.loading_end neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
execute if score @s kits.timer3 matches 20.. run scoreboard players set @s kits.timer3 0

execute as @p[tag=Guts] store result score @s kits.timer4 run clear @s minecraft:arrow 0
