tag @s remove tnt_check
kill @e[type=tnt,tag=!vanilla,distance=..5,sort=nearest,limit=64]
kill @e[tag=tnt_check,distance=..5,sort=nearest,limit=63]
execute as @s[scores={e_strength=1}] run function custom:explode_1
execute as @s[scores={e_strength=3}] run function custom:explode_1
execute as @s[scores={e_strength=5}] run function custom:explode_1
execute as @s[scores={e_strength=7}] run function custom:explode_1
execute as @s[scores={e_strength=9}] run function custom:explode_1
execute as @s[scores={e_strength=11}] run function custom:explode_1
execute as @s[scores={e_strength=13}] run function custom:explode_1
execute as @s[scores={e_strength=15}] run function custom:explode_1
execute as @s[scores={e_strength=17}] run function custom:explode_1
execute as @s[scores={e_strength=19}] run function custom:explode_1
execute as @s[scores={e_strength=21}] run function custom:explode_1
execute as @s[scores={e_strength=23}] run function custom:explode_1
execute as @s[scores={e_strength=25}] run function custom:explode_1
execute as @s[scores={e_strength=27}] run function custom:explode_1
execute as @s[scores={e_strength=29}] run function custom:explode_1
execute as @s[scores={e_strength=31}] run function custom:explode_1
execute as @s[scores={e_strength=33..}] run function custom:explode_1
execute as @s[scores={e_strength=2..3}] run function custom:explode_2
execute as @s[scores={e_strength=6..7}] run function custom:explode_2
execute as @s[scores={e_strength=10..11}] run function custom:explode_2
execute as @s[scores={e_strength=14..15}] run function custom:explode_2
execute as @s[scores={e_strength=18..19}] run function custom:explode_2
execute as @s[scores={e_strength=22..23}] run function custom:explode_2
execute as @s[scores={e_strength=26..27}] run function custom:explode_2
execute as @s[scores={e_strength=30..31}] run function custom:explode_2
execute as @s[scores={e_strength=34..}] run function custom:explode_2
execute as @s[scores={e_strength=4..7}] run function custom:explode_3
execute as @s[scores={e_strength=12..15}] run function custom:explode_3
execute as @s[scores={e_strength=20..23}] run function custom:explode_3
execute as @s[scores={e_strength=28..31}] run function custom:explode_3
execute as @s[scores={e_strength=36..}] run function custom:explode_3
execute as @s[scores={e_strength=8..15}] run function custom:explode_4
execute as @s[scores={e_strength=24..31}] run function custom:explode_4
execute as @s[scores={e_strength=40..}] run function custom:explode_4
execute as @s[scores={e_strength=16..31}] run function custom:explode_5
execute as @s[scores={e_strength=48..}] run function custom:explode_5
execute as @s[scores={e_strength=32..}] run function custom:explode_6
kill @s