# Game Time Running and detecting if player leaves game
scoreboard players add Time GameTime 1
execute as @a[scores={Leave=1..}] at @s run function datapack:playerleave

# Most Vital Functions
function datapack:quests
function datapack:time
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
execute if entity @p[scores={Drop=1..}] run function datapack:preventitemdrop
function datapack:statcalculations

# Vital Scoreboards
scoreboard players reset @a[scores={Drop=1..}] Drop
scoreboard players reset @a[scores={PlayerKills=1..}] PlayerKills
scoreboard players reset @a[scores={Kills=1..}] Kills
scoreboard players reset @a[scores={Death=1..}] Death
scoreboard players reset @a[scores={Leave=1..}] Leave
scoreboard players reset @a[scores={COS=1..}] COS
scoreboard players set @a[scores={Shift=1..}] Shift 0
scoreboard players reset @a[scores={AttackNSword=1..}] AttackNSword
scoreboard players reset @a[scores={AttackISword=1..}] AttackISword
scoreboard players reset @a[scores={Attack=1..}] Attack
scoreboard players reset @a[scores={Bow=1..}] Bow
scoreboard players reset @a[scores={Block=1..}] Block
scoreboard players reset @a[scores={UsedPot=1..}] UsedPot

# Opened Chest
execute as @p[scores={OpenedChest=1..}] at @s run scoreboard players set @s RaycastTimer 0
execute as @p[scores={OpenedChest=1..}] at @s run execute at @s positioned ~ ~1.5 ~ run function datapack:openedchest
scoreboard players reset @p[scores={OpenedChest=1..}] OpenedChest

## Movement Detection
execute as @a[scores={Walking=0}] at @s run scoreboard players add @s MovingTime 1

scoreboard players set @a[scores={Walking=3..}] MovingTime 0
scoreboard players set @a[scores={Jumping=1..}] MovingTime 0
scoreboard players set @a[scores={Flying=1..}] MovingTime 0
scoreboard players set @a[scores={Running=1..}] MovingTime 0

scoreboard players set @a[scores={Walking=1..}] Walking 0
scoreboard players set @a[scores={Jumping=1..}] Jumping 0
scoreboard players set @a[scores={Flying=1..}] Flying 0
scoreboard players set @a[scores={Running=1..}] Running 0

# Game Time Reset
execute if score Time GameTime matches 72000 run scoreboard players reset Time GameTime

# Carrot Consumption
effect give @a[scores={CarrotHealing=1..}] minecraft:instant_health 1 0 true
scoreboard players reset @a[scores={CarrotHealing=1..}] CarrotHealing