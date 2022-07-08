execute at @e[tag=wither_main,sort=nearest,limit=1] run tp @s ~ ~8.6 ~ ~ 30
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=orbit,sort=nearest,limit=1]

execute at @e[tag=s1,limit=1] run tag @a[gamemode=!creative,gamemode=!spectator,distance=16..255] add victim
execute at @e[tag=s1,limit=1] unless entity @e[tag=victim] run tag @e[tag=found,distance=24..,sort=nearest,limit=1] add victim
execute at @e[tag=s1,limit=1] unless entity @e[tag=victim] run tag @e[tag=priority,distance=8..303,sort=nearest,limit=1] add victim
execute at @e[tag=s2,limit=1] run tag @a[gamemode=!creative,gamemode=!spectator,distance=24..255] add victim
execute at @e[tag=s2,limit=1] unless entity @e[tag=victim] run tag @e[tag=found,distance=24..,sort=nearest,limit=1] add victim
execute at @e[tag=s2,limit=1] unless entity @e[tag=victim] run tag @e[tag=priority,distance=12..303,sort=nearest,limit=1] add victim

execute at @e[tag=victim,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
tag @e[tag=victim] remove victim
execute as @e[tag=s1,limit=1] at @s run summon area_effect_cloud ~ ~ ~ {Duration:150,Tags:["summontimer"]}
execute as @e[tag=s2,limit=1] at @s run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["summontimer"]}
execute as @e[tag=s1,limit=1] at @s run summon fireball ~ ~ ~ {Glowing:1b,ExplosionPower:9,Motion:[0.,0.,0.],power:[0.,-.02,0.],Tags:["projectile","fire_trail","despawn"]}
execute as @e[tag=s2,limit=1] at @s run summon dragon_fireball ~ ~ ~ {Glowing:1b,Motion:[0.,0.,0.],power:[0.,-.02,0.],Tags:["projectile","fire_trail","despawn"]}
execute at @s run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ ~-4
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s[distance=24..] run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ ~-6
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s[distance=48..] run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ ~-8
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s[distance=72..] run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ ~-10
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s[distance=96..] run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ ~-12
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s[distance=127..] run tp @e[tag=projectile,distance=..4] ~ ~ ~ ~ -45
execute at @s run tp @s ~ ~ ~ facing entity f266414c-caac-11eb-b8bc-0242ac130003
execute as @e[tag=projectile,distance=..4] at @s run function custom:projectile_trail
execute as @e[tag=projectile,distance=..4] at @s run function custom:projectile_trail
kill @e[tag=showcrystal,distance=..8,limit=2]
tp @s 0 0 0
execute at @s run tp @s ^ ^ ^127
execute at @s run execute store result entity @e[tag=projectile,limit=1] Motion[0] double 0.05 run data get entity @s Pos[0]
execute at @s run execute store result entity @e[tag=projectile,limit=1] Motion[1] double 0.05 run data get entity @s Pos[1]
execute at @s run execute store result entity @e[tag=projectile,limit=1] Motion[2] double 0.05 run data get entity @s Pos[2]
kill @s
execute at @e[tag=projectile] run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 7 0.6667
execute at @e[tag=projectile] run playsound minecraft:item.trident.riptide_3 neutral @a ~ ~ ~ 7 0.5
tag @e[tag=projectile] remove projectile
kill f266414c-caac-11eb-b8bc-0242ac130003