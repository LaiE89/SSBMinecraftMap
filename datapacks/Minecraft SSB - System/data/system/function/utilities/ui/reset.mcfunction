## Resets All UI Data
# storages
data remove storage minecraft:ui current
data remove storage minecraft:ui previous
data remove storage system.ui in
data remove storage system.ui temp

# scores
scoreboard players reset %global system.ui.id
scoreboard players reset %search system.ui.id
scoreboard players reset %bool system.ui