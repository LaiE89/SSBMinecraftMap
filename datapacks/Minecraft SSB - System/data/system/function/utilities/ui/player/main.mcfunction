# note: runs each tick executed at player
## Determines when to run or close the ui
execute if items entity @s weapon.* *[custom_data={ui:1b}] run function system:utilities/ui/player/teleport
execute unless items entity @s weapon.* *[custom_data={ui:1b}] if score @s system.ui.id matches 0.. run function system:utilities/ui/player/close