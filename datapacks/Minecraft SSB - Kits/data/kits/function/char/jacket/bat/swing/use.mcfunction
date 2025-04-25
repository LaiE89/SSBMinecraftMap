## When Swing Is Used
# Swings bat
scoreboard players reset @s[scores={kits.timer4=2..}] kits.timer4
scoreboard players add @s kits.timer4 1
execute if entity @s[scores={kits.timer4=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["JacketBatSwing","JacketBatSwingLeft"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:9}
execute if entity @s[scores={kits.timer4=2}] run summon area_effect_cloud ~ ~ ~ {Tags:["JacketBatSwing","JacketBatSwingRight"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:9}
tp @e[limit=1,sort=nearest,tag=JacketBatSwingLeft,type=area_effect_cloud] ~ ~ ~ facing ^3 ^ ^
tp @e[limit=1,sort=nearest,tag=JacketBatSwingRight,type=area_effect_cloud] ~ ~ ~ facing ^-3 ^ ^

# Sound
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Reset scores
scoreboard players set @s kits.ability1CD 0
