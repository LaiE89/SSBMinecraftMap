# Game Time Running and detecting if player leaves game
scoreboard players add Time GameTime 1
execute as @a[scores={Basic_Leave=1..}] at @s run function datapack:playerleave

# Most Vital Functions
function datapack:quests
function datapack:time_functions/time
function datapack:resettrigger
function datapack:playerdeath
function datapack:kitabilities
function datapack:shop_functions/cosmeticsingame

# Pretty Vital Functions
execute as @a[x=-198,y=75,z=-29,dx=12,dy=-3,dz=-22] at @s run function datapack:pvp_functions/queue/prepareforbattle
execute if entity @p[tag=Player] run function datapack:pvp_functions/ingame/ssbplayerlives
execute if entity @p[tag=Loser] unless entity @p[tag=Player] run tp @a[tag=Loser] -192 72 80 facing -192 73 85
execute if entity @p[tag=InLabyrinth] run function datapack:labyrinth_functions/labyrinthmaintenance

# Least Priority Functions
execute as @a[x=-204,y=90,z=431,dx=45,dy=-18,dz=52] at @s run function datapack:shop_functions/shop
execute as @a[x=-235,y=72,z=147,dx=86,dy=10,dz=-86] at @s run function datapack:lobby_functions/main
function datapack:statcalculations
# Replaced by Plugin
#execute if entity @p[scores={Basic_Drop=1..}] run function datapack:preventitemdrop

# Vital Scoreboards
scoreboard players reset @a[scores={Basic_Drop=1..}] Basic_Drop
scoreboard players reset @a[scores={Basic_PlayerKill=1..}] Basic_PlayerKill
scoreboard players reset @a[scores={Basic_Kills=1..}] Basic_Kills
scoreboard players reset @a[scores={Basic_Death=1..}] Basic_Death
scoreboard players reset @a[scores={Basic_Leave=1..}] Basic_Leave
scoreboard players reset @a[scores={Basic_COS=1..}] Basic_COS
scoreboard players set @a[scores={Basic_Shift=1..}] Basic_Shift 0
scoreboard players reset @a[scores={Basic_NRiteSword=1..}] Basic_NRiteSword
scoreboard players reset @a[scores={Basic_IronSword=1..}] Basic_IronSword
scoreboard players reset @a[scores={Basic_Attack=1..}] Basic_Attack
scoreboard players reset @a[scores={Basic_Bow=1..}] Basic_Bow
scoreboard players reset @a[scores={Basic_Block=1..}] Basic_Block
scoreboard players reset @a[scores={Basic_Pot=1..}] Basic_Pot

# Opened Chest
execute as @a[scores={Basic_Chest=1..}] at @s run function datapack:chests_functions/openedchesttrigger

## Movement Detection
#execute as @a[scores={Walking=0}] at @s run scoreboard players add @s MovingTime 1

#scoreboard players set @a[scores={Walking=3..}] MovingTime 0
#scoreboard players set @a[scores={Jumping=1..}] MovingTime 0
#scoreboard players set @a[scores={Flying=1..}] MovingTime 0
#scoreboard players set @a[scores={Running=1..}] MovingTime 0

#scoreboard players set @a[scores={Walking=1..}] Walking 0
#scoreboard players set @a[scores={Jumping=1..}] Jumping 0
#scoreboard players set @a[scores={Flying=1..}] Flying 0
#scoreboard players set @a[scores={Running=1..}] Running 0

# Game Time Reset
execute if score Time GameTime matches 72000 run scoreboard players reset Time GameTime

# Carrot Consumption
effect give @a[scores={Basic_Carrot=1..}] minecraft:instant_health 1 0 true
scoreboard players reset @a[scores={Basic_Carrot=1..}] Basic_Carrot