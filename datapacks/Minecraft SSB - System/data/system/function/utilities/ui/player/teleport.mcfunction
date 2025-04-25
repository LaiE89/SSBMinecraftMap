## When player is holding the ui
# create ui for players without one
execute unless score @s system.ui.id matches 0.. run function system:utilities/ui/player/open

# teleport matching ui stack to player
scoreboard players operation %search system.ui.id = @s system.ui.id
execute at @s as @e[type=item_display,tag=system.ui] if score @s system.ui.id = %search system.ui.id run tp @s ~ ~1 ~