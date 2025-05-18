# Execute at Enemies Hit by Slices
damage @s 0.25 bypass:player_attack_no_impact by @e[type=area_effect_cloud,tag=ItadoriCleaveLocation,limit=1,sort=nearest] from @p[tag=Sukuna]
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 1 force
scoreboard players set @p[tag=Sukuna] kits.timer 0
