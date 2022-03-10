execute as @s[tag=hex_spiral] at @s run tp @s ~ ~0.12 ~ ~9 ~
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.000 1.000 1.000 1 0.749 0.498 1.000 ^ ^ ^0.707106 0 0 0 0 0 force
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.749 0.498 1.000 1 0.000 1.000 1.000 ^ ^ ^-0.707106 0 0 0 0 0 force
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.749 0.498 1.000 1 0.000 1.000 1.000 ^0.649637 ^ ^0.3535534 0 0 0 0 0 force
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.749 0.498 1.000 1 0.000 1.000 1.000 ^-0.649637 ^ ^0.3535534 0 0 0 0 0 force
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.000 1.000 1.000 1 0.749 0.498 1.000 ^0.649637 ^ ^-0.3535534 0 0 0 0 0 force
execute at @s[tag=hex_spiral] run particle dust_color_transition 0.000 1.000 1.000 1 0.749 0.498 1.000 ^-0.649637 ^ ^-0.3535534 0 0 0 0 0 force


execute if entity @s[tag=smudge_tracker] as @e[tag=smudge_boss] store result score @s compare_id run scoreboard players get @s smudge_id

execute if entity @s[tag=smudge_tracker] if entity @s[scores={smudge_id=0}] run say >incorrect ID

execute if entity @s[tag=smudge_tracker] run scoreboard players operation @e[tag=smudge_boss] compare_id -= @s smudge_id

execute if entity @s[tag=smudge_tracker] at @e[tag=smudge_boss,scores={compare_id=0},limit=1] run tp ~ ~ ~
execute if entity @s[tag=smudge_tracker] unless entity @e[tag=smudge_boss,scores={compare_id=0},limit=1] run function custom:smudge_loot


execute if entity @s[tag=ice_shockwave] run scoreboard players add @s var0 1
execute at @s[tag=ice_shockwave,scores={var0=..36}] run function custom:ice_shockwave