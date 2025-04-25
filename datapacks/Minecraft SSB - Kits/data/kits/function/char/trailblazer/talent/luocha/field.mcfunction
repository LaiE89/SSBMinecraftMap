# Execute at Healing Field
execute if entity @e[nbt={HurtTime:10s},distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] run effect give @p[tag=Trailblazer] instant_health 1 0 true
execute rotated ~ 0 positioned ^-0.1875 ^ ^0.1875 run function kits:char/trailblazer/vfx/particles/luocha/field
tp @s ~ ~ ~ ~2 ~
