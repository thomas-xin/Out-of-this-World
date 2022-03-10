tp @s[tag=tornado] ^ ^ ^0.5
execute at @s[tag=tornado] positioned ^ ^ ^3 unless block ~ ~2 ~ air positioned ^ ^ ^-3 run tp @s ~ ~0.5 ~
execute at @s[tag=tornado] positioned ^ ^ ^3 unless block ~ ~3 ~ air positioned ^ ^ ^-3 run tp @s ^ ^ ^-0.2
execute at @s[tag=tornado] positioned ^ ^ ^5 if block ~ ~1.4 ~ air positioned ^ ^ ^-5 run tp @s ~ ~-0.4 ~
execute at @s[tag=tornado] positioned ^ ^ ^5 if block ~ ~1.3 ~ air positioned ^ ^ ^-5 run tp @s ^ ^ ^-0.2
execute at @s[tag=tornado] run function custom:tornado_sub
execute at @s[tag=rotate] run tp @e[tag=t1,distance=..8,sort=nearest,limit=1] ^ ^ ^-3
execute at @s[tag=rotate] run tp @e[tag=t2,distance=..8,sort=nearest,limit=1] ^-2.6 ^ ^1.5
execute at @s[tag=rotate] run tp @e[tag=t3,distance=..8,sort=nearest,limit=1] ^2.6 ^ ^1.5
execute at @s[type=!armor_stand,type=!area_effect_cloud,tag=flying] run particle firework ~ ~ ~ 0 0 0 0.1 8 force
execute at @s[type=!armor_stand,type=!area_effect_cloud,tag=flying] run particle end_rod ~ ~ ~ 0 0 0 0.1 4 force
execute at @s[tag=timed] as @e[type=falling_block,distance=..8] at @s run tp @s ~ ~0.3 ~
execute at @s[tag=flying] unless entity @e[tag=timed,distance=..28] run tag @s remove flying
execute at @s[tag=flying] run playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 1 0.1
execute at @s[tag=flying] run fill ~-.6 ~ ~-.6 ~.6 ~8 ~.6 air
tag @s[tag=flying] add falling
execute at @s[tag=rotate] positioned ~ ~-3 ~ as @e[type=falling_block,tag=scatter,distance=..12] run data merge entity @s {Motion:[0.0,1.5,0.0]}
execute at @s[tag=rotate] run function custom:tornado_heavy
execute at @s[tag=rotate] run fill ~-6. ~-6. ~-6. ~6. ~16 ~6. dirt replace dirt_path
execute at @s[tag=rotate] run fill ~-4.5 ~-5 ~-4.5 ~4.5 ~14 ~4.5 dirt_path replace grass_block
execute at @s[type=armor_stand,tag=timed] at @s unless entity @e[tag=timed,type=area_effect_cloud,distance=..8,limit=1] run kill @s
execute at @s[tag=timed] run function custom:tornado_light
kill @s[tag=flyto]
execute at @s[tag=column] run summon armor_stand ^ ^1 ^1 {Tags:["flyto"],Invulnerable:1b,Invisible:1b}