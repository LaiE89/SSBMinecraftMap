execute at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^6 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["judgementcutmiddle"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["vergiljudgementcutspot"]}
execute at @e[type=area_effect_cloud,tag=judgementcutmiddle] as @e[type=armor_stand,tag=forceedge,distance=..7] at @s run function kits:char/vergil/forceedgepickup
scoreboard players set @s kits.timer 0
tag @s add VergilJudgementCutEnd
tag @s add Invincible
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:levitation 1 0 true
attribute @s minecraft:movement_speed modifier add speed.judgementcut.vergil -1 add_multiplied_total
attribute @s minecraft:attack_damage modifier add damage.judgementcut.vergil -20 add_value
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 3 2 1
playsound minecraft:block.respawn_anchor.set_spawn neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
playsound minecraft:item.trident.return neutral @a[distance=..30] ~ ~ ~ 10 1 1
scoreboard players set @s kits.ability1CD 0
