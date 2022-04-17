execute if entity @s[tag=!godparticles,scores={COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!godparticles,scores={COS=1..}] {"text":"Activated God Particles","color":"green"}
tag @s[tag=!godparticles,scores={COS=1..}] add godparticles
tellraw @s[tag=godparticles,scores={Shift=1..}] {"text":"Deactivated God Particles","color":"red"}
tag @s[tag=godparticles,scores={Shift=1..}] remove godparticles