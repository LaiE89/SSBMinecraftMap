## Open kits page 1
function system:utilities/ui/menu/main_lobby/kits/page1/mask
data modify storage system.ui current set from storage system.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function system:utilities/ui/menu/main_lobby/kits/page1/mask"