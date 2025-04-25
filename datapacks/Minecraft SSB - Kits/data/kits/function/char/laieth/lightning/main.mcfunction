playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 3 2 1

# Range
scoreboard players set @s kits.timer8 10

# Number of splits
scoreboard players set @s kits.timer9 10

# Remove number of changes
scoreboard players remove @s kits.timer7 1
execute rotated as @s positioned ^ ^1 ^1 run function kits:char/laieth/lightning/raycast
