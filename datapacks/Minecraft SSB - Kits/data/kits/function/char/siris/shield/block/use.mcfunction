## When Block is Being Used
# When right-click is held or released
execute if score @s[predicate=kits:items/siris/vile_shield] kits.criterion.COSon matches 1.. run function kits:char/siris/shield/block/hold
execute if score @s kits.criterion.COSoff matches 1.. run function kits:char/siris/shield/block/release

# Makes right-click 20 hertz
scoreboard players remove @s[scores={kits.timer2=1..}] kits.timer2 1
scoreboard players set @s[scores={kits.criterion.COS=1}] kits.timer2 5

# Detects when right-click is held or released
scoreboard players add @s[scores={kits.timer2=0}] kits.criterion.COSoff 1
scoreboard players add @s[scores={kits.timer2=1..}] kits.criterion.COSon 1
scoreboard players reset @s[scores={kits.timer2=1..}] kits.criterion.COSoff
scoreboard players reset @s[scores={kits.criterion.COSoff=2..}] kits.criterion.COSon
scoreboard players reset @s[scores={kits.criterion.COSoff=2..}] kits.criterion.COSoff
