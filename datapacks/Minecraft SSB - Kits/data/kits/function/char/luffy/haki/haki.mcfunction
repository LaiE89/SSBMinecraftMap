execute if score @s kits.timer2 matches 100.. at @s rotated ~ 90 run function kits:char/luffy/haki/hakiactivate

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players add @s[tag=!LuffyGear] kits.timer2 5
execute if entity @s[scores={kits.criterion.attack=1..}] run scoreboard players add @s[tag=!LuffyGear] kits.timer2 10

scoreboard players add @s[tag=LuffyGear] kits.timer3 1
execute at @s[tag=LuffyGear] run particle poof ~ ~0.75 ~ 0.4 0.5 0.4 0.05 1 force
execute if score @s[tag=LuffyGear] kits.timer3 matches 300.. run function kits:char/luffy/haki/hakideactivate
