execute if entity @s[tag=!shitparticles,scores={Basic_COS=1..}] run function datapack:shop_functions/particlesoff
tellraw @s[tag=!shitparticles,scores={Basic_COS=1..}] {"text":"Activated Shit Particles","color":"green"}
tag @s[tag=!shitparticles,scores={Basic_COS=1..}] add shitparticles
tellraw @s[tag=shitparticles,scores={Basic_Shift=1..}] {"text":"Deactivated Shit Particles","color":"red"}
tag @s[tag=shitparticles,scores={Basic_Shift=1..}] remove shitparticles

