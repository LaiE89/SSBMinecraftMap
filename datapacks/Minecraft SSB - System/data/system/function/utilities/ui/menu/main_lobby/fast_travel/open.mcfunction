## Open fast travel page
function system:utilities/ui/menu/main_lobby/fast_travel/mask
data modify storage system.ui current set from storage system.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function system:utilities/ui/menu/main_lobby/fast_travel/mask"
