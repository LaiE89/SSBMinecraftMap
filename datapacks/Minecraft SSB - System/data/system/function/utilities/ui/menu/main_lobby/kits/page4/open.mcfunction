## Open kits page 4
function system:utilities/ui/menu/main_lobby/kits/page4/mask
data modify storage system.ui current set from storage system.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function system:utilities/ui/menu/main_lobby/kits/page4/mask"