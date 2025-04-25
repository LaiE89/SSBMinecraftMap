### Triggers Bounce
# constants
scoreboard players set %bounce.-1 kits.constant -1

# get data
execute store result score @s kits.y run data get entity @s Rotation[0] 100
execute store result score @s kits.x run data get entity @s Rotation[1] 100

## Bounce Y
# to accommodate for +/-
execute if score @s kits.y matches -18000..0 run scoreboard players set @s kits.dy -18000
execute if score @s kits.y matches 0..18000 run scoreboard players set @s kits.dy 18000

# find reflected angle
execute if score @s kits.z matches 2 run scoreboard players operation @s kits.dy -= @s kits.y
execute if score @s kits.z matches 2 run scoreboard players operation @s kits.y = @s kits.dy
execute if score @s kits.z matches 1 run scoreboard players operation @s kits.y *= %bounce.-1 kits.constant

## Bounce X
# find reflected angle
execute if score @s kits.dz matches 1 run scoreboard players operation @s kits.x *= %bounce.-1 kits.constant

## Store Results
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s kits.y
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s kits.x
scoreboard players reset %bounce.-1 kits.constant

## Determine Next Bounce Behavior
scoreboard players set @s kits.raycastTick 0
scoreboard players set @s kits.raycastTick2 1000
execute at @s run function kits:char/alucard/jackal_bullet/wall/find