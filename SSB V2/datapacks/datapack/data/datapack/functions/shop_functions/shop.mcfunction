# Cosmetics Trigger
function datapack:shop_functions/cosmeticstrigger

# Ranks
team join Warrior @a[scores={Rank=30}]
title @s[scores={Rank=30}] title {"text":"You've reached Warrior Rank","bold":true,"color":"gold"}
execute at @s[scores={Rank=30}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

team join Berserker @a[scores={Rank=60}]
title @s[scores={Rank=60}] title {"text":"You've reached Berserker Rank","bold":true,"color":"red"}
execute at @s[scores={Rank=60}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

team join Immortal @a[scores={Rank=90}]
title @s[scores={Rank=90}] title {"text":"You've reached Immortal Rank","bold":true,"color":"dark_red"}
execute at @s[scores={Rank=90}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

team join Ace @a[scores={Rank=120}]
title @s[scores={Rank=120}] title {"text":"You've reached Ace Rank","bold":true,"color":"dark_green"}
execute at @s[scores={Rank=120}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

team join Prodigy @a[scores={Rank=150}]
title @s[scores={Rank=150}] title {"text":"You've reached Prodigy Rank","bold":true,"color":"dark_aqua"}
execute at @s[scores={Rank=150}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

team join God @a[scores={Rank=180}]
title @s[scores={Rank=180}] title {"text":"You've reached God Rank","bold":true,"color":"dark_purple"}
execute at @s[scores={Rank=180}] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;14602026]}],Flight:1}}}}

scoreboard players set @s[scores={Rank=30}] Rank 31
scoreboard players set @s[scores={Rank=60}] Rank 61
scoreboard players set @s[scores={Rank=90}] Rank 91
scoreboard players set @s[scores={Rank=120}] Rank 121
scoreboard players set @s[scores={Rank=150}] Rank 151
scoreboard players set @s[scores={Rank=180}] Rank 181

# Lucky block
function datapack:shop_functions/luckyblock

# Mail System
function datapack:shop_functions/mailsystem

