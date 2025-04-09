playsound minecraft:block.dispenser.dispense neutral @a[distance=..20] ~ ~ ~ 10 0 1
scoreboard players add @p[tag=Luffy,tag=!LuffyGear] kits.timer2 10
damage @s 6 bypass:player_attack by @p[tag=Luffy]
scoreboard players set @e[type=area_effect_cloud,tag=LuffyGrab] kits.timer 20
tag @s add LuffyGrabbed
effect give @s levitation 1 0 true
effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
