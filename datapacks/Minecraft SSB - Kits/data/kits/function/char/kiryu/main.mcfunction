# Ability CDs
title @s[tag=KiryuBrawler,scores={kits.timer2=..9}] actionbar ["",{"text":"Tiger Drop:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Brawler","color":"aqua"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @s[tag=KiryuBrawler,scores={kits.timer2=10..}] actionbar ["",{"text":"Serenity:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Brawler","color":"aqua"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

title @s[tag=KiryuRush,scores={kits.timer2=..9}] actionbar ["",{"text":"Quickstep:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Rush","color":"light_purple"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @s[tag=KiryuRush,scores={kits.timer2=10..}] actionbar ["",{"text":"The Knee:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Rush","color":"light_purple"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

title @s[tag=KiryuBeast,scores={kits.timer2=..9}] actionbar ["",{"text":"Bike Smash:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Beast","color":"gold"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @s[tag=KiryuBeast,scores={kits.timer2=10..}] actionbar ["",{"text":"Wall Crush:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Beast","color":"gold"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

# Fighting Styles
scoreboard players add @s[scores={kits.ability2CD=..29}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.ability2CD=30..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:char/kiryu/fightingstyle

### Heat ###
execute as @s[scores={kits.criterion.attack=1..}] at @s run scoreboard players add @s[scores={kits.timer2=..9}] kits.timer2 1

###### Right Click Moves ######
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
scoreboard players set @s[scores={kits.ability1CD=101..}] kits.ability1CD 100

### Brawler ### 
effect give @s[tag=KiryuBrawler] minecraft:resistance 1 0 true

# Counter
execute as @s[tag=KiryuBrawler,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=..9}] at @s run function kits:char/kiryu/tigerdrop

tag @s[tag=KiryuCountering,scores={kits.criterion.absorbDmg=1..}] add KiryuTigerDrop 
effect clear @s[tag=KiryuCountering,scores={kits.criterion.absorbDmg=1..}] absorption
effect clear @s[tag=KiryuCountering,scores={kits.criterion.absorbDmg=1..}] mining_fatigue
scoreboard players reset @s[tag=KiryuCountering,scores={kits.criterion.absorbDmg=1..}] kits.timer
tag @s[tag=KiryuCountering,scores={kits.criterion.absorbDmg=1..}] remove KiryuCountering

scoreboard players add @s[tag=KiryuCountering] kits.timer 1
effect clear @s[tag=KiryuCountering,scores={kits.timer=15..}] absorption
effect clear @s[tag=KiryuCountering,scores={kits.timer=15..}] mining_fatigue
tag @s[tag=KiryuCountering,scores={kits.timer=15..}] remove KiryuCountering
scoreboard players reset @s[scores={kits.timer=15..}] kits.timer

execute if entity @s[tag=KiryuTigerDrop,scores={kits.criterion.attack=1..}] at @s run execute as @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,nbt={HurtTime:10s},tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run function kits:char/kiryu/tigerdropdamage
scoreboard players add @s[tag=KiryuTigerDrop] kits.timer5 1
tag @s[tag=KiryuTigerDrop,scores={kits.timer5=20..}] remove KiryuTigerDrop
scoreboard players reset @s[scores={kits.timer5=20..}] kits.timer5

# Heat Move (Serenity)
execute as @s[tag=KiryuBrawler,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=10..}] at @s run function kits:char/kiryu/serenity

# Switching to Brawler throws salt in front of you
execute as @e[type=area_effect_cloud,tag=KiryuSalt] at @s run function kits:char/kiryu/salt

### Rush ###
# Attacking increases your cooldown by 50
effect give @s[tag=KiryuRush] minecraft:speed 1 1 true
execute if score @s[tag=KiryuRush] kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 50

# Quickstep
execute as @s[tag=KiryuRush,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=..9}] at @s run function kits:char/kiryu/quickstep

# The Knee
execute as @s[tag=KiryuRush,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=10..}] at @s run function kits:char/kiryu/theknee

### Beast ###
# Your first attack pops enemies up
effect give @s[tag=KiryuBeast] minecraft:strength 1 0 true
execute as @s[tag=KiryuBeast,scores={kits.criterion.attack=1..}] as @s[scores={kits.timer3=1..}] at @s run execute as @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,nbt={HurtTime:10s},tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run function kits:char/kiryu/beastattack

# Bike Smash
execute as @s[tag=KiryuBeast,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=..9}] at @s run function kits:char/kiryu/bikesummon
execute as @e[type=armor_stand,tag=KiryuBikeStand] at @s run function kits:char/kiryu/bike

# Wall Crush
execute as @s[tag=KiryuBeast,scores={kits.ability1CD=100..},predicate=kits:items/kiryu/fist] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=10..}] at @s run function kits:char/kiryu/wallcrushuse
execute as @s[gamemode=!spectator] at @s if entity @e[tag=KiryuGrabbed] run scoreboard players set @s kits.raycastTick 0
execute as @s[gamemode=!spectator] at @s positioned ~ ~1 ~ if entity @e[tag=KiryuGrabbed] run function kits:char/kiryu/kiryupassive5

execute as @s[scores={kits.criterion.attack=1..}] at @s if entity @e[tag=KiryuGrabbed] run function kits:char/kiryu/wallcrush

execute if entity @e[tag=KiryuGrabbed] run scoreboard players add @s kits.timer4 1
execute if entity @s[scores={kits.criterion.death=1..}] run function kits:char/kiryu/wallcrushend
execute if entity @s[scores={kits.timer4=50..}] run function kits:char/kiryu/wallcrushend
execute at @s unless entity @e[tag=KiryuGrabbed,distance=..10] run function kits:char/kiryu/wallcrushend
