scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["sansblaster"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:{\"text\":\"Gaster Blaster\"}},SkullOwner:{Id:[I;-376041638,761547668,-1266648211,1336411906],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjFkMTA0NDAwMDU4M2JkZmFiM2UxZjQwYmE0ZDg4M2I1ZDNkZWU0ZWM5NzAxOTlmZWZhZjg5ZTRkMGRlODM4OCJ9fX0="}]}}}}]}
execute as @s[scores={kits.raycastTick=21}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["sansblaster"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:{\"text\":\"Gaster Blaster\"}},SkullOwner:{Id:[I;-376041638,761547668,-1266648211,1336411906],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjFkMTA0NDAwMDU4M2JkZmFiM2UxZjQwYmE0ZDg4M2I1ZDNkZWU0ZWM5NzAxOTlmZWZhZjg5ZTRkMGRlODM4OCJ9fX0="}]}}}}]}
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players remove @s kits.ability3CD 1
execute as @s[scores={kits.raycastTick=21}] positioned ^ ^ ^ run scoreboard players remove @s kits.ability3CD 1

execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^0.5 run function kits:sans/sanspassive5
