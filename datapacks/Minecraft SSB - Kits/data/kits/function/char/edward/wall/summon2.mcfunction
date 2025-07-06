particle item{item:"dirt"} ~ ~0.25 ~ 2 0 2 0.1 100 force
playsound minecraft:ui.stonecutter.take_result neutral @a[distance=..50] ~ ~ ~ 5 0 1
playsound minecraft:block.grass.break neutral @a[distance=..50] ~ ~ ~ 5 0 1
playsound minecraft:block.gravel.fall neutral @a[distance=..50] ~ ~ ~ 5 0 1
execute if entity @p[tag=Edward,scores={kits.direction=0..1}] rotated ~ 0 align xyz positioned ^-1 ^ ^ run summon block_display ~ ~-3 ~ {width:0f,height:0f,Tags:["EdwardWall"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,1f]},block_state:{Name:"minecraft:dirt"}}
execute if entity @p[tag=Edward,scores={kits.direction=2..3}] rotated ~ 0 align xyz positioned ^ ^ ^-1 run summon block_display ~ ~-3 ~ {width:0f,height:0f,Tags:["EdwardWall"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,3f,3f]},block_state:{Name:"minecraft:dirt"}}

loot spawn ~ ~-100 ~ mine ~ ~-0.5 ~ diamond_pickaxe[enchantments={"minecraft:silk_touch":1}]
execute as @e[type=minecraft:block_display,tag=EdwardWall] run execute positioned ~ ~-100 ~ run data modify entity @s block_state.Name set string entity @e[type=item,limit=1,sort=nearest] Item.id
execute positioned ~ ~-100 ~ run kill @e[type=item,sort=nearest,limit=1]

schedule function kits:char/edward/wall/summon3 5t append
