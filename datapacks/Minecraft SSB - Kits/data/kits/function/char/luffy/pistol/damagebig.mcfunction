scoreboard players add @p[tag=Luffy,tag=!LuffyGear] kits.timer2 30
playsound minecraft:entity.generic.hurt neutral @a[distance=..40] ~ ~ ~ 3 0 1
playsound minecraft:entity.generic.big_fall neutral @a[distance=..40] ~ ~ ~ 3 0 1
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..40] ~ ~ ~ 5 0 1
playsound minecraft:item.mace.smash_ground_heavy neutral @a[distance=..40] ~ ~ ~ 5 1 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..40] ~ ~ ~ 2 2 1

particle explosion ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 50 force
particle minecraft:trial_spawner_detection ~ ~1 ~ 0 0 0 0.5 100
execute as @e[type=area_effect_cloud,tag=LuffyPistol,tag=!ChargingLuffyPistol] at @s run scoreboard players set @s kits.raycastTick 0 
execute as @e[type=area_effect_cloud,tag=LuffyPistol,tag=!ChargingLuffyPistol] at @s positioned ~ ~1.5 ~ run function kits:char/luffy/pistol/knockback {"Distance":"30"}