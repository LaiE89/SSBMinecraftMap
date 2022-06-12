playsound minecraft:item.crossbow.quick_charge_1 neutral @a[distance=..15] ~ ~ ~ 3 1.5 1
effect give @s minecraft:levitation 1 0 true 
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:kaneki_functions/kanekipassive6
scoreboard players set @s Ability4CD 0