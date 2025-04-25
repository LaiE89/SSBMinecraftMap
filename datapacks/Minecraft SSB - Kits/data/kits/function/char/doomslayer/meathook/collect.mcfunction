execute if data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:1b}]} run effect give @s minecraft:absorption 2 2 true
execute if data entity @s {active_effects:[{id:"minecraft:absorption"}]} run effect give @s minecraft:absorption 2 1 true
effect give @s minecraft:absorption 2 0 true

playsound minecraft:entity.experience_orb.pickup neutral @a[distance=..5] ~ ~ ~ 1 2 1
kill @e[type=item,tag=DoomslayerArmorPack,limit=1,sort=nearest]
