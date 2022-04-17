# Passive
scoreboard players set @p[tag=Irelia,scores={Kills=1..}] Ability1CD 95
scoreboard players add @e[tag=IreliaMarked] IreliaMarkTimer 1
scoreboard players add @e[tag=IreliaMarked2] IreliaMarkTimer 1
tag @e[tag=IreliaMarked,scores={IreliaMarkTimer=90..}] remove IreliaMarked
tag @e[tag=IreliaMarked2,scores={IreliaMarkTimer=90..}] remove IreliaMarked2
scoreboard players reset @e[scores={IreliaMarkTimer=90..}] IreliaMarkTimer

tag @p[tag=Irelia,tag=!IreliaIonianFervor,scores={Timer3=5..}] add IreliaIonianFervor

effect give @p[tag=IreliaIonianFervor] minecraft:strength 1 0 true
effect give @p[tag=IreliaIonianFervor] minecraft:haste 1 3 true

scoreboard players add @p[tag=IreliaIonianFervor] Timer4 1
scoreboard players set @p[tag=IreliaIonianFervor,scores={Timer4=120..}] Timer3 0
tag @p[tag=IreliaIonianFervor,scores={Timer4=120..}] remove IreliaIonianFervor
scoreboard players reset @p[tag=Irelia,scores={Timer4=120..}] Timer4

# Mark
execute as @e[tag=IreliaMarked] at @s run particle minecraft:dust 1 1 1 1 ~ ~0.5 ~ 0.5 0 0.5 0 50
execute as @e[tag=IreliaMarked2] at @s run particle minecraft:dust 1 2 1 1 ~ ~0.5 ~ 0.5 0 0.5 0 50

# Ability CDs
title @p[tag=Irelia,tag=!IreliaIonianFervor] actionbar ["",{"text":"Bladesurge:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Defiant Dance:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Flawless Duet:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Vanguard's Edge:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Ionian Fervor Stacks: ","color":"light_purple"},{"score":{"name":"@p[tag=Irelia]","objective":"Timer3"},"color":"light_purple"},{"text":"/5","color":"light_purple"}]
title @p[tag=Irelia,tag=IreliaIonianFervor] actionbar ["",{"text":"Bladesurge:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Defiant Dance:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Flawless Duet:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Vanguard's Edge:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Irelia]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"IONIAN FERVOR IS ACTIVE","color":"light_purple"}]

# Blade Surge
scoreboard players add @p[tag=Irelia,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Irelia,tag=!IreliaDefiantDance,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Blades","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={COS=1..}] at @s run function datapack:irelia_functions/weapon1cos

execute at @p[tag=IreliaBladesurging] run particle minecraft:dust 0 0 1 1 ^ ^1.2 ^1 0.4 0.5 0.4 0 50
execute at @p[tag=Irelia] run execute if entity @e[type=area_effect_cloud,tag=BladeSurgeDash] as @p[tag=Irelia] at @s facing entity @e[type=area_effect_cloud,tag=BladeSurgeDash] eyes run tp @s ^ ^ ^1.25
execute at @e[type=area_effect_cloud,tag=BladeSurgeDash] if entity @p[tag=Irelia,distance=..3] run execute as @e[tag=IreliaBladesurge] at @s run function datapack:irelia_functions/bladesurgedamage
#execute at @p[tag=Irelia] run execute if entity @e[tag=IreliaBladesurge] as @p[tag=Irelia] at @s facing entity @e[tag=IreliaBladesurge] eyes run tp @s ^ ^ ^1.25
#execute as @e[tag=IreliaBladesurge] at @s if entity @p[tag=Irelia,distance=..3] run function datapack:irelia_functions/bladesurgedamage

# Defiant Dance
scoreboard players add @p[tag=Irelia,scores={Ability2CD=..299}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Irelia,tag=!IreliaBladesurging,scores={Ability2CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Blades","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={Shift=1..}] at @s run function datapack:irelia_functions/weapon1shift

execute at @p[tag=IreliaDefiantDance,nbt={HurtTime:10s}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..10] ~ ~ ~ 2 1 1

execute as @e[type=armor_stand,tag=IreliaDefiantDanceStand] at @s run function datapack:irelia_functions/defiantdanceparticles

scoreboard players add @p[gamemode=!spectator,tag=Irelia,tag=IreliaDefiantDance] Timer2 1
execute as @p[tag=IreliaDefiantDance,scores={Timer2=45..}] at @s run function datapack:irelia_functions/defiantdanceend
tag @p[tag=IreliaDefiantDance,scores={Timer2=45..}] remove IreliaDefiantDance
scoreboard players reset @p[tag=Irelia,scores={Timer2=45..}] Timer2

execute as @p[tag=Irelia,tag=IreliaDefiantDance,scores={Timer2=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Blades","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={Shift=1..}] at @s run scoreboard players set @s Timer2 44

# Flawless Duet
scoreboard players add @p[tag=Irelia,scores={Ability3CD=..149}] Ability3CD 1
execute as @p[tag=Irelia,tag=!IreliaDefiantDance,scores={Ability3CD=150..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Abilities","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={COS=1..}] at @s run function datapack:irelia_functions/weapon2cos

scoreboard players add @p[tag=IreliaFlawlessDuet,scores={Timer=..69}] Timer 1
execute as @p[tag=IreliaFlawlessDuet,scores={Timer=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Abilities","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={COS=1..}] at @s run function datapack:irelia_functions/weapon2cos2

execute as @e[type=armor_stand,tag=IreliaStuns] at @s run tp @s ~ ~ ~ ~50 ~ 
execute as @e[type=armor_stand,tag=IreliaStuns2] at @s run tp @s ~ ~ ~ ~50 ~ 
execute at @e[type=armor_stand,tag=IreliaStuns] run particle minecraft:dust 0 0 1 1 ^ ^0.5 ^0.5 0 0 0 0 10
execute at @e[type=armor_stand,tag=IreliaStuns2] run particle minecraft:dust 0 0 1 1 ^ ^0.5 ^0.5 0 0 0 0 10

tag @p[tag=IreliaFlawlessDuet,scores={Timer=70..}] remove IreliaFlawlessDuet
scoreboard players reset @p[tag=Irelia,scores={Timer=70..}] Timer

execute as @e[type=armor_stand,tag=IreliaStuns,scores={Timer=9..}] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=IreliaStuns2,limit=1]
execute if entity @e[type=armor_stand,tag=IreliaStuns,scores={Timer=9..}] run execute as @e[type=armor_stand,tag=IreliaStuns2] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=IreliaStuns,limit=1]

scoreboard players add @e[type=armor_stand,tag=IreliaStuns] Timer 1
scoreboard players add @e[type=armor_stand,tag=IreliaStuns2] Timer 1
execute if entity @e[type=armor_stand,tag=IreliaStuns,scores={Timer=70..}] run kill @e[type=armor_stand,tag=IreliaStuns2]
kill @e[type=armor_stand,tag=IreliaStuns,scores={Timer=70..}]

execute as @e[type=armor_stand,tag=IreliaStuns] at @s if entity @s facing entity @e[type=armor_stand,tag=IreliaStuns2,limit=1] eyes run scoreboard players set @s[scores={Timer=10..}] RaycastTimer 0
execute as @e[type=armor_stand,tag=IreliaStuns] at @s if entity @s facing entity @e[type=armor_stand,tag=IreliaStuns2,limit=1] eyes run execute at @s[scores={Timer=10..}] positioned ~ ~1 ~ run function datapack:irelia_functions/ireliapassive5

execute as @e[type=armor_stand,tag=IreliaStuns2] at @s run execute if entity @s facing entity @e[type=armor_stand,tag=IreliaStuns,limit=1] eyes run scoreboard players set @s[scores={Timer=10..}] RaycastTimer 0
execute as @e[type=armor_stand,tag=IreliaStuns2] at @s run execute if entity @s facing entity @e[type=armor_stand,tag=IreliaStuns,limit=1] eyes run execute at @s[scores={Timer=10..}] positioned ~ ~1 ~ run function datapack:irelia_functions/ireliapassive6

execute at @e[type=armor_stand,tag=IreliaStuns,scores={RaycastTimer=2222}] unless entity @e[type=armor_stand,tag=IreliaStunProjectile] run summon armor_stand ^ ^ ^0.1 {Tags:["IreliaStunProjectile","projectile","flawlessduet"],DisabledSlots:2096896,Invisible:1,Invulnerable:1}
execute at @e[type=armor_stand,tag=IreliaStuns2,scores={RaycastTimer=2222}] unless entity @e[type=armor_stand,tag=IreliaStunProjectile2] run summon armor_stand ^ ^ ^0.1 {Tags:["IreliaStunProjectile2","projectile","flawlessduet"],DisabledSlots:2096896,Invisible:1,Invulnerable:1}

execute as @e[type=armor_stand,tag=IreliaStunProjectile2,tag=!facingIreliaStunProjectile2] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=IreliaStuns2,limit=1,sort=nearest]
tag @e[type=armor_stand,tag=IreliaStunProjectile2,tag=!facingIreliaStunProjectile2] add facingIreliaStunProjectile2
execute as @e[type=armor_stand,tag=IreliaStunProjectile2] at @s run function datapack:irelia_functions/stunprojectile

execute as @e[type=armor_stand,tag=IreliaStunProjectile,tag=!facingIreliaStunProjectile] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=IreliaStuns,limit=1,sort=nearest]
tag @e[type=armor_stand,tag=IreliaStunProjectile,tag=!facingIreliaStunProjectile] add facingIreliaStunProjectile
execute as @e[type=armor_stand,tag=IreliaStunProjectile] at @s run function datapack:irelia_functions/stunprojectile

execute as @e[type=armor_stand,tag=IreliaStunProjectile] at @s if entity @e[type=armor_stand,tag=IreliaStuns2,distance=..2] run function datapack:irelia_functions/duetend

# Vanguard's Edge
scoreboard players add @p[tag=Irelia,scores={Ability4CD=..699}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Irelia,tag=!IreliaDefiantDance,scores={Ability4CD=700..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Irelia\'s Abilities","italic":false,"color":"red"}]'}}}}] as @s[tag=Irelia,scores={Shift=1..}] at @s run function datapack:irelia_functions/weapon2shift

execute as @e[type=armor_stand,tag=IreliaVanguardProjectile,tag=!facingIreliaVanguardProjectile] at @s run tp @s ~ ~ ~ facing entity @p[tag=Irelia]
tag @e[type=armor_stand,tag=IreliaVanguardProjectile,tag=!facingIreliaVanguardProjectile] add facingIreliaVanguardProjectile
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run tp @s ^ ^ ^-2

execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run function datapack:irelia_functions/ultprojectile

scoreboard players add @e[type=armor_stand,tag=IreliaVanguardProjectile] Timer 1
kill @e[type=armor_stand,tag=IreliaVanguardProjectile,scores={Timer=20..}]

execute at @e[type=armor_stand,tag=IreliaUltSwords] as @e[type=!armor_stand,tag=!Irelia,tag=!InLabyrinth,distance=..2] at @s run effect give @s minecraft:slowness 1 3 true

scoreboard players add @e[type=armor_stand,tag=IreliaUltSwords] Timer 1
kill @e[type=armor_stand,tag=IreliaUltSwords,scores={Timer=200..}]
