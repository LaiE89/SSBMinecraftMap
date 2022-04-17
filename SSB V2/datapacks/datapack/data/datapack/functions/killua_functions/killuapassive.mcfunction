# Ability CDs
title @p[tag=Killua,tag=!KilluaGodspeed,scores={Timer4=..99}] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Nen: ","color":"aqua"},{"score":{"name":"@p[tag=Killua]","objective":"Timer4"},"color":"aqua"}]
title @p[tag=Killua,tag=!KilluaGodspeed,scores={Timer4=100..}] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"GODSPEED IS READY","color":"aqua"}]
title @p[tag=Killua,tag=KilluaGodspeed] actionbar ["",{"text":"Shadow Step:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Yoyos:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Killua]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Godspeed is active: ","color":"aqua"},{"score":{"name":"@p[tag=Killua]","objective":"Timer"},"color":"aqua"},{"text":"/300","color":"aqua"}]

# Lightning Palm Attack
scoreboard players set @p[tag=Killua,scores={Timer4=100..}] Timer4 100
scoreboard players set @p[tag=Killua,scores={Timer4=..-1}] Timer4 0
scoreboard players add @p[tag=Killua,tag=!KilluaGodspeed,tag=!KilluaLightningPalm,scores={Attack=1..}] Timer4 20
scoreboard players add @p[tag=Killua,tag=!KilluaGodspeed,tag=KilluaLightningPalm,scores={Attack=1..}] Timer4 50

execute as @p[tag=Killua,tag=KilluaLightningPalm,scores={Attack=1..}] at @s run function datapack:killua_functions/lightningpalm

execute at @p[tag=Killua,tag=KilluaGodspeed,scores={Attack=1..}] run effect give @e[distance=..10,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Killua,tag=!InLabyrinth] minecraft:blindness 1 0 true
execute at @p[tag=Killua,tag=KilluaGodspeed,scores={Attack=1..}] run playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..15] ~ ~ ~ 1 2 1

# Shadowstep
scoreboard players add @p[tag=Killua,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Killua,scores={Ability1CD=100..}] as @p[tag=Killua,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Killua\'s Claws","italic":false}]'}}}}] at @s run function datapack:killua_functions/weapon1cos

# Yoyo
scoreboard players add @p[tag=Killua,scores={Ability2CD=..299}] Ability2CD 1
execute at @p[tag=Killua,scores={Ability2CD=300..}] as @p[tag=Killua,scores={Shift=1..},gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Killua\'s Claws","italic":false}]'}}}}] at @s run function datapack:killua_functions/weapon1shift

execute as @e[type=armor_stand,tag=KilluaYoyo,tag=!facingKillua,scores={Timer=..40}] at @s run tp @s ~ ~ ~ facing entity @p[tag=Killua,sort=nearest,limit=1]
tag @e[type=armor_stand,tag=KilluaYoyo,tag=!facingKillua,scores={Timer=..15}] add facingKillua
execute as @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=..14}] at @s run tp @s ^ ^ ^-1

execute at @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=..15}] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Killua,tag=!InLabyrinth] at @s run function datapack:killua_functions/yoyodamage
execute at @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=50..}] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Killua,tag=!InLabyrinth] at @s run playsound minecraft:item.armor.equip_leather neutral @a[distance=..20] ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=50}] at @s if entity @e[tag=!Killua,distance=..2,tag=!InLabyrinth,type=!experience_orb,type=!item,type=!arrow,type=!armor_stand,type=!firework_rocket] run function datapack:killua_functions/yoyoknockback

execute as @e[type=armor_stand,tag=KilluaYoyo] at @s run particle minecraft:crit ~ ~1.3 ~ 0 0 0 0 1
execute if entity @p[tag=Killua,tag=KilluaGodspeed] as @e[type=armor_stand,tag=KilluaYoyo] at @s run particle minecraft:dust 0 1 1 1 ~ ~1.3 ~ 0.1 0.1 0.1 0 2

execute at @p[tag=Killua] run execute as @e[type=minecraft:armor_stand,tag=KilluaYoyo,scores={Timer=51..}] at @s facing entity @p[tag=Killua] feet run teleport @s ^ ^0.3 ^1.5
execute as @p[tag=Killua] at @s if entity @e[tag=KilluaYoyo,scores={Timer=51..},distance=..1.5] run playsound minecraft:entity.shulker.open neutral @a[distance=..5] ~ ~ ~ 2 0 1
execute as @p[tag=Killua] at @s if entity @e[tag=KilluaYoyo,scores={Timer=51..},distance=..1.5] run scoreboard players set @s Ability2CD 298
execute as @p[tag=Killua] at @s if entity @e[tag=KilluaYoyo,scores={Timer=51..},distance=..1.5] run kill @e[type=minecraft:armor_stand,tag=KilluaYoyo]

scoreboard players add @e[type=armor_stand,tag=KilluaYoyo] Timer 1
execute if entity @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=16}] run playsound minecraft:entity.armor_stand.break neutral @p[tag=Killua] ~ ~ ~ 10 0 1
kill @e[type=armor_stand,tag=KilluaYoyo,scores={Timer=16}]

# Lightning Palm
scoreboard players add @p[tag=Killua,scores={Shift=0}] ShiftOff 1
scoreboard players reset @p[tag=Killua,scores={ShiftOff=3..}] Shift
scoreboard players reset @p[tag=Killua,scores={Shift=1..}] ShiftOff

execute at @p[tag=Killua,tag=!KilluaGodspeed,scores={Timer4=1..}] run scoreboard players add @p[tag=Killua,tag=!KilluaLightningPalm,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nen","italic":false}]'}}}}] ShiftOn 1
scoreboard players add @p[tag=Killua,tag=KilluaGodspeed,tag=!KilluaLightningPalm,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nen","italic":false}]'}}}}] ShiftOn 1 
execute as @p[tag=Killua,tag=!KilluaGodspeed,scores={Timer4=0}] at @s run scoreboard players reset @s ShiftOn
scoreboard players reset @p[tag=Killua,scores={ShiftOff=3..}] ShiftOn
execute as @p[tag=Killua,tag=!KilluaGodspeed,scores={ShiftOn=40..}] at @s run tag @s add KilluaLightningPalm
execute as @p[tag=Killua,tag=!KilluaGodspeed,scores={ShiftOn=1..}] at @s run scoreboard players remove @s Timer4 1
execute as @p[tag=Killua,tag=!KilluaGodspeed,scores={ShiftOn=40..}] at @s run effect give @s minecraft:speed 1 9 true
execute as @p[tag=Killua,tag=KilluaGodspeed,scores={ShiftOn=20..}] at @s run tag @s add KilluaLightningPalm
execute as @p[tag=Killua,scores={ShiftOn=1..}] at @s run particle minecraft:dust 0 1 1 1 ^-0.5 ^0.7 ^0.5 0.1 0.1 0.1 0 20
execute as @p[tag=Killua,scores={ShiftOn=1..}] at @s run playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute as @p[tag=Killua,tag=KilluaLightningPalm] at @s run particle minecraft:dust 0 2 1 1 ^-0.5 ^0.8 ^0.5 0.2 0.2 0.2 0 50
execute as @p[tag=Killua,tag=!KilluaGodspeed,scores={ShiftOn=40}] at @s run playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..30] ~ ~ ~ 3 2 1
execute as @p[tag=Killua,tag=KilluaGodspeed,scores={ShiftOn=20}] at @s run playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..30] ~ ~ ~ 3 2 1
scoreboard players reset @p[tag=Killua,tag=!KilluaGodspeed,scores={ShiftOn=40..}] ShiftOn
scoreboard players reset @p[tag=Killua,tag=KilluaGodspeed,scores={ShiftOn=20..}] ShiftOn
scoreboard players reset @p[tag=Killua,scores={ShiftOff=3..}] ShiftOff

scoreboard players add @p[tag=KilluaLightningPalm] Timer2 1
tag @p[tag=Killua,tag=KilluaLightningPalm,scores={Timer2=60..}] remove KilluaLightningPalm
scoreboard players reset @p[tag=Killua,scores={Timer2=60..}] Timer2

# Godspeed
execute as @p[tag=Killua,scores={Timer4=100..}] as @p[tag=Killua,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nen","italic":false}]'}}}}] at @s run function datapack:killua_functions/weapon2cos
execute as @p[tag=Killua,tag=KilluaGodspeed,scores={Timer=20..}] as @p[tag=Killua,scores={Timer3=1..}] as @p[tag=Killua,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nen","italic":false}]'}}}}] at @s run function datapack:killua_functions/lightningbolt

execute as @e[type=area_effect_cloud,tag=KilluaThunder,tag=!castedKilluaThunder] at @s run tp @s ~ ~ ~ facing entity @p[tag=Killua]
tag @e[type=area_effect_cloud,tag=KilluaThunder,tag=!castedKilluaThunder] add castedKilluaThunder
execute as @e[type=area_effect_cloud,tag=KilluaThunder] at @s run tp @s ^ ^ ^-1.5
execute at @e[type=area_effect_cloud,tag=KilluaThunder] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Killua,tag=!InLabyrinth] at @s run function datapack:killua_functions/lightningboltdamage
execute as @e[type=area_effect_cloud,tag=KilluaThunder] at @s run particle minecraft:dust 0 2 1 2 ~ ~1.3 ~ 0.4 0.4 0.4 0.05 50

execute at @p[tag=KilluaGodspeed] run particle minecraft:falling_dust minecraft:light_blue_concrete_powder ~ ~1 ~ 0.4 1 0.4 0 3

scoreboard players add @p[tag=Killua,tag=KilluaGodspeed] Timer 1
tag @p[tag=Killua,scores={Timer=300..}] remove KilluaGodspeed
scoreboard players reset @p[tag=Killua,scores={Timer=300..}] Timer
