tag @s add UpdatingStats
setblock ~ ~5 ~ minecraft:oak_sign{Text1:'["",{"text":"Total Games Played: ","color":"green"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"SSBGames"},"color":"green"}]',Text2:'["",{"text":"Number of Wins: ","color":"aqua"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"SSBWins"},"color":"aqua"}]',Text3:'["",{"text":"Winrate: ","color":"red"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"SSBWinrate"},"color":"red"},{"text":"%","color":"red"}]'} keep
setblock ~ ~5 ~1 minecraft:oak_sign{Text1:'["",{"text":"Rank Number: ","color":"white"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"Rank"},"color":"white"}]',Text2:'{"text":"Current Rank: None","color":"dark_red"}'} keep
setblock ~ ~5 ~-1 minecraft:oak_sign{Text1:'["",{"text":"Total Kills: ","color":"dark_aqua"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"LabyrinthKills"},"color":"dark_aqua"}]',Text2:'["",{"text":"Boss Kills: ","color":"dark_green"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"BossKills"},"color":"dark_green"}]',Text3:'["",{"text":"Total Deaths: ","color":"dark_red"},{"score":{"name":"@p[tag=UpdatingStats]","objective":"LabyrinthDeath"},"color":"dark_red"}]'} keep

execute if entity @s[team=!Warrior,team=!Berserker,team=!Immortal,team=!Ace,team=!Prodigy,team=!God] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: None","color":"dark_red"}'}
execute if entity @s[team=Warrior] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: Warrior","color":"gold"}'}
execute if entity @s[team=Berserker] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: Berserker","color":"red"}'}
execute if entity @s[team=Immortal] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: Immortal","color":"dark_red"}'}
execute if entity @s[team=Ace] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: Ace","color":"dark_green"}'}
execute if entity @s[team=Prodigy] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: Prodigy","color":"dark_aqua"}'}
execute if entity @s[team=God] run data merge block ~ ~5 ~1 {Text2:'{"text":"Current Rank: God","color":"dark_purple"}'}

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Lore[1] set from block ~ ~5 ~ Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Lore[3] set from block ~ ~5 ~ Text2
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[1].tag.display.Lore[5] set from block ~ ~5 ~ Text3

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[2].tag.display.Lore[1] set from block ~ ~5 ~1 Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[2].tag.display.Lore[3] set from block ~ ~5 ~1 Text2

data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Lore[1] set from block ~ ~5 ~-1 Text1
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Lore[3] set from block ~ ~5 ~-1 Text2
data modify entity @e[type=chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items[0].tag.display.Lore[5] set from block ~ ~5 ~-1 Text3

tag @s remove UpdatingStats

execute positioned ~ ~5 ~ run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace oak_sign