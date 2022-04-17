# Ability CDs
title @p[tag=Denji,tag=!DenjiChainsaw] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@p[tag=Denji]","objective":"Ability1CD"}},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@p[tag=Denji]","objective":"Timer"},"color":"red"},{"text":"/5","color":"red"}]
title @p[tag=Denji,tag=!DenjiChainsaw,scores={Timer=5..}] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@p[tag=Denji]","objective":"Ability1CD"}},{"text":" || "},{"text":"CORD IS READY","color":"red"}]
title @p[tag=Denji,tag=DenjiChainsaw] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Denji]","objective":"Ability1CD"}},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@p[tag=Denji]","objective":"Timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@p[tag=Denji]","objective":"Timer"},"color":"red"},{"text":"/5","color":"red"}]
title @p[tag=Denji,tag=DenjiChainsaw,scores={Timer=5..}] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Denji]","objective":"Ability1CD"}},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@p[tag=Denji]","objective":"Timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"CORD IS READY","color":"red"}]

# Blood passive
execute at @p[tag=Denji,scores={Timer=..5}] run scoreboard players add @p[tag=Denji,scores={Attack=1..}] Timer 1
execute at @a[tag=Denji,tag=DenjiChainsaw,scores={Attack=1..}] run playsound minecraft:entity.bee.hurt neutral @a[distance=..10] ~ ~ ~ 3 0 1
execute at @a[tag=Denji,tag=DenjiChainsaw,scores={Attack=1..}] run particle minecraft:crit ^ ^1.1 ^2 0.5 0 0.5 0 20

# Groin Kick
scoreboard players add @p[tag=Denji,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Denji,tag=!DenjiChainsaw,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Devil\'s Chainsaw","italic":false,"color":"red"}]'}}}}] as @p[tag=Denji,scores={COS=1..}] at @s run function datapack:chainsawman_functions/weapon1cos

# Chain Wrap
execute as @p[tag=Denji,tag=DenjiChainsaw,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Devil\'s Chainsaw","italic":false,"color":"red"}]'}}}}] as @p[tag=Denji,scores={COS=1..}] at @s run function datapack:chainsawman_functions/weapon1cos2

execute as @e[type=area_effect_cloud,tag=chainsawchain,tag=!facingchainsawchain] at @s run tp @s ~ ~ ~ facing entity @p[tag=Denji]
tag @e[type=area_effect_cloud,tag=chainsawchain,tag=!facingchainsawchain] add facingchainsawchain
execute as @e[type=area_effect_cloud,tag=chainsawchain] at @s run tp @s ^ ^ ^-2

execute at @e[type=area_effect_cloud,tag=chainsawchain] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Denji,tag=!InLabyrinth] at @s run function datapack:chainsawman_functions/chains
execute as @e[type=area_effect_cloud,tag=chainsawchain] at @s if entity @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Denji,tag=!InLabyrinth] run kill @s
execute as @e[type=area_effect_cloud,tag=chainsawchain] at @s run particle minecraft:dust 0.5 0.5 0.5 1 ~ ~1.4 ~ 0.05 0.05 0.05 0 50 

execute if entity @e[tag=DenjiChained] run scoreboard players add @p[tag=Denji] Timer3 1
execute at @e[tag=DenjiChained,limit=1] run particle minecraft:item minecraft:chain ~ ~1 ~ 0.4 1 0.4 0 20
execute if entity @p[tag=Denji,scores={Timer3=40..}] run tag @e[tag=DenjiChained] remove DenjiChained
scoreboard players reset @p[tag=Denji,scores={Timer3=40..}] Timer3

execute at @e[tag=DenjiChained,limit=1] run execute if entity @p[tag=Denji] as @e[tag=DenjiChained,limit=1] at @s positioned ~ ~0.75 ~ facing entity @p[tag=Denji] feet run function datapack:chainsawman_functions/chainsawmanpassive3

execute if entity @e[tag=DenjiChained,limit=1] as @p[tag=Denji,tag=DenjiChainsaw,scores={Ability1CD=10..99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Devil\'s Chainsaw","italic":false,"color":"red"}]'}}}}] as @p[tag=Denji,scores={COS=1..}] at @s run function datapack:chainsawman_functions/chainpull 
execute as @e[tag=DenjiChainedGrab] at @s facing entity @p[tag=Denji] eyes run tp @s ^ ^ ^2
execute as @e[tag=DenjiChainedGrab] at @s if entity @a[tag=Denji,distance=..3] run tag @s remove DenjiChainedGrab

# Cord
execute as @p[tag=Denji,scores={Timer=5..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Devil\'s Chainsaw","italic":false,"color":"red"}]'}}}}] as @p[tag=Denji,gamemode=!spectator,scores={Shift=1..}] at @s run function datapack:chainsawman_functions/weapon1shift

execute as @p[tag=DenjiChainsaw,tag=Denji] at @s run execute unless entity @s[tag=DenjiChainsaw,tag=Denji,nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Chainsaw Devil\"}"}}}]}] run clear @s minecraft:player_head{display:{Name:"{\"text\":\"Chainsaw Devil\"}"}}
execute as @p[tag=DenjiChainsaw,tag=Denji] at @s run execute unless entity @s[tag=DenjiChainsaw,tag=Denji,nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Chainsaw Devil\"}"}}}]}] run replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Chainsaw Devil\"}"},Enchantments:[{id:protection,lvl:5}],SkullOwner:{Id:[I;424438769,1260012868,-1886423588,120672850],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM4YTI1MTc2MjA1ZmU2NTcwMTFmMDE2MDUzM2I4N2E1MDFmMzQ2MTUyMzBmZTllOGUyMDI0NDNiMjE5N2MxMiJ9fX0="}]}}} 1

effect give @p[tag=DenjiChainsaw,tag=Denji] strength 1 0 true

scoreboard players add @p[tag=Denji,tag=DenjiChainsaw,scores={Timer2=..299}] Timer2 1
execute at @p[tag=Denji,tag=DenjiChainsaw,scores={Timer2=300..}] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.5 1 0.5 0 150
effect give @p[tag=Denji,tag=DenjiChainsaw,scores={Timer2=300..}] instant_damage 1 1 true
tag @p[tag=Denji,tag=DenjiChainsaw,scores={Timer2=300..}] remove DenjiChainsaw
clear @p[tag=Denji,scores={Timer2=300..}] minecraft:player_head{display:{Name:"{\"text\":\"Chainsaw Devil\"}"}}
replaceitem entity @p[tag=Denji,scores={Timer2=300..}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Denji\"}"},SkullOwner:{Id:[I;-962959391,1296255494,-2011161131,-1320338836],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzUwODIzYzU3YjRlMTY3NjMxMWRkY2Q4ZTUyOTcxOGM4ZTE5MDhjYmFiMjdmYTNlNzIxYzkxMWVmM2ExY2QzZCJ9fX0="}]}}} 1
scoreboard players set @p[tag=Denji,scores={Timer2=300..}] Timer2 0
