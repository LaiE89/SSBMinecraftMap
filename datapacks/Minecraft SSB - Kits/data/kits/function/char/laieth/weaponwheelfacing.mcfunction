execute facing entity @e[type=item_display,tag=LaiethSword,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.16] run function kits:char/laieth/sword
execute facing entity @e[type=item_display,tag=LaiethSword,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.16] run data modify entity @e[type=item_display,tag=LaiethSword,limit=1] CustomNameVisible set value 0b

execute facing entity @e[type=item_display,tag=LaiethCards,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.16] run function kits:char/laieth/cards
execute facing entity @e[type=item_display,tag=LaiethCards,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.16] run data modify entity @e[type=item_display,tag=LaiethCards,limit=1] CustomNameVisible set value 0b

execute facing entity @e[type=item_display,tag=LaiethPossess,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.16] run function kits:char/laieth/possession
execute facing entity @e[type=item_display,tag=LaiethPossess,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.16] run data modify entity @e[type=item_display,tag=LaiethPossess,limit=1] CustomNameVisible set value 0b

execute facing entity @e[type=item_display,tag=LaiethTeleport,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.16] run function kits:char/laieth/teleport
execute facing entity @e[type=item_display,tag=LaiethTeleport,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.16] run data modify entity @e[type=item_display,tag=LaiethTeleport,limit=1] CustomNameVisible set value 0b

execute facing entity @e[type=item_display,tag=LaiethRitual,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.16] run function kits:char/laieth/ritual
execute facing entity @e[type=item_display,tag=LaiethRitual,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.16] run data modify entity @e[type=item_display,tag=LaiethRitual,limit=1] CustomNameVisible set value 0b
