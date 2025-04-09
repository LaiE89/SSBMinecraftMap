execute store result score @s[tag=!SansStationary] kits.x run data get entity @s Pos[0] 1000
execute store result score @s[tag=!SansStationary] kits.y run data get entity @s Pos[1] 1000
execute store result score @s[tag=!SansStationary] kits.z run data get entity @s Pos[2] 1000
tag @s[tag=!SansStationary] add SansStationary

execute store result score @s kits.dx run data get entity @s Pos[0] 1000
execute store result score @s kits.dy run data get entity @s Pos[1] 1000
execute store result score @s kits.dz run data get entity @s Pos[2] 1000

execute unless score @s kits.dx = @s kits.x run function kits:sans/bluebonesdamage
execute unless score @s kits.dy = @s kits.y run function kits:sans/bluebonesdamage
execute unless score @s kits.dz = @s kits.z run function kits:sans/bluebonesdamage
