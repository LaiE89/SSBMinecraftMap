# note: runs each tick executed at ui minecart
## Detects any changes in the minecart
# make a copy of current Items
data modify storage system.ui current set from entity @s Items

# obtain the previous tick's Items
execute on passengers run data modify storage system.ui previous set from entity @s data.previous

# save current tick's Items over previous, if you are able to then something has changed
execute on passengers store result score %bool system.ui run data modify entity @s data.previous set from storage system.ui current

# execute on change
execute if score %bool system.ui matches 1 run function system:utilities/ui/minecart/on_change