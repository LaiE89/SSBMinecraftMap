title @s actionbar ["",{"text":"MP: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/100","color":"white"}]

# Highlighting Weapons
execute at @s anchored eyes run function kits:noctis/weapons/facing

# Weapons
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] Shift
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff

scoreboard players add @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/noctis/royal_arms] kits.criterion.shiftOn 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn

execute as @s[scores={kits.criterion.shiftOn=1},tag=!NoctisGreatsword] at @s rotated ~ 0 unless entity @e[type=armor_stand,tag=NoctisThrownWeapon] run function kits:noctis/weapons/summon
execute if entity @s[scores={kits.criterion.shiftOn=1..}] as @e[type=area_effect_cloud,tag=NoctisWeaponCenter] at @s run function kits:noctis/weapons/center
execute if entity @s[scores={kits.criterion.shiftOff=3..}] run function kits:noctis/weapons/end

scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

# MP
scoreboard players add @s[scores={kits.ability1CD=..19}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1

execute if score @s kits.ability2CD matches 100 if score @s kits.timer matches ..99 run scoreboard players add @s kits.timer 1

# Warp
execute if entity @s[scores={kits.criterion.COS=1..}] if entity @s[scores={kits.ability1CD=20..},predicate=kits:items/noctis/royal_arms,tag=!NoctisThrow,tag=!NoctisGreatsword] run function kits:noctis/weapon1cos
execute if entity @s[scores={kits.criterion.COS=1..}] if entity @s[scores={kits.ability1CD=5..},predicate=kits:items/noctis/royal_arms,tag=NoctisThrow,tag=!NoctisGreatsword] run function kits:noctis/warpcommand
execute as @e[type=armor_stand,tag=NoctisThrownWeapon,tag=NoctisIsThrown] at @s run function kits:noctis/throwweapon
execute as @e[type=area_effect_cloud,tag=NoctisPoint] at @s run function kits:noctis/pointparticles

# Others
execute if entity @e[type=area_effect_cloud,tag=NoctisAfterimage] as @e[type=area_effect_cloud,tag=NoctisAfterimage] at @s run function kits:noctis/warpstrikes/oracleimage
execute if entity @e[scores={kits.specific.noctisBleed=1..}] as @e[scores={kits.specific.noctisBleed=1..}] at @s run function kits:noctis/warpstrikes/tallbleed

execute as @s[scores={kits.criterion.attack=1..}] at @s positioned ~ ~1.5 ~ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.criterion.attack=1..}] at @s positioned ~ ~1.5 ~ run function kits:noctis/attackraycast
