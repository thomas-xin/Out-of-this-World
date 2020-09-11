scoreboard players add @s var0 1
execute if entity @s[scores={var0=1}] run function custom:break_frame_1
execute if entity @s[scores={var0=4}] run function custom:break_frame_2
execute if entity @s[scores={var0=7}] run function custom:break_frame_3
kill @s[scores={var0=7..}]