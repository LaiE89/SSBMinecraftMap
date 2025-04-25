tag @s add LaiethPossessing
tag @s add Invincible
effect give @s invisibility 2 0 true
effect give @s weakness 2 9 true
effect give @s resistance 2 9 true
effect give @s regeneration 2 2 true
clear @s minecraft:player_head[custom_name="The Man, The Myth, The Legend"]
clear @s leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Child Prodigy\'s Clothes"}]
clear @s netherite_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Child Prodigy\'s Clothes"}]
clear @s leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Child Prodigy\'s Clothes"}]
playsound minecraft:block.end_portal.spawn neutral @a[distance=..30] ~ ~ ~ 3 0 1
execute positioned ^ ^ ^ as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s run function kits:char/laieth/possessiondamage
scoreboard players set @s kits.ability2CD 0