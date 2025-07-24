scoreboard players set @s kits.raycastTick 0

execute if predicate kits:generic/movement/forward if predicate kits:generic/movement/left rotated ~-45 0 run return run function kits:char/kiryu/kiryupassive3
execute if predicate kits:generic/movement/forward if predicate kits:generic/movement/right rotated ~45 0 run return run function kits:char/kiryu/kiryupassive3
execute if predicate kits:generic/movement/backward if predicate kits:generic/movement/left rotated ~225 0 run return run function kits:char/kiryu/kiryupassive3
execute if predicate kits:generic/movement/backward if predicate kits:generic/movement/right rotated ~135 0 run return run function kits:char/kiryu/kiryupassive3

execute if predicate kits:generic/movement/right rotated ~90 0 run return run function kits:char/kiryu/kiryupassive3
execute if predicate kits:generic/movement/left rotated ~-90 0 run return run function kits:char/kiryu/kiryupassive3
execute if predicate kits:generic/movement/backward rotated ~180 0 run return run function kits:char/kiryu/kiryupassive3
execute rotated ~ 0 run return run function kits:char/kiryu/kiryupassive3
