execute as @p[tag=Noctis] at @s rotated ~ 0 run execute as @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] at @s run tag @s add NoctisIsThrown
execute as @p[tag=Noctis] at @s rotated ~ 0 run execute as @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] at @s run scoreboard players set @s kits.raycastTick2 50

# Edit the number of recursions. Lower = slower. Speed = Blocks per tick = kits.timer2 * 0.5
execute as @p[tag=Noctis] at @s rotated ~ 0 run execute if entity @e[type=armor_stand,tag=NoctisThrownWeapon,tag=NoctisWise,sort=nearest,limit=1] at @s run scoreboard players set @p[tag=Noctis] kits.timer2 4
execute as @p[tag=Noctis] at @s rotated ~ 0 run execute if entity @e[type=armor_stand,tag=NoctisThrownWeapon,tag=NoctisTall,sort=nearest,limit=1] at @s run scoreboard players set @p[tag=Noctis] kits.timer2 3
execute as @p[tag=Noctis] at @s rotated ~ 0 run execute if entity @e[type=armor_stand,tag=NoctisThrownWeapon,tag=NoctisOracle,sort=nearest,limit=1] at @s run scoreboard players set @p[tag=Noctis] kits.timer2 5
