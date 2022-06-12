tp @e[type=zombie,tag=pedobeargrab] ~ ~0.3 ~ facing -5110 30 167
tp @p[gamemode=!spectator,tag=pedobeargrabbed] ~ ~1.5 ~
data remove entity @s HandItems[0]
effect give @p levitation 1 0 true
effect give @p slowness 1 9 true
execute unless entity @e[type=zombie,tag=pedobeargrab] run effect clear @p levitation
execute unless entity @e[type=zombie,tag=pedobeargrab] run effect clear @p slowness
execute unless entity @e[type=zombie,tag=pedobeargrab] run kill @s
execute if entity @s[x=-5106,y=30,z=165,dx=-9,dy=2,dz=5] run effect give @p minecraft:instant_damage 1 9 true
execute if entity @s[x=-5106,y=30,z=165,dx=-9,dy=2,dz=5] run tag @p remove pedobeargrabbed
execute if entity @s[x=-5106,y=30,z=165,dx=-9,dy=2,dz=5] run title @p subtitle {"text":"You got raped...","color":"red"}

execute unless entity @p[tag=pedobeargrabbed] run data modify entity @e[type=zombie,tag=pedobeargrab,limit=1] NoAI set value 0
execute unless entity @p[tag=pedobeargrabbed] run tag @e[type=zombie,tag=pedobeargrab] remove pedobeargrab
execute unless entity @p[tag=pedobeargrabbed] run kill @s
