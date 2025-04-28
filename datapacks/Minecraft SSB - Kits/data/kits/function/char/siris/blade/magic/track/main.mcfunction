## Tracks User Rotation Data
# Stores previous
scoreboard players operation @s kits.dx = @s kits.x
scoreboard players operation @s kits.dy = @s kits.y

# Stores current
execute store result score @s kits.x run data get entity @s Rotation[0] 1
execute store result score @s kits.y run data get entity @s Rotation[1] 1

# Compares similarity
scoreboard players operation @s kits.dx -= @s kits.x
scoreboard players operation @s kits.dy -= @s kits.y

# Tracks rotation data
execute unless score @s kits.dx matches -5..5 if score @s kits.dy matches -5..5 run function kits:char/siris/blade/magic/track/rot_x
execute if score @s kits.dx matches -5..5 unless score @s kits.dy matches -5..5 run function kits:char/siris/blade/magic/track/rot_y
execute if score %SirisMagicChanges kits.x matches 1 run function kits:char/siris/blade/magic/track/changes_x
execute if score %SirisMagicChanges kits.y matches 1 run function kits:char/siris/blade/magic/track/changes_y

# Number of data tracks
scoreboard players remove @s kits.timer 1
execute if score @s kits.timer matches ..0 run function kits:char/siris/blade/magic/identify/main
execute anchored eyes run particle minecraft:electric_spark ^ ^ ^1.5 0 0 0 0 1 force
