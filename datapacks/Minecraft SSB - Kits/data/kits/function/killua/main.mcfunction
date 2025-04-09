# Ability CDs
title @s[tag=!KilluaGodspeed,scores={kits.timer4=..99}] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Nen: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer4"},"color":"aqua"},{"text":"/100","color":"aqua"}]
title @s[tag=!KilluaGodspeed,scores={kits.timer4=100..}] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"GODSPEED IS READY","color":"aqua"}]
title @s[tag=KilluaGodspeed] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Godspeed is active: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer"},"color":"aqua"},{"text":"/300","color":"aqua"}]

# Lightning Palm Attack
scoreboard players set @s[scores={kits.timer4=100..}] kits.timer4 100
scoreboard players set @s[scores={kits.timer4=..-1}] kits.timer4 0
scoreboard players add @s[tag=!KilluaGodspeed,tag=!KilluaLightningPalm,scores={kits.criterion.attack=1..}] kits.timer4 20
scoreboard players add @s[tag=!KilluaGodspeed,tag=KilluaLightningPalm,scores={kits.criterion.attack=1..}] kits.timer4 50

execute as @s[tag=KilluaLightningPalm,scores={kits.criterion.attack=1..}] at @s run function kits:killua/lightningpalm

execute at @s[tag=KilluaGodspeed,scores={kits.criterion.attack=1..}] run effect give @e[distance=..10,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] minecraft:blindness 1 0 true
execute at @s[tag=KilluaGodspeed,scores={kits.criterion.attack=1..}] run playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..15] ~ ~ ~ 1 2 1

# Shadowstep
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=100..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/killua/claws] at @s run function kits:killua/weapon1cos

# Yoyo
scoreboard players add @s[scores={kits.ability2CD=..299}] kits.ability2CD 1
execute at @s[scores={kits.ability2CD=300..}] as @s[scores={kits.criterion.shift=1..},gamemode=!spectator,predicate=kits:items/killua/claws] at @s run function kits:killua/weapon1shift

execute as @e[type=armor_stand,tag=KilluaYoyo] at @s run function kits:killua/yoyo


# Lightning Palm
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] Shift
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff

execute at @s[tag=!KilluaGodspeed,scores={kits.timer4=1..}] run scoreboard players add @s[tag=!KilluaLightningPalm,scores={kits.criterion.shift=1..},predicate=kits:items/killua/nen] kits.criterion.shiftOn 1
scoreboard players add @s[tag=KilluaGodspeed,tag=!KilluaLightningPalm,scores={kits.criterion.shift=1..},predicate=kits:items/killua/nen] kits.criterion.shiftOn 1 
execute as @s[tag=!KilluaGodspeed,scores={kits.timer4=0}] at @s run scoreboard players reset @s kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn
execute as @s[tag=!KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] at @s run tag @s add KilluaLightningPalm
execute as @s[tag=!KilluaGodspeed,scores={kits.criterion.shiftOn=1..}] at @s run scoreboard players remove @s kits.timer4 1
execute as @s[tag=!KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] at @s run effect give @s minecraft:speed 1 9 true
execute as @s[tag=KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] at @s run effect give @s minecraft:speed 1 14 true
execute as @s[tag=KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] at @s run tag @s add KilluaLightningPalm
execute as @s[scores={kits.criterion.shiftOn=1..}] at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ^-0.5 ^0.7 ^0.5 0.1 0.1 0.1 0 20 force
execute as @s[scores={kits.criterion.shiftOn=1..}] at @s run playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute as @s[tag=KilluaLightningPalm] at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ^-0.5 ^0.8 ^0.5 0.2 0.2 0.2 0 50 force
execute as @s[tag=!KilluaGodspeed,scores={kits.criterion.shiftOn=40}] at @s run playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..30] ~ ~ ~ 3 2 1
execute as @s[tag=KilluaGodspeed,scores={kits.criterion.shiftOn=40}] at @s run playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..30] ~ ~ ~ 3 2 1
scoreboard players reset @s[tag=!KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] kits.criterion.shiftOn
scoreboard players reset @s[tag=KilluaGodspeed,scores={kits.criterion.shiftOn=40..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

scoreboard players add @s[tag=KilluaLightningPalm] kits.timer2 1
tag @s[tag=KilluaLightningPalm,scores={kits.timer2=60..}] remove KilluaLightningPalm
scoreboard players reset @s[scores={kits.timer2=60..}] kits.timer2

# Godspeed
execute as @s[scores={kits.timer4=100..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/killua/nen] at @s run function kits:killua/weapon2cos
execute as @s[tag=KilluaGodspeed,scores={kits.timer=20..}] as @s[scores={kits.timer3=1..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/killua/nen] at @s run function kits:killua/lightningbolt

execute as @e[type=area_effect_cloud,tag=KilluaThunder] at @s run function kits:killua/thunder

execute at @s[tag=KilluaGodspeed] run particle falling_dust{block_state:"minecraft:light_blue_concrete_powder"} ~ ~1 ~ 0.4 1 0.4 0 3 force

scoreboard players add @s[tag=KilluaGodspeed] kits.timer 1
tag @s[scores={kits.timer=300..}] remove KilluaGodspeed
scoreboard players reset @s[scores={kits.timer=300..}] kits.timer
