execute if entity @s[tag=GutsBerserker] run damage @s 1 bypass:player_attack_true_damage_no_kb by @s
execute if entity @s[tag=GutsBerserker] run particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.1 30 force
execute if entity @s[tag=GutsBerserker] run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..10] ~ ~ ~ 1.5 0.5 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:80,Tags:["GutsDragonslayerSmash","GutsDragonslayerSmashPrep"]}
tp @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] @s
execute as @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] at @s run tp @s ~ ~1 ~ ~180 0

attribute @s minecraft:attack_speed modifier add attackspeed.smash.guts -20 add_value
schedule function kits:char/guts/smash/dashend 40t replace

scoreboard players set @s kits.raycastTick 0
scoreboard players set @s kits.raycastTick2 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/guts/smash/raycast

scoreboard players set @s kits.ability1CD 0