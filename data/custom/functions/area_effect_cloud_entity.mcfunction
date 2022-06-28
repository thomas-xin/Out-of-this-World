execute at @s[tag=hex_spiral] run function custom:hex_spiral

execute if entity @s[tag=smudge_tracker] run function custom:smudge_tracker

execute if entity @s[tag=ice_shockwave] run scoreboard players add @s var0 1
execute at @s[tag=ice_shockwave,scores={var0=..36}] run function custom:ice_shockwave