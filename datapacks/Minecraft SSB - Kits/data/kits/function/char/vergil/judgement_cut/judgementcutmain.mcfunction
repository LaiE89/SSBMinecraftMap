scoreboard players add @s kits.timer 1

execute as @e[type=area_effect_cloud,tag=judgementcutmiddle] at @s positioned ~ ~1.5 ~ run function kits:char/vergil/judgement_cut/visual/play

execute if entity @s[scores={kits.timer=1..10}] run playsound minecraft:item.trident.hit neutral @a[distance=..20] ~ ~ ~ 3 1 1
attribute @s[scores={kits.timer=10..}] minecraft:movement_speed modifier remove speed.judgementcut.vergil
attribute @s[scores={kits.timer=10..}] minecraft:attack_damage modifier remove damage.judgementcut.vergil
execute if entity @s[scores={kits.timer=10..}] run tag @s add VergilDash
execute if entity @s[scores={kits.timer=10..}] run scoreboard players set @s kits.timer4 0
execute if entity @s[scores={kits.timer=10..}] run tag @s remove VergilJudgementCut
execute if entity @s[scores={kits.timer=10..}] run function kits:char/vergil/judgement_cut/visual/end
scoreboard players reset @s[scores={kits.timer=10..}] kits.timer
