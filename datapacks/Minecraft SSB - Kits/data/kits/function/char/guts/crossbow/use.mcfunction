#execute unless entity @a[nbt={Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s container.9 with arrow 1
execute as @e[distance=..4,limit=1,sort=nearest,type=#arrows] at @s run function kits:char/guts/crossbow/usemerge
scoreboard players set @s kits.timer3 0
execute store result score @s kits.timer4 run clear @s minecraft:arrow 0
