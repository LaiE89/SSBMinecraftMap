## Isaac Pulls Desired Object
# Ray distance
scoreboard players add @s kits.raycastTick2 1

# Isaac grabs the object hit by the ray
execute if entity @s[tag=!IsaacKinesisGrabbing] positioned ~ ~0.5 ~ as @e[distance=..2,limit=1,sort=nearest,tag=IsaacObject,type=armor_stand] at @s run function kits:char/isaac/modules/kinesis/grab
execute if entity @s[tag=IsaacKinesisGrabbing] run tp @e[limit=1,sort=nearest,tag=IsaacObjectKinesisGrabbed,type=armor_stand] ^ ^ ^-0.5

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick2 matches ..45 if block ~ ~ ~ #kits:passable positioned ^ ^ ^0.5 run function kits:char/isaac/modules/kinesis/pull
