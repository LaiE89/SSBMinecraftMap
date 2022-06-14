playsound minecraft:block.dispenser.dispense neutral @a[distance=..20] ~ ~ ~ 10 0 1
function datapack:damage1
scoreboard players set @e[type=armor_stand,tag=LuffyGrab] Timer 20
tag @s add LuffyGrabbed
effect give @s levitation 1 0 true