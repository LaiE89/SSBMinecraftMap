# example call: function system:utilities/ui/menu/main_lobby/kits/select {"kitID":"0"}
## When player selects a kit in ui
$execute if entity @a[scores={system.kit.id=$(kitID)}] run function system:utilities/ui/menu/main_lobby/kits/page0/open
$execute if entity @a[scores={system.kit.id=$(kitID)}] run return run tellraw @p [{"text":"This kit has already been chosen.","color":"red"}]

$execute unless entity @a[scores={system.kit.id=$(kitID)}] run execute as @p at @s run function system:utilities/ui/menu/main_lobby/kits/set_id {"kitID":"$(kitID)"}
execute as @p run function system:utilities/ui/menu/main_lobby/fast_travel/open