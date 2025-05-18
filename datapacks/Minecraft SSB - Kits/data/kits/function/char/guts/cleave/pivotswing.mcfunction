scoreboard players set @s kits.timer2 0
execute if entity @s[tag=GutsBerserker] run damage @s 1 bypass:player_attack_true_damage_no_kb by @s
execute if entity @s[tag=GutsBerserker] run particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.1 30 force
execute if entity @s[tag=GutsBerserker] run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..10] ~ ~ ~ 1.5 0.5 1
function kits:char/guts/cleave/end
schedule function kits:char/guts/cleave/end 10t replace
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 10 0 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["GutsDragonslayerCleave","GutsPivotSwing"]}
tp @e[type=area_effect_cloud,tag=GutsDragonslayerCleave] ~ ~ ~ facing ^-3 ^ ^
scoreboard players set @s kits.ability2CD 0

scoreboard players reset @s kits.timer
tag @s remove GutsPivotSwing
