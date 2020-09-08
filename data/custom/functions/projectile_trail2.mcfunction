execute at @s[type=fireball] run particle flame ^ ^ ^0 0.5 0.5 0.5 0.01 9 force
execute at @s[type=fireball] run particle flame ^ ^ ^2 0.5 0.5 0.5 0.01 9 force
execute at @s[type=fireball] run particle flame ^ ^ ^4 0.5 0.5 0.5 0.01 9 force
execute at @s[type=dragon_fireball] run particle end_rod ^ ^ ^0 0.5 0.5 0.5 0.01 9 force
execute at @s[type=dragon_fireball] run particle end_rod ^ ^ ^2 0.5 0.5 0.5 0.01 9 force
execute at @s[type=dragon_fireball] run particle end_rod ^ ^ ^4 0.5 0.5 0.5 0.01 9 force
execute at @s positioned ^ ^ ^3 at @e[tag=priority,distance=..8] run summon tnt ~ ~-.333 ~
execute at @s positioned ^ ^ ^3 at @a[distance=..8] run summon tnt ~ ~-.333 ~
execute at @s positioned ^ ^ ^3 run kill @e[tag=fireball_check,distance=..17,sort=nearest,limit=1]
execute at @s[type=fireball] if entity @e[type=dragon_fireball,tag=fire_trail,distance=..5,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["nuke"]}