# Jingliu's Talent Frame 6
data merge entity @s {Pose:{Head:[0f,340f,0f],LeftArm:[45f,0f,30f],RightArm:[95f,225f,210f],LeftLeg:[350f,0f,5f],RightLeg:[10f,0f,355f]}}
item replace entity @s armor.head with player_head[unbreakable={},profile={id:[I;1095077473,-499233623,-1163785213,120959887],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTg0Y2U3MDMyMTEwMmMzN2NkYmYwMzg4MWFlMzU3OTBjNmRkZDc2NzcwMTg4ODg2ZWMyMzc2ODY3MmE2YWQzMyJ9fX0="}]}] 1
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.5 5 force
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 0.25 0 0.25
tp @s ~ ~ ~ ~5 ~
