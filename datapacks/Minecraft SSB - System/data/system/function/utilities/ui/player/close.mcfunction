## When player closes the ui
# find the ui stack matching the player's id, then clear its contents and remove it
scoreboard players operation %search system.ui.id = @s system.ui.id
execute as @e[type=chest_minecart,tag=system.ui] if score @s system.ui.id = %search system.ui.id run data remove entity @s Items
execute as @e[tag=system.ui] if score @s system.ui.id = %search system.ui.id run kill @s

# reset player id
scoreboard players reset @s system.ui.id