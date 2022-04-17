function datapack:damage1

execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run tellraw @p[tag=Ness] {"text":"The target started to feel strange","bold":true}
execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run effect give @s minecraft:blindness 5 0 true
execute if entity @p[tag=NessPKFlash,scores={Timer2=11..15}] run effect give @s minecraft:nausea 5 0 true

execute if entity @p[tag=NessPKFlash,scores={Timer2=1..10}] run tellraw @p[tag=Ness] {"text":"The target started to cry uncontrollably","bold":true}
execute if entity @p[tag=NessPKFlash,scores={Timer2=1..10}] run tag @s add NessCrying