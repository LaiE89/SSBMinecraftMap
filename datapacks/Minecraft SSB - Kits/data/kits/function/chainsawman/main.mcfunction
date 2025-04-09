# Ability CDs
title @s[tag=!DenjiChainsaw] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer"},"color":"red"},{"text":"/5","color":"red"}]
title @s[tag=!DenjiChainsaw,scores={kits.timer=5..}] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"CORD IS READY","color":"red"}]
title @s[tag=DenjiChainsaw] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer"},"color":"red"},{"text":"/5","color":"red"}]
title @s[tag=DenjiChainsaw,scores={kits.timer=5..}] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"CORD IS READY","color":"red"}]

# Blood passive
execute at @s[scores={kits.timer=..5}] run scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.timer 1
execute at @s[tag=DenjiChainsaw,scores={kits.criterion.attack=1..}] run playsound minecraft:entity.bee.hurt neutral @a[distance=..10] ~ ~ ~ 3 0 1
execute at @s[tag=DenjiChainsaw,scores={kits.criterion.attack=1..}] run particle crit ^ ^1.1 ^2 0.5 0 0.5 0 20 force

# Groin Kick
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[tag=!DenjiChainsaw,scores={kits.ability1CD=100..},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:chainsawman/weapon1cos

# Chain Wrap
execute as @s[tag=DenjiChainsaw,scores={kits.ability1CD=100..},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:chainsawman/weapon1cos2

execute as @e[type=area_effect_cloud,tag=chainsawchain] at @s run function kits:chainsawman/chainsprojectile
execute as @e[tag=DenjiChained] at @s run function kits:chainsawman/chainedup 
execute as @e[tag=DenjiChainedGrab] at @s run function kits:chainsawman/chainedgrab

# Cord
execute as @s[scores={kits.timer=5..},predicate=kits:items/chainsawman/chainsaw] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:chainsawman/weapon1shift

execute at @s[tag=DenjiChainsaw] unless entity @s[tag=DenjiChainsaw,nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,components:{"minecraft:custom_name":'"Chainsaw Devil"'}}]}] run function kits:chainsawman/devilhead

effect give @s[tag=DenjiChainsaw] strength 1 0 true

scoreboard players add @s[tag=DenjiChainsaw,scores={kits.timer2=..299}] kits.timer2 1
execute at @s[tag=DenjiChainsaw,scores={kits.timer2=300..}] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 1 0.5 0 150 force
damage @s[tag=DenjiChainsaw,scores={kits.timer2=300..}] 8 bypass:player_attack_true_damage_no_kb by @s
tag @s[tag=DenjiChainsaw,scores={kits.timer2=300..}] remove DenjiChainsaw
clear @s[scores={kits.timer2=300..}] minecraft:player_head[custom_name="Chainsaw Devil"]
item replace entity @s[scores={kits.timer2=300..}] armor.head with player_head[custom_name="Denji",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.denji",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;911430723,-85835469,-2025851302,-704748153],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTAyNDA2YmVkMjA3ZjYwMGE1ZWE4NmMyOGVhM2FiZjAwM2QyZjZlOTM3Mjc0NDVmMmU1OWVjNmQ1NGI0MjVhNiJ9fX0="}]}] 1
scoreboard players set @s[scores={kits.timer2=300..}] kits.timer2 0
