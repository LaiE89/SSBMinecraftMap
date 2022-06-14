# Ability CDs
title @p[tag=Kaneki,tag=!KanekiKakuja] actionbar ["",{"text":"Retrieve Kagune: "},{"score":{"name":"@p[tag=Kaneki]","objective":"Ability2CD"}},{"text":" || "},{"text":"Kakuja:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Kaneki]","objective":"Ability3CD"}},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@p[tag=Kaneki]","objective":"Ability1CD"},"color":"red"},{"text":"/4","color":"red"}]
title @p[tag=Kaneki,tag=KanekiKakuja] actionbar ["",{"text":"Retrieve Kagune: "},{"score":{"name":"@p[tag=Kaneki]","objective":"Ability2CD"}},{"text":" || "},{"text":"Kakuja Time Left:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Kaneki]","objective":"Timer3"},"color":"dark_red"},{"text":"/300","color":"dark_red"},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@p[tag=Kaneki]","objective":"Ability1CD"},"color":"red"},{"text":"/6","color":"red"}]

# Kagune Regeneration
execute store result score @p[tag=Kaneki] Timer2 run execute if entity @e[type=armor_stand,tag=KanekiKagune]

execute as @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer2=0}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..3}] Timer 1
execute as @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer2=1}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..2}] Timer 1
execute as @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer2=2}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..1}] Timer 1
execute as @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer2=3}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..0}] Timer 1

execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=0}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..5}] Timer 1
execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=1}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..4}] Timer 1
execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=2}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..3}] Timer 1
execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=3}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..2}] Timer 1
execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=4}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..1}] Timer 1
execute as @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer2=5}] run scoreboard players add @p[tag=Kaneki,scores={Ability1CD=..0}] Timer 1

scoreboard players add @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer=70..}] Ability1CD 1
scoreboard players reset @p[tag=Kaneki,tag=!KanekiKakuja,scores={Timer=70..}] Timer

scoreboard players add @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer=35..}] Ability1CD 1
scoreboard players reset @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer=35..}] Timer

# Kagune Throw
execute as @p[tag=Kaneki,scores={Ability1CD=1..},predicate=datapack:kaneki_items/kagune] as @p[tag=Kaneki,scores={Basic_COS=1..}] at @s run function datapack:kaneki_functions/weapon1cos

execute at @e[type=armor_stand,tag=KanekiKagune] if entity @p[tag=Kaneki] as @e[type=armor_stand,tag=KanekiKagune] at @s positioned ~ ~ ~ facing entity @p[tag=Kaneki] feet run function datapack:kaneki_functions/kanekipassive3
execute as @e[type=armor_stand,tag=KanekiKagune] at @s if entity @p[tag=Kaneki,distance=20..] run function datapack:kaneki_functions/kagunetoofar

execute at @e[type=armor_stand,tag=KanekiKagune] run particle minecraft:dust 2 0 0 3 ~ ~ ~ 0 0 0 10 0

# Kagune Pull
scoreboard players add @p[tag=Kaneki,scores={Ability4CD=..9}] Ability4CD 1
execute if entity @e[type=armor_stand,tag=KanekiKagune] as @p[gamemode=!spectator,tag=Kaneki,scores={Ability4CD=10..},predicate=datapack:kaneki_items/kagune] as @p[tag=Kaneki,scores={Basic_Shift=1..}] at @s run function datapack:kaneki_functions/weapon1shift

execute at @p[tag=Kaneki] if entity @e[type=armor_stand,tag=KanekiKagune,tag=KanekiPulling,limit=1,sort=nearest] as @p[tag=Kaneki] at @s facing entity @e[type=armor_stand,tag=KanekiKagune,tag=KanekiPulling,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2
execute as @e[type=armor_stand,tag=KanekiKagune,tag=KanekiPulling] at @s if entity @p[tag=Kaneki,distance=..2] run function datapack:kaneki_functions/kagunepull

# Retrieve Kagune
scoreboard players add @p[tag=Kaneki,scores={Ability2CD=..99}] Ability2CD 1
execute if entity @e[type=armor_stand,tag=KanekiKagune] as @p[gamemode=!spectator,tag=Kaneki,scores={Ability2CD=100..},predicate=datapack:kaneki_items/skills] as @p[tag=Kaneki,scores={Basic_COS=1..}] at @s run function datapack:kaneki_functions/weapon2cos

# Kakuja
scoreboard players add @p[tag=Kaneki,scores={Ability3CD=..699}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Kaneki,scores={Ability3CD=700..},predicate=datapack:kaneki_items/skills] as @p[tag=Kaneki,scores={Basic_Shift=1..}] at @s run function datapack:kaneki_functions/weapon2shift

execute as @p[tag=KanekiKakuja,tag=Kaneki] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Kakuja\"}"}}}]}] run clear @s minecraft:player_head{display:{Name:"{\"text\":\"Kakuja\"}"}}
execute as @p[tag=KanekiKakuja,tag=Kaneki] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Kakuja\"}"}}}]}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Kakuja\"}"},Enchantments:[{id:protection,lvl:3}],SkullOwner:{Id:[I;-16977185,811288703,-1145564788,-520051058],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU0ZWEzNTgzYTBhNmM1NGUxYTI3ZGI2MDI5YjgzMjkwM2Y5MGFiOTZjMTg1YjYwMjkwN2RjNGQxN2VmY2M2MSJ9fX0="}]}}} 1

scoreboard players add @p[tag=Kaneki,tag=KanekiKakuja] Timer3 1
scoreboard players set @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer3=300..}] Timer2 0
execute at @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer3=300..}] run particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.5 50
execute if entity @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer3=300..}] run kill @e[type=armor_stand,tag=KanekiKagune]
scoreboard players set @p[tag=Kaneki,tag=KanekiKakuja,scores={Timer3=300..}] Ability1CD 4 
clear @p[tag=KanekiKakuja,scores={Timer3=300..}] minecraft:player_head{display:{Name:"{\"text\":\"Kakuja\"}"}}
item replace entity @p[tag=KanekiKakuja,scores={Timer3=300..}] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Kaneki\"}"},Enchantments:[{id:protection,lvl:3}],SkullOwner:{Id:[I;1541358001,1887784856,-1173820056,-2101818119],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlNzQ2YTExZTdkOTY2MjdkMTBiNDc5MGE5MDE2ZjA4YjhiYjkzZjRhNDEzNzFiYTZjNGI0NjJiMzdjZWMwZCJ9fX0="}]}}} 1
tag @p[tag=KanekiKakuja,scores={Timer3=300..}] remove KanekiKakuja
scoreboard players reset @p[tag=Kaneki,scores={Timer3=300..}] Timer3