data merge entity @e[tag=wither_sprite,sort=nearest,limit=1] {Health:99f}
execute unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 3 force
execute unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 0.8
kill @e[tag=nothrown,distance=..2]
tag @s add break_obsidian
function custom:tiny_explode
particle large_smoke ~ ~ ~ 0.6 0 0.6 0.01 6 force
particle squid_ink ~ ~ ~ 0.4 0 0.4 0.01 12 force
effect give @e[distance=..2.5,type=!item,type=!area_effect_cloud] instant_damage 1 0