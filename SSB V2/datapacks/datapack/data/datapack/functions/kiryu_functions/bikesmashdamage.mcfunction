scoreboard players add @p[tag=Kiryu,scores={Timer2=..9}] Timer2 1
particle minecraft:explosion_emitter ~ ~1 ~
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 3 1 1
function datapack:damage1
effect give @s weakness 2 0 true
effect give @s slowness 2 1 true
kill @e[type=armor_stand,tag=KiryuBike]