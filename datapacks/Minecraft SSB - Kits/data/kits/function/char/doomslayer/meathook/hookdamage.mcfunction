damage @s 6 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=meathook,limit=1,sort=nearest] from @p[tag=Doomslayer]
effect give @s minecraft:slowness 1 9 true
effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
tag @s add DoomslayerHooked
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..50] ~ ~ ~ 5 2 1
kill @e[type=area_effect_cloud,tag=meathook]

schedule function kits:char/doomslayer/meathook/delay 10t replace
summon item ~ ~1 ~ {Tags:["DoomslayerArmorPack","DoomslayerArmorPackDelay"],Motion:[0.0,0.3,0.2],Item:{id:"minecraft:diamond_chestplate",Count:1b,tag:{Unbreakable:1,display:{color:9436681},Enchantments:[{}]}},Age:5900,PickupDelay:32767}
summon item ~ ~1 ~ {Tags:["DoomslayerArmorPack","DoomslayerArmorPackDelay"],Motion:[-0.2,0.3,-0.2],Item:{id:"minecraft:diamond_chestplate",Count:1b,tag:{Unbreakable:1,display:{color:9436681},Enchantments:[{}]}},Age:5900,PickupDelay:32767}
summon item ~ ~1 ~ {Tags:["DoomslayerArmorPack","DoomslayerArmorPackDelay"],Motion:[0.2,0.3,-0.2],Item:{id:"minecraft:diamond_chestplate",Count:1b,tag:{Unbreakable:1,display:{color:9436681},Enchantments:[{}]}},Age:5900,PickupDelay:32767}

scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 10