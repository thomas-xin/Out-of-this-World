execute at @s[tag=shockwave_1] run function custom:shockwave_1
execute at @s[tag=shockwave_2] run function custom:shockwave_2
execute at @s[tag=shockwave_3] run function custom:shockwave_3
execute at @s[tag=shockwave_4] run function custom:shockwave_4
execute at @s[tag=shockwave_5] run function custom:shockwave_5
execute at @s[tag=shockwave_6] run function custom:shockwave_6
execute as @s[tag=angle] at @s run tp @s ~ ~ ~ ~13 ~

scoreboard players add @s[tag=sinking] var0 1
scoreboard players add @s[tag=smudge_hands] var0 1
tp @s[tag=sinking] ~ ~-.05 ~
kill @s[scores={var0=30..}]