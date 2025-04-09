scoreboard players add @s kits.timer 1
execute at @s[scores={kits.timer=..15}] anchored feet facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] feet positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={kits.timer=8}] run playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..40] ~ ~ ~ 5 2 1
#execute if entity @s[scores={kits.timer=15}] run playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..40] ~ ~ ~ 5 1 1
execute if entity @s[scores={kits.timer=15}] run function kits:sans/sansblaster2
kill @s[scores={kits.timer=50..}]
