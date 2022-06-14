playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 5 0 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 5 2 1
execute as @s[tag=!DariusNoxianMight] at @s run function datapack:damage1
execute as @s[tag=DariusNoxianMight] at @s run function datapack:damage2
execute as @s[tag=!DariusNoxianMight] at @s run particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ 0.75 1 0.75 0 100
execute as @s[tag=DariusNoxianMight] at @s run particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ 0.75 1 0.75 0 500