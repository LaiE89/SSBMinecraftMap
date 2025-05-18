scoreboard players add @s kits.timer6 1
scoreboard players add @s kits.timer7 1
execute if score @s kits.timer7 matches 20.. run execute rotated ~ 90 run function kits:char/chosenundead/miracles/walkofpeaceparticles
execute if score @s kits.timer7 matches 20.. run playsound minecraft:entity.warden.heartbeat neutral @a[distance=..10] ~ ~ ~ 2 1 1
execute if score @s kits.timer7 matches 20.. run execute as @e[distance=..10,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function kits:char/chosenundead/miracles/walkofpeacedebuff
scoreboard players reset @s[scores={kits.timer7=20..}] kits.timer7
scoreboard players reset @s[scores={kits.timer6=100..}] kits.timer7
tag @s[scores={kits.timer6=100..}] remove ChosenUndeadTranquilWalk
