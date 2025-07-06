scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute at @s[scores={kits.raycastTick=2222}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["ZedUltShadow"],DisabledSlots:2047807,equipment:{feet:{id:"minecraft:leather_boots",Count:1b,components:{dyed_color:0}},legs:{id:"minecraft:leather_leggings",Count:1b,components:{dyed_color:0}},chest:{id:"minecraft:leather_chestplate",Count:1b,components:{dyed_color:0}},head:{id:"minecraft:player_head",Count:1b,components:{profile:{id:[I;844911766,-109258656,-790211895,-1250175385],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTU1NGEzMTQ2MWZhOTBiNmE3Y2ZjZmRmN2IxNzE2MTg5Y2YzZTdiMTczNDQ0ODg1NmU5YmFhZTc0ZTQ1In19fQ=="}]}}}}}
execute as @s[scores={kits.raycastTick=2222}] run effect give @s resistance 1 9 true
execute as @s[scores={kits.raycastTick=2222}] run tag @s remove ZedNoSwitch2
execute as @s[scores={kits.raycastTick=2222}] run playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..30] ~ ~ ~ 10 0 1
execute at @s[scores={kits.raycastTick=2222}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 1.3 0.5 0 100 force
execute at @s[scores={kits.raycastTick=2222}] run particle smoke ~ ~ ~ 0.5 1.3 0.5 0 100 force
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth]
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run particle smoke ~ ~ ~ 1 1 1 1 1000 force
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] add ZedDeathmarked
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.timer2 0
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability4CD 0

execute as @s[scores={kits.raycastTick=..19}] positioned ^ ^ ^0.5 run function kits:char/zed/deathmark/location
