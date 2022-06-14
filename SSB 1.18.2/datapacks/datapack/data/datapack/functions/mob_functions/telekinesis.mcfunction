function datapack:damage1
particle minecraft:crit ~ ~ ~ 1 1 1 0.1 50
playsound minecraft:entity.player.big_fall neutral @a[distance=..30] ~ ~ ~ 3 0 1
execute if entity @p[tag=Mob,tag=Mob100Percent] run summon minecraft:creeper ~ ~1 ~ {NoAI:1b,Attributes:[{Name:"generic.followRange",Base:0},{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f}],Silent:1,ExplosionRadius:1,Fuse:0,ignited:1}
kill @e[type=armor_stand,tag=telekinesis]