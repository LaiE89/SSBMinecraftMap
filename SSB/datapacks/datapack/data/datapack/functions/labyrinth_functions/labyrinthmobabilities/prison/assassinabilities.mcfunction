tp @s[scores={Timer=180}] @p[distance=..10]
execute as @s[scores={Timer=180}] run playsound minecraft:entity.player.attack.weak neutral @a[distance=..11] ~ ~ ~ 10 0 1
execute as @s[scores={Timer=200..}] run function datapack:labyrinth_functions/labyrinthmobabilities/prison/assassinsmokebomb
item replace entity @s[scores={Timer=60}] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Assassin\"}"},SkullOwner:{Id:[I;1505022524,280969323,-1640710030,650101171],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJhMWQ1Mjk5N2UwYzIxOTRhNmE5YjU4NzNkZDUzNjNmNTk5OWFhZjIwZWUzOTFjMWM1ZmM4M2JkM2EwMGNiMSJ9fX0="}]}}}
item replace entity @s[scores={Timer=60}] armor.chest with minecraft:leather_chestplate{Unbreakable:1,display:{color:4673362}}
item replace entity @s[scores={Timer=60}] armor.legs with minecraft:netherite_leggings{Unbreakable:1}
item replace entity @s[scores={Timer=60}] armor.feet with minecraft:netherite_boots{Unbreakable:1}
item replace entity @s[scores={Timer=60}] weapon.mainhand with iron_sword
item replace entity @s[scores={Timer=60}] weapon.offhand iron_sword
scoreboard players reset @s[scores={Timer=200..}] Timer

