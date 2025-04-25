## Prevents players from dropping items
execute on origin run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @s PickupDelay set value 0s
execute on origin run tp @e[type=item,limit=1,sort=nearest] @s