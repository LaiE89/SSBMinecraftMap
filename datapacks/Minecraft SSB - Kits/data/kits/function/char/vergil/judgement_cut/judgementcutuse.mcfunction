scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~ ~ run function kits:char/vergil/vergilpassive3
scoreboard players set @s kits.timer 0
tag @s add VergilJudgementCut
attribute @s minecraft:movement_speed modifier add speed.judgementcut.vergil -0.08 add_value
attribute @s minecraft:attack_damage modifier add damage.judgementcut.vergil -20 add_value
playsound minecraft:block.respawn_anchor.set_spawn neutral @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players remove @s kits.ability1CD 1
