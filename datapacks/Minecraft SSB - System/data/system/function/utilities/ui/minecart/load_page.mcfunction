## Update Page and History
data modify entity @s Items set from storage system.ui current
data modify storage system.ui current set from entity @s Items
execute on passengers run data modify entity @s data.previous set from storage system.ui current