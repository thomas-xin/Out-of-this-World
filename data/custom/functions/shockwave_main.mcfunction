tp @s ^ ^ ^2
tp @s[tag=fast] ^ ^ ^3.5
scoreboard players add @s e_check 1
execute if block ^ ^-3 ^4 water run tag @s add tsunami_w
execute if block ^ ^-3 ^4 lava run tag @s add tsunami_l
execute at @e[type=end_crystal,distance=..5] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:1}
execute at @s[tag=wave1,scores={e_check=..16}] run function custom:wave1
execute at @s[tag=wave1,scores={e_check=17..}] run function custom:wave1_
execute at @s[tag=wave2,scores={e_check=..20}] run function custom:wave2
execute at @s[tag=wave2,scores={e_check=21..}] run function custom:wave2_
execute at @s[tag=wave3,scores={e_check=..24}] run function custom:wave3
execute at @s[tag=wave3,scores={e_check=25..}] run function custom:wave3_
execute at @s[tag=wave4,scores={e_check=..28}] run function custom:wave4
execute at @s[tag=wave4,scores={e_check=29..}] run function custom:wave4_
execute at @s[tag=wave5,scores={e_check=..32}] run function custom:wave5
execute at @s[tag=wave5,scores={e_check=33..}] run function custom:wave5_
execute at @s[tag=wave6,scores={e_check=..40}] run function custom:wave6
execute at @s[tag=wave6,scores={e_check=41..}] run function custom:wave6_
tag @s remove thru2
execute at @s run function custom:risefall