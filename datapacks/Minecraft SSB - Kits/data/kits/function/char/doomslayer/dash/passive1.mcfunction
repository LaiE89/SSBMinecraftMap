# =============== Dash Ability ===============
# Other
playsound minecraft:entity.ravager.step neutral @a[distance=..5] ~ ~ ~ 1 2 1
particle block{block_state:"minecraft:dirt"} ~ ~0.35 ~ 0.5 0 0.5 0.5 35 force
scoreboard players remove @s kits.ability5CD 1
tag @s add DoomslayerDashCD
#effect give @s minecraft:speed 1 4 true
attribute @s minecraft:movement_speed modifier add speed.dash.doomslayer 0.1 add_value

# Dash Raycast
execute at @s run function kits:char/doomslayer/dash/dashdirection
#execute at @s[scores={kits.criterion.run=0}] rotated ~ 0 positioned ~ ~ ~ run function kits:char/doomslayer/dash/passive3
