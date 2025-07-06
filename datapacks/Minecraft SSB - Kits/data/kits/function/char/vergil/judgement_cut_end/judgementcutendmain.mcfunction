scoreboard players add @s kits.timer 1

execute as @e[type=area_effect_cloud,tag=vergiljudgementcutspot] at @s run tp @p[tag=VergilJudgementCutEnd,scores={kits.timer=..20}] ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=judgementcutmiddle,limit=1,sort=nearest]

execute at @s[scores={kits.timer=..20}] run playsound minecraft:entity.player.attack.strong neutral @a[distance=..15] ~ ~ ~ 2 2 1

execute at @s[scores={kits.timer=3}] rotated ~ 0 run function kits:char/vergil/judgement_cut_end/judgementcut

execute at @s[scores={kits.timer=6}] rotated ~ 0 run function kits:char/vergil/judgement_cut_end/judgementcut2

execute as @e[type=area_effect_cloud,tag=judgementcutmiddle] at @s run function kits:char/vergil/judgement_cut_end/visual/judgementcutend

effect clear @s[scores={kits.timer=60..}] resistance
attribute @s[scores={kits.timer=60..}] minecraft:movement_speed modifier remove speed.judgementcut.vergil
attribute @s[scores={kits.timer=60..}] minecraft:attack_damage modifier remove damage.judgementcut.vergil
execute if entity @s[scores={kits.timer=20..}] run kill @e[type=armor_stand,tag=judgementcut]
execute if entity @s[scores={kits.timer=60..}] run tag @s add VergilDash
execute if entity @s[scores={kits.timer=60..}] run scoreboard players set @s kits.timer4 0
execute if entity @s[scores={kits.timer=60..}] run tag @s remove Invincible
execute if entity @s[scores={kits.timer=60..}] run tag @s remove VergilJudgementCutEnd
scoreboard players reset @s[scores={kits.timer=60..}] kits.timer
