execute positioned -5144 79 150 if entity @a[distance=..3] run function datapack:labyrinth_functions/labyrinthmobabilities/prison/ritualteleport
execute positioned -5141 80 130 if entity @a[distance=..3] unless entity @e[type=ravager,tag=prisonravager] run summon minecraft:ravager -5160 81 130 {Health:200,Attributes:[{Name:"generic.follow_range",Base:100f},{Name:"generic.max_health",Base:200f}],DeathLootTable:"mctools:entities/miniboss",Tags:["prisonravager"],Team:LabyrinthMob}

# Tp to boss
execute positioned -5082 98 150 if block ~ ~ ~ minecraft:lodestone run function datapack:labyrinth_functions/labyrinthbosses/cinders/tptoroom
