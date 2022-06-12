tag @s add UpdatingStats
execute if entity @s[tag=Quest1,tag=!Quest1Number1Completed] run setblock ~ ~125 ~ minecraft:oak_sign{Text1:'{"text":"Kill 50 monsters in the Labyrinth","color":"dark_red"}',Text2:'["",{"score":{"name":"@p[tag=Quest1,tag=UpdatingStats]","objective":"QuestLabyKills"},"color":"white"},{"text":" /50","color":"dark_purple"}]',Text3:'{"text":"Rewards: 1 Lucky Block","color":"yellow"}'} keep
execute if entity @s[tag=Quest1,tag=Quest1Number1Completed] run setblock ~ ~125 ~ minecraft:oak_sign{Text1:'{"text":"Kill 50 monsters in the Labyrinth","color":"dark_red"}',Text2:'{"text":"COMPLETED","bold":true,"color":"green"}'} keep
execute if entity @s[tag=Quest1,tag=!Quest1Number2Completed] run setblock ~ ~125 ~1 minecraft:oak_sign{Text1:'{"text":"Win 5 SSB Games","color":"dark_red"}',Text2:'["",{"score":{"name":"@p[tag=Quest1,tag=UpdatingStats]","objective":"QuestSSBWins"},"color":"white"},{"text":" /5","color":"dark_purple"}]',Text3:'{"text":"Rewards: 1 Lucky Block","color":"yellow"}'} keep
execute if entity @s[tag=Quest1,tag=Quest1Number2Completed] run setblock ~ ~125 ~1 minecraft:oak_sign{Text1:'{"text":"Win 5 SSB Games","color":"dark_red"}',Text2:'{"text":"COMPLETED","bold":true,"color":"green"}'} keep
execute if entity @s[tag=Quest1,tag=!Quest1Number3Completed] run setblock ~ ~125 ~-1 minecraft:oak_sign{Text1:'{"text":"Kill a Boss","color":"dark_red"}',Text2:'["",{"score":{"name":"@p[tag=Quest1,tag=UpdatingStats]","objective":"QuestBossKill"},"color":"white"},{"text":" /1","color":"dark_purple"}]',Text3:'{"text":"Rewards: 1 Lucky Block","color":"yellow"}'} keep
execute if entity @s[tag=Quest1,tag=Quest1Number3Completed] run setblock ~ ~125 ~-1 minecraft:oak_sign{Text1:'{"text":"Kill a Boss","color":"dark_red"}',Text2:'{"text":"COMPLETED","bold":true,"color":"green"}'} keep

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Name set from block ~ ~125 ~ Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Lore[1] set from block ~ ~125 ~ Text2
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Lore[3] set from block ~ ~125 ~ Text3

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Name set from block ~ ~125 ~1 Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Lore[1] set from block ~ ~125 ~1 Text2
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Lore[3] set from block ~ ~125 ~1 Text3

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[2].tag.display.Name set from block ~ ~125 ~-1 Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[2].tag.display.Lore[1] set from block ~ ~125 ~-1 Text2
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[2].tag.display.Lore[3] set from block ~ ~125 ~-1 Text3

tag @s remove UpdatingStats

execute positioned ~ ~125 ~ run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace oak_sign
