## Execute at Deflect Arrow AEC
# Gets AEC's position then multiplies it by 10000 for accuracy (scoreboards can not hold decimals)
execute store result score @p[tag=Jacket] kits.dx run data get entity @s Pos[0] 10000
execute store result score @p[tag=Jacket] kits.dy run data get entity @s Pos[1] 10000
execute store result score @p[tag=Jacket] kits.dz run data get entity @s Pos[2] 10000

# Kills AEC
kill @s
