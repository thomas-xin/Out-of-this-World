tag @s add break_stone
execute at @s[type=tnt_minecart,tag=crashed] run function custom:tiny_explode
execute at @s[type=tnt_minecart,tag=crashed] run summon end_crystal
execute at @s[tag=crashed] run summon tnt ~ ~ ~ {Tags:["vanilla"]}
execute at @s[tag=crashed] run effect give @e[distance=..2,tag=living] instant_damage 1 2
execute at @s[tag=crashed] run effect give @e[distance=..2,tag=undead] instant_health 1 2
kill @s[tag=crashed]