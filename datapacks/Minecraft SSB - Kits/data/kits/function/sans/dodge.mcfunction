scoreboard players set @s kits.ability5CD 0
scoreboard players set @s kits.raycastTick 0
particle poof ~ ~1 ~ 0 0 0 0.5 100 force
playsound minecraft:entity.arrow.hit_player neutral @a[distance=..30] ~ ~ ~ 10 0.5
#execute at @s positioned ~ ~1.5 ~ run function kits:sans/sanspassive4
effect give @s minecraft:speed 1 2 true
tag @s add SansDodged
schedule function kits:sans/dodgeend 13t append
#effect clear @s
