function datapack:damage2

execute if entity @p[tag=NessPKFlash,scores={Timer2=1..4}] run tellraw @p[tag=Ness] {"text":"The target instantly collapsed","bold":true}
execute if entity @p[tag=NessPKFlash,scores={Timer2=1..4}] run function datapack:damage3

execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run tellraw @p[tag=Ness] {"text":"The target started to feel strange","bold":true}
execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run effect give @s minecraft:blindness 10 0 true
execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run effect give @s minecraft:nausea 10 0 true

execute if entity @p[tag=NessPKFlash,scores={Timer2=5..10}] run tellraw @p[tag=Ness] {"text":"The target started to cry uncontrollably","bold":true}
execute if entity @p[tag=NessPKFlash,scores={Timer2=5..10}] run tag @s add NessCrying