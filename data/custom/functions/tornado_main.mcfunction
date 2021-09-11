execute as @e[tag=tornado] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=tornado] at @s positioned ^ ^ ^3 unless block ~ ~2 ~ air positioned ^ ^ ^-3 run tp @s ~ ~0.5 ~
execute as @e[tag=tornado] at @s positioned ^ ^ ^3 unless block ~ ~3 ~ air positioned ^ ^ ^-3 run tp @s ^ ^ ^-0.2
execute as @e[tag=tornado] at @s positioned ^ ^ ^5 if block ~ ~1.4 ~ air positioned ^ ^ ^-5 run tp @s ~ ~-0.4 ~
execute as @e[tag=tornado] at @s positioned ^ ^ ^5 if block ~ ~1.3 ~ air positioned ^ ^ ^-5 run tp @s ^ ^ ^-0.2
execute as @e[tag=tornado] at @s run function custom:tornado_sub
execute at @e[tag=rotate] run tp @e[tag=t1,distance=..8,sort=nearest,limit=1] ^ ^ ^-3
execute at @e[tag=rotate] run tp @e[tag=t2,distance=..8,sort=nearest,limit=1] ^-2.6 ^ ^1.5
execute at @e[tag=rotate] run tp @e[tag=t3,distance=..8,sort=nearest,limit=1] ^2.6 ^ ^1.5
execute at @e[type=!armor_stand,type=!area_effect_cloud,tag=flying] run particle firework ~ ~ ~ 0 0 0 0.1 8 force
execute at @e[type=!armor_stand,type=!area_effect_cloud,tag=flying] run particle end_rod ~ ~ ~ 0 0 0 0.1 4 force
execute at @e[tag=timed] as @e[type=falling_block,distance=..8] at @s run tp @s ~ ~0.3 ~
execute as @e[tag=flying] at @s unless entity @e[tag=timed,distance=..28] run tag @s remove flying
tag @a[tag=immune] remove flying
execute at @e[tag=flying] run playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 1 0.1
execute at @e[tag=flying] run fill ~-.6 ~ ~-.6 ~.6 ~8 ~.6 air
tag @e[tag=flying] add falling
execute at @e[tag=rotate] positioned ~ ~-3 ~ as @e[type=falling_block,tag=scatter,distance=..12] run data merge entity @s {Motion:[0.0,1.5,0.0]}
execute at @e[tag=rotate] run function custom:tornado_heavy
execute at @e[tag=rotate] run fill ~-6. ~-6. ~-6. ~6. ~16 ~6. dirt replace dirt_path
execute at @e[tag=rotate] run fill ~-4.5 ~-5 ~-4.5 ~4.5 ~14 ~4.5 dirt_path replace grass_block
execute as @e[type=armor_stand,tag=timed] at @s unless entity @e[tag=timed,type=area_effect_cloud,distance=..8,limit=1] run kill @s
execute as @e[tag=timed] at @s run function custom:tornado_light
kill @e[tag=flyto]
execute at @e[tag=column] run summon armor_stand ^ ^1 ^1 {Tags:["flyto"],Invulnerable:1b,Invisible:1b}
execute at @e[tag=timed] at @e[tag=!flying,tag=!none,type=!armor_stand,type=!area_effect_cloud,distance=..12] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..14,limit=2] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..16,limit=2] run particle cloud ~ ~ ~ 0 0 0 0.02 2 force
execute at @e[tag=suck] as @e[distance=..1,tag=!flying,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 5
execute at @e[tag=suck] as @e[distance=..1,tag=!flying,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^1.5 ^0.38 ^0.12
kill @e[tag=suck]
execute at @e[tag=timed] positioned ~ ~2 ~ at @e[tag=!falling,tag=!none,type=!armor_stand,type=!area_effect_cloud,distance=11.5..14] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..20,limit=2] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..20,limit=2] run particle poof ~ ~ ~ 0 0 0 0.01 1 force
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 3
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^0.95 ^0.23 ^0.6
kill @e[tag=suck]
execute at @e[tag=timed] positioned ~ ~4 ~ at @e[tag=!falling,tag=!none,type=!armor_stand,type=!area_effect_cloud,distance=13.5..18] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..26,limit=3] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..26,limit=3] run particle end_rod ~ ~ ~ 0 0 0 0.01 1 force
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 2
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^0.45 ^0.47 ^0.5
kill @e[tag=suck]
execute at @e[tag=timed] positioned ~ ~8 ~ at @e[tag=!falling,tag=!none,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,distance=16..27] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..32,limit=4] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..32,limit=4] run particle firework ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 0
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^ ^0.01 ^0.07
kill @e[tag=suck]
execute at @e[tag=rotate] run summon armor_stand ^ ^ ^4 {Invisible:1b,Tags:["lightning"]}
execute at @e[tag=rotate] run summon armor_stand ^-13.856 ^127 ^-8 {Invisible:1b,Tags:["lightning"]}
execute at @e[tag=rotate] run summon armor_stand ^7.794 ^ ^-4.5 {Invisible:1b,Tags:["lightning"]}
execute as @e[tag=tornado] run summon zombie 0 0 0
execute positioned 0 0 0 as @e[type=zombie,distance=..2] run tag @s add random
execute at @e[tag=random,nbt={IsBaby:1b}] at @e[tag=lightning,sort=random,limit=1] run summon lightning_bolt
execute at @e[tag=random,nbt={CanBreakDoors:1b}] at @e[tag=lightning,sort=random,limit=1] positioned ~ ~2 ~ run function custom:tornado_heavy
execute at @e[tag=random,nbt={CanPickUpLoot:1b}] at @e[tag=lightning,sort=random,limit=1] positioned ~ ~2 ~ run function custom:tornado_light
kill @e[tag=random]
kill @e[tag=lightning]