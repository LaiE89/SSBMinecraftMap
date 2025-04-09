## Execute at Unlimited Void
# Domain effects
execute as @e[distance=..10,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:gojo/special/void/hit
scoreboard players set @p[tag=Gojo] kits.ability1CD 100
scoreboard players set @p[scores={kits.ability6CD=59..},tag=Gojo] kits.ability1CD -100

# VFX
scoreboard players add @s kits.timer3 1
execute if score @s kits.timer3 matches 2.. run function kits:gojo/special/void/animate
