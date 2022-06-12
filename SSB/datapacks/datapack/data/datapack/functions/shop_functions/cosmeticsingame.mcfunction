# Replaced with plugins
# Trigger Commands
#scoreboard players enable @a MyStats
#execute as @a[scores={MyStats=1..}] at @s run tellraw @s ["",{"text":"-------------------------","color":"white"},{"text":"\n"},{"selector":"@s","bold":true,"underlined":true,"color":"dark_red"},{"text":"'s Stats","bold":true,"underlined":true,"color":"dark_red"},{"text":"\n\nSSB","bold":true,"color":"dark_red"},{"text":" Stats","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Total Games Played:","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"SSBGames"}},{"text":"\n"},{"text":"Number of Wins:","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"SSBWins"}},{"text":"\n"},{"text":"Winrate:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"SSBWinrate"}},{"text":"%"},{"text":"\n"},{"text":"-------------------------","color":"white"}]
#scoreboard players reset @a[scores={MyStats=1..}] MyStats

#scoreboard players enable @a GetNearestStats
#execute as @a[scores={GetNearestStats=1..}] at @s run tellraw @s ["",{"text":"-------------------------","color":"white"},{"text":"\n"},{"selector":"@p[scores={GetNearestStats=0}]","bold":true,"underlined":true,"color":"dark_red"},{"text":"'s Stats","bold":true,"underlined":true,"color":"dark_red"},{"text":"\n\nSSB","bold":true,"color":"dark_red"},{"text":" Stats","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Total Games Played:","color":"green"},{"text":" "},{"score":{"name":"@p[distance=2..]","objective":"SSBGames"}},{"text":"\n"},{"text":"Number of Wins:","color":"aqua"},{"text":" "},{"score":{"name":"@p[distance=2..]","objective":"SSBWins"}},{"text":"\n"},{"text":"Winrate:","color":"red"},{"text":" "},{"score":{"name":"@p[distance=2..]","objective":"SSBWinrate"}},{"text":"%"},{"text":"\n"},{"text":"-------------------------","color":"white"}]
#scoreboard players reset @a[scores={GetNearestStats=1..}] GetNearestStats

#scoreboard players enable @a Balance
#execute as @a[scores={Balance=1..}] at @s run tellraw @s ["",{"text":"-------------------------","color":"white"},{"text":"\n"},{"selector":"@s","bold":true,"color":"dark_green"},{"text":"'s Balance:","bold":true,"color":"dark_green"},{"text":" $","bold":true,"color":"green"},{"score":{"name":"@s","objective":"Money"},"bold":true,"color":"green"},{"text":"\n"},{"text":"-------------------------","color":"white"}]
#scoreboard players reset @a[scores={Balance=1..}] Balance

# Particles
execute if entity @a[tag=godparticles] run function datapack:shop_functions/cosmetics/particles/god_particles/godparticles
execute if entity @a[tag=shitparticles] run function datapack:shop_functions/cosmetics/particles/shit_particles/shitparticles
execute if entity @a[tag=fireparticles] run function datapack:shop_functions/cosmetics/particles/fire_particles/fireparticles
execute if entity @a[tag=shadowparticles] run function datapack:shop_functions/cosmetics/particles/shadow_particles/shadowparticles

# Death Effects
execute if entity @a[tag=goddeatheffect,scores={Basic_Death=1..}] run function datapack:shop_functions/cosmetics/death_effects/god_death/goddeatheffect
execute if entity @a[tag=goredeatheffect,scores={Basic_Death=1..}] run function datapack:shop_functions/cosmetics/death_effects/gore_death/goredeatheffect
execute if entity @a[tag=gravedeatheffect,scores={Basic_Death=1..}] run function datapack:shop_functions/cosmetics/death_effects/grave_death/gravedeatheffect

# Kill Messages
execute if entity @a[tag=molesterkillmessages,scores={Basic_PlayerKill=1..}] run function datapack:shop_functions/cosmetics/kill_messages/molester_kill/molesterkillmessages
execute if entity @a[tag=godkillmessages,scores={Basic_PlayerKill=1..}] run function datapack:shop_functions/cosmetics/kill_messages/god_kill/godkillmessages
execute if entity @a[tag=terrariakillmessages,scores={Basic_PlayerKill=1..}] run function datapack:shop_functions/cosmetics/kill_messages/terraria_kill/terrariakillmessages

# RNG
scoreboard players set @a[scores={RNG=99..}] RNG 0