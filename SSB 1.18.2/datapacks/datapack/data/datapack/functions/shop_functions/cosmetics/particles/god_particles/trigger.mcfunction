execute if entity @s[tag=!godparticles,scores={Basic_COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!godparticles,scores={Basic_COS=1..}] {"text":"Activated God Particles","color":"green"}
tag @s[tag=!godparticles,scores={Basic_COS=1..}] add godparticles
tellraw @s[tag=godparticles,scores={Basic_Shift=1..}] {"text":"Deactivated God Particles","color":"red"}
tag @s[tag=godparticles,scores={Basic_Shift=1..}] remove godparticles