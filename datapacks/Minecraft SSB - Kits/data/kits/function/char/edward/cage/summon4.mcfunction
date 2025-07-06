summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["EdwardCageLocation"]}
summon block_display ~-0.3 ~-2.5 ~1 {width:0f,height:0f,Tags:["EdwardCage"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,2f,0.5f]},block_state:{Name:"minecraft:dirt"}}
summon block_display ~1 ~-2.5 ~-0.15 {width:0f,height:0f,Tags:["EdwardCage"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,2f,0.5f]},block_state:{Name:"minecraft:dirt"}}
summon block_display ~-1.6 ~-2.5 ~-0.15 {width:0f,height:0f,Tags:["EdwardCage"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,2f,0.5f]},block_state:{Name:"minecraft:dirt"}}
summon block_display ~-0.3 ~-2.5 ~-1.3 {width:0f,height:0f,Tags:["EdwardCage"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,2f,0.5f]},block_state:{Name:"minecraft:dirt"}}
summon block_display ~-1.6 ~-0.5 ~-1.3 {width:0f,height:0f,Tags:["EdwardCage"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3.1f,0.3f,2.8f]},block_state:{Name:"minecraft:dirt"}}
loot spawn ~ ~-100 ~ mine ~ ~-0.5 ~ diamond_pickaxe[enchantments={"minecraft:silk_touch":1}]
execute as @e[type=minecraft:block_display,tag=EdwardCage] run execute positioned ~ ~-100 ~ run data modify entity @s block_state.Name set string entity @e[type=item,limit=1,sort=nearest] Item.id
execute positioned ~ ~-100 ~ run kill @e[type=item,sort=nearest,limit=1]
