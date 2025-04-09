## When Explosive Canister is Used
# Places explosive canister
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["IsaacObject","IsaacObjectExplosive"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:player_head,components:{"minecraft:custom_name":{text:"Explosive Canister",color:"gold",underlined:true,bold:true,italic:false},,,"minecraft:profile":{id:[I;-1900189767,-1083292887,-1712514391,777875130],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY4ZDNjZmVmMWVjMWM5MzQ1OGI4MjdjOTIzNzliZmJkMmEyNzM2ZDc3YzY1ZDEwNTllOTcyZjNjODQxZWQ2NCJ9fX0="}]}}}}}

# Particles
particle smoke ~ ~0.5 ~ 0 0 0 0.15 10 force

# Sound
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 1

# Reset scores
scoreboard players remove @s kits.timer3 1
scoreboard players set @s kits.ability4CD 0
