playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 10 0 1
summon armor_stand ^ ^ ^1 {Tags:["IreliaVanguardProjectile","projectile"],DisabledSlots:2096896,Invisible:1,Invulnerable:1}
tp @e[type=armor_stand,tag=IreliaVanguardProjectile] @s
scoreboard players set @s Ability4CD 0