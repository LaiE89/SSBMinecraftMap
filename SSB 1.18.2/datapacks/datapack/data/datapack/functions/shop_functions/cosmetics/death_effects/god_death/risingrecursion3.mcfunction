scoreboard players add @s Timer 1
particle minecraft:falling_dust minecraft:coal_block ^ ^ ^2 0.1 0.1 0.1 0 10
tp @s ~ ~0.2 ~ ~35 ~-2
execute at @s[scores={Timer=36..}] run particle minecraft:flash ~ ~ ~ 0 0 0 0 50
execute at @s[scores={Timer=36..}] run playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30]
kill @s[scores={Timer=36..}]

execute if entity @s[scores={Timer=..35}] run function datapack:shop_functions/cosmetics/death_effects/god_death/risingrecursion