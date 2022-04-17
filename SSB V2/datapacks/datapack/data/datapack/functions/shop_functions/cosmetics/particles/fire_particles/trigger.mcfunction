execute if entity @s[tag=!fireparticles,scores={COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!fireparticles,scores={COS=1..}] {"text":"Activated Fire Particles","color":"green"}
tag @s[tag=!fireparticles,scores={COS=1..}] add fireparticles
tellraw @s[tag=fireparticles,scores={Shift=1..}] {"text":"Deactivated Fire Particles","color":"red"}
tag @s[tag=fireparticles,scores={Shift=1..}] remove fireparticles

