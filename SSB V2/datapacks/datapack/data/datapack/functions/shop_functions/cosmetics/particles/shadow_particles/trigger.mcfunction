execute if entity @s[tag=!shadowparticles,scores={COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!shadowparticles,scores={COS=1..}] {"text":"Activated Shadow Particles","color":"green"}
tag @s[tag=!shadowparticles,scores={COS=1..}] add shadowparticles
tellraw @s[tag=shadowparticles,scores={Shift=1..}] {"text":"Deactivated Shadow Particles","color":"red"}
tag @s[tag=shadowparticles,scores={Shift=1..}] remove shadowparticles