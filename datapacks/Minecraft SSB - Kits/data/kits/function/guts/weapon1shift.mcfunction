scoreboard players set @s kits.timer2 0
execute if entity @s[tag=GutsBerserker] run damage @s 2 bypass:player_attack_true_damage_no_kb by @s
execute if entity @s[tag=GutsBerserker] run particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.1 30 force
execute if entity @s[tag=GutsBerserker] run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..10] ~ ~ ~ 1.5 0.5 1
function kits:guts/cleaveend
schedule function kits:guts/cleaveend 10t replace
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 10 0 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["DragonslayerSwing"]}
tp @e[type=area_effect_cloud,tag=DragonslayerSwing] ~ ~ ~ facing ^3 ^ ^
scoreboard players set @s kits.ability1CD 0
