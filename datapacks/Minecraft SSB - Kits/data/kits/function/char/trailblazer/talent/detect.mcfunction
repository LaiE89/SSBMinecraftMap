# Detects Which Talent is Used
execute if score @s[tag=!TrailblazerBladeAnimation] kits.timer matches 4.. run function kits:char/trailblazer/talent/blade/use
execute if score @s[tag=!TrailblazerJingliuAnimation] kits.timer2 matches 2.. run function kits:char/trailblazer/talent/jingliu/use
execute if score @s[tag=!TrailblazerLuochaAnimation] kits.timer3 matches 2.. run function kits:char/trailblazer/talent/luocha/use
execute if score @s[tag=!TrailblazerLuochaAnimation] kits.timer4 matches 2.. if score @s kits.timer5 matches ..10 run function kits:char/trailblazer/talent/luocha/use2
