# What happens to entities near Frag Grenade explosion
damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=ArmorPraetorSuitFragGrenade,limit=1,sort=nearest] from @p[tag=Doomslayer]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 1 0.4 0 50 force
scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 10
