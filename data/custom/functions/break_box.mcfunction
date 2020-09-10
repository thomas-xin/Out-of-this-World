scoreboard players add @s var0 1
execute if entity @s[scores={var0=1}] run function custom:break_frame_1
execute if entity @s[scores={var0=2}] run function custom:break_frame_2
execute if entity @s[scores={var0=3}] run function custom:break_frame_3
kill @s[scores={var0=4..}]