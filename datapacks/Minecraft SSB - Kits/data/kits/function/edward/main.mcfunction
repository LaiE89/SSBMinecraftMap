title @s actionbar ["",{"text":"Wall:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Cage:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Deconstruct:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Break:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/200","color":"white"}]

scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/edward/reconstruction] if entity @s[scores={kits.ability1CD=100..}] at @s run function kits:edward/weapon1cos
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation] at @s run function kits:edward/walleffects
execute as @e[type=armor_stand,tag=EdwardWallProjectile] at @s run function kits:edward/wallprojectileeffects

scoreboard players add @s[scores={kits.ability2CD=..299}] kits.ability2CD 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/edward/reconstruction] if entity @s[scores={kits.ability2CD=300..}] at @s run function kits:edward/weapon1shift
execute as @e[type=area_effect_cloud,tag=EdwardCageLocation] at @s run function kits:edward/cageeffects

scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/edward/deconstruction] if entity @s[scores={kits.ability3CD=200..}] at @s run function kits:edward/weapon2cos
execute as @e[type=minecraft:armor_stand,tag=EdwardDebris] at @s run function kits:edward/debrisdamage

scoreboard players add @s[scores={kits.ability4CD=..199}] kits.ability4CD 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/edward/deconstruction] if entity @s[scores={kits.ability4CD=200..}] at @s run function kits:edward/weapon2shift
execute as @s[tag=EdwardBreak] at @s run function kits:edward/breakeffects

scoreboard players add @s kits.timer3 1
execute at @s[scores={kits.timer3=30}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 5 2 1
effect give @s[scores={kits.timer3=30..}] strength 1 0 true
