## Resets all ui data
# storages
data remove storage system.ui current
data remove storage system.ui previous
data remove storage system.ui in
data remove storage system.ui temp
data remove storage system.ui mask

# scores
scoreboard players reset %global system.ui.id
scoreboard players reset %search system.ui.id
scoreboard players reset %bool system.ui