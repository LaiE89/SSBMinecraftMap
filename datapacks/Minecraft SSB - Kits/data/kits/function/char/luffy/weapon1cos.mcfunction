playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0 1
particle block{block_state:"minecraft:dirt"} ~ ~0.5 ~ 2 0 2 0 100 force
scoreboard players set @s kits.ability2CD 0

scoreboard players set @s kits.raycastTick2 0

execute if predicate kits:generic/movement/forward if predicate kits:generic/movement/left rotated ~-45 0 run return run function kits:char/luffy/dash
execute if predicate kits:generic/movement/forward if predicate kits:generic/movement/right rotated ~45 0 run return run function kits:char/luffy/dash
execute if predicate kits:generic/movement/backward if predicate kits:generic/movement/left rotated ~225 0 run return run function kits:char/luffy/dash
execute if predicate kits:generic/movement/backward if predicate kits:generic/movement/right rotated ~135 0 run return run function kits:char/luffy/dash

execute if predicate kits:generic/movement/right rotated ~90 0 run return run function kits:char/luffy/dash
execute if predicate kits:generic/movement/left rotated ~-90 0 run return run function kits:char/luffy/dash
execute if predicate kits:generic/movement/backward rotated ~180 0 run return run function kits:char/luffy/dash
execute rotated ~ 0 run return run function kits:char/luffy/dash
