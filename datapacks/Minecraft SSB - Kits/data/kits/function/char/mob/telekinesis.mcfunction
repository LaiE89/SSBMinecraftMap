damage @s 9 bypass:player_attack by @p[tag=Mob]
particle crit ~ ~ ~ 1 1 1 0.1 50 force
playsound minecraft:entity.player.big_fall neutral @a[distance=..30] ~ ~ ~ 3 0 1
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 5 1 1
#execute if entity @p[tag=Mob,tag=Mob100Percent] run summon minecraft:creeper ~ ~1 ~ {NoAI:1b,Attributes:[{Name:"generic.followRange",Base:0},{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f}],Silent:1,ExplosionRadius:1,Fuse:0,ignited:1}\
#execute if entity @p[tag=Mob,tag=Mob100Percent] run playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 5 1 1
kill @e[type=armor_stand,tag=telekinesis]
