# Prayer of Abyss Flower Healing
effect clear @s
effect give @s instant_health 1 1 true
execute rotated ~ 0 positioned ^0.0398936 ^1.0398936 ^ run function kits:char/trailblazer/vfx/particles/luocha/skill
playsound entity.player.levelup neutral @a[distance=..20] ~ ~ ~ 0.25 2 0.25
