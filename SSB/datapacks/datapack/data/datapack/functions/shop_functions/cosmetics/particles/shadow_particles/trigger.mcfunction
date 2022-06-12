execute if entity @s[tag=!shadowparticles,scores={Basic_COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!shadowparticles,scores={Basic_COS=1..}] {"text":"Activated Shadow Particles","color":"green"}
tag @s[tag=!shadowparticles,scores={Basic_COS=1..}] add shadowparticles
tellraw @s[tag=shadowparticles,scores={Basic_Shift=1..}] {"text":"Deactivated Shadow Particles","color":"red"}
tag @s[tag=shadowparticles,scores={Basic_Shift=1..}] remove shadowparticles