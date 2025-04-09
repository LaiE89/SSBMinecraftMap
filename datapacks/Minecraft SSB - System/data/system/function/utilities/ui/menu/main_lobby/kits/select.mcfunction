# example call: function system:utilities/ui/menu/main_lobby/kits/select {"kitID":"0"}
## When Player Selects a Kit in UI
execute as @p run function system:utilities/ui/player/close
$execute if entity @a[scores={system.kits.id=$(kitID)}] run tellraw @p [{"text":"This kit has already been chosen.","color":"red"}]
$execute unless entity @a[scores={system.kits.id=$(kitID)}] run execute as @p at @s run function system:utilities/ui/menu/main_lobby/kits/set_id {"kitID":"$(kitID)"}