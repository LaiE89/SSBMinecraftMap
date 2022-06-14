# Ability CDs
title @p[tag=Kiryu,tag=KiryuBrawler,scores={Timer2=..9}] actionbar ["",{"text":"Tiger Drop:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Brawler","color":"aqua"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @p[tag=Kiryu,tag=KiryuBrawler,scores={Timer2=10..}] actionbar ["",{"text":"Serenity:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Brawler","color":"aqua"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

title @p[tag=Kiryu,tag=KiryuRush,scores={Timer2=..9}] actionbar ["",{"text":"Quickstep:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Rush","color":"light_purple"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @p[tag=Kiryu,tag=KiryuRush,scores={Timer2=10..}] actionbar ["",{"text":"The Knee:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Rush","color":"light_purple"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

title @p[tag=Kiryu,tag=KiryuBeast,scores={Timer2=..9}] actionbar ["",{"text":"Bike Smash:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Beast","color":"gold"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]
title @p[tag=Kiryu,tag=KiryuBeast,scores={Timer2=10..}] actionbar ["",{"text":"Wall Crush:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Kiryu]","objective":"Ability1CD"}},{"text":" || "},{"text":"Fighting Style:","color":"red"},{"text":" Beast","color":"gold"},{"text":" || "},{"text":"Heat: ","color":"gold"},{"score":{"name":"@p[tag=Kiryu]","objective":"Timer2"},"color":"gold"},{"text":"/10","color":"gold"}]

# Fighting Styles
scoreboard players add @p[tag=Kiryu,scores={Ability2CD=..29}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Kiryu,scores={Ability2CD=30..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_Shift=1..}] at @s run function datapack:kiryu_functions/fightingstyle

### Heat ###
execute as @p[tag=Kiryu,scores={Basic_Attack=1..}] at @s run scoreboard players add @s[scores={Timer2=..9}] Timer2 1

###### Right Click Moves ######
scoreboard players add @p[tag=Kiryu,scores={Ability1CD=..99}] Ability1CD 1
scoreboard players set @p[tag=Kiryu,scores={Ability1CD=101..}] Ability1CD 100

### Brawler ### 
effect give @p[tag=KiryuBrawler] minecraft:resistance 1 1 true

# Counter
execute as @p[tag=KiryuBrawler,scores={Ability1CD=100..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_COS=1..}] as @p[tag=Kiryu,scores={Timer2=..9}] at @s run function datapack:kiryu_functions/tigerdrop

execute at @p[tag=KiryuCountering,nbt={HurtTime:9s}] as @e[distance=..10,sort=nearest,limit=1,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kiryu,tag=!InLabyrinth] at @s run function datapack:kiryu_functions/tigerdropdamage
scoreboard players add @p[tag=KiryuCountering,nbt={HurtTime:9s},scores={Timer2=..9}] Timer2 1
effect clear @p[tag=KiryuCountering,nbt={HurtTime:9s}] absorption
effect clear @p[tag=KiryuCountering,nbt={HurtTime:9s}] mining_fatigue
tag @p[tag=KiryuCountering,nbt={HurtTime:9s}] remove KiryuCountering
scoreboard players reset @p[tag=Kiryu,nbt={HurtTime:9s}] Timer

scoreboard players add @p[tag=KiryuCountering] Timer 1
effect clear @p[tag=KiryuCountering,scores={Timer=15..}] absorption
effect clear @p[tag=KiryuCountering,scores={Timer=15..}] mining_fatigue
tag @p[tag=KiryuCountering,scores={Timer=15..}] remove KiryuCountering
scoreboard players reset @p[tag=Kiryu,scores={Timer=15..}] Timer

# Heat Move (Serenity)
execute as @p[tag=Kiryu,tag=KiryuBrawler,scores={Ability1CD=100..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_COS=1..}] as @p[tag=Kiryu,scores={Timer2=10..}] at @s run function datapack:kiryu_functions/serenity

# Switching to Brawler throws salt in front of you
execute as @e[type=area_effect_cloud,tag=KiryuSalt,tag=!facingKiryuSalt] at @s run tp @s ~ ~ ~ facing entity @p[tag=Kiryu]
tag @e[type=area_effect_cloud,tag=KiryuSalt,tag=!facingKiryuSalt] add facingKiryuSalt
execute as @e[type=area_effect_cloud,tag=KiryuSalt] at @s run function datapack:kiryu_functions/salt

### Rush ###
# Attacking increases your cooldown by 50
effect give @p[tag=KiryuRush] minecraft:speed 1 2 true
scoreboard players add @p[tag=KiryuRush,scores={Basic_Attack=1..}] Ability1CD 50

# Quickstep
execute as @p[tag=KiryuRush,scores={Ability1CD=100..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_COS=1..}] as @p[tag=Kiryu,scores={Timer2=..9}] at @s run function datapack:kiryu_functions/quickstep

# The Knee
execute as @p[tag=KiryuRush,scores={Ability1CD=100..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_COS=1..}] as @p[tag=Kiryu,scores={Timer2=10..}] at @s run function datapack:kiryu_functions/theknee

### Beast ###
# Your first attack pops enemies up
effect give @p[tag=KiryuBeast] minecraft:strength 1 0 true
execute as @p[tag=KiryuBeast,scores={Basic_Attack=1..}] as @p[tag=Kiryu,scores={Timer3=1..}] at @s run function datapack:kiryu_functions/beastattack

# Bike Smash
execute as @p[tag=KiryuBeast,scores={Ability1CD=100..},predicate=datapack:kiryu_items/fist] as @p[tag=Kiryu,scores={Basic_COS=1..}] at @s run function datapack:kiryu_functions/bikesmash

scoreboard players add @e[type=armor_stand,tag=KiryuBike] Timer 1
kill @e[type=armor_stand,tag=KiryuBike,scores={Timer=15..}]
execute at @e[type=armor_stand,tag=KiryuBike] as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Kiryu,tag=!InLabyrinth] at @s run function datapack:kiryu_functions/bikesmashdamage

# Wall Crush
execute as @p[gamemode=!spectator,tag=Kiryu] at @s if entity @e[tag=KiryuGrabbed] run scoreboard players set @s RaycastTimer 0
execute as @p[gamemode=!spectator,tag=Kiryu] at @s positioned ~ ~1 ~ if entity @e[tag=KiryuGrabbed] run function datapack:kiryu_functions/kiryupassive5

execute as @p[tag=Kiryu,scores={Basic_Attack=1..}] at @s if entity @e[tag=KiryuGrabbed] run function datapack:kiryu_functions/wallcrush

execute if entity @e[tag=KiryuGrabbed] run scoreboard players add @p[tag=Kiryu] Timer4 1
execute if entity @p[tag=Kiryu,scores={Basic_Death=1..}] run tag @e[tag=KiryuGrabbed] remove KiryuGrabbed
scoreboard players set @p[tag=Kiryu,scores={Basic_Death=1..}] Timer4 50
execute if entity @p[tag=Kiryu,scores={Timer4=50..}] run tag @e[tag=KiryuGrabbed] remove KiryuGrabbed
scoreboard players reset @p[tag=Kiryu,scores={Timer4=50..}] Timer4
execute at @p[tag=Kiryu] unless entity @e[tag=KiryuGrabbed,distance=..10] run scoreboard players reset @p[tag=Kiryu] Timer4