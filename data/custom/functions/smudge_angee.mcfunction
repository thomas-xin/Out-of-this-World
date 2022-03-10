execute if entity @s[scores={var2=60..}] run bossbar set smudge_boss value 60
execute if entity @s[scores={var2=60}] run bossbar set smudge_boss value 60
execute if entity @s[scores={var2=59}] run bossbar set smudge_boss value 59
execute if entity @s[scores={var2=58}] run bossbar set smudge_boss value 58
execute if entity @s[scores={var2=57}] run bossbar set smudge_boss value 57
execute if entity @s[scores={var2=56}] run bossbar set smudge_boss value 56
execute if entity @s[scores={var2=55}] run bossbar set smudge_boss value 55
execute if entity @s[scores={var2=54}] run bossbar set smudge_boss value 54
execute if entity @s[scores={var2=53}] run bossbar set smudge_boss value 53
execute if entity @s[scores={var2=52}] run bossbar set smudge_boss value 52
execute if entity @s[scores={var2=51}] run bossbar set smudge_boss value 51
execute if entity @s[scores={var2=50}] run bossbar set smudge_boss value 50
execute if entity @s[scores={var2=49}] run bossbar set smudge_boss value 49
execute if entity @s[scores={var2=48}] run bossbar set smudge_boss value 48
execute if entity @s[scores={var2=47}] run bossbar set smudge_boss value 47
execute if entity @s[scores={var2=46}] run bossbar set smudge_boss value 46
execute if entity @s[scores={var2=45}] run bossbar set smudge_boss value 45
execute if entity @s[scores={var2=44}] run bossbar set smudge_boss value 44
execute if entity @s[scores={var2=43}] run bossbar set smudge_boss value 43
execute if entity @s[scores={var2=42}] run bossbar set smudge_boss value 42
execute if entity @s[scores={var2=41}] run bossbar set smudge_boss value 41
execute if entity @s[scores={var2=40}] run bossbar set smudge_boss value 40
execute if entity @s[scores={var2=39}] run bossbar set smudge_boss value 39
execute if entity @s[scores={var2=38}] run bossbar set smudge_boss value 38
execute if entity @s[scores={var2=37}] run bossbar set smudge_boss value 37
execute if entity @s[scores={var2=36}] run bossbar set smudge_boss value 36
execute if entity @s[scores={var2=35}] run bossbar set smudge_boss value 35
execute if entity @s[scores={var2=34}] run bossbar set smudge_boss value 34
execute if entity @s[scores={var2=33}] run bossbar set smudge_boss value 33
execute if entity @s[scores={var2=32}] run bossbar set smudge_boss value 32
execute if entity @s[scores={var2=31}] run bossbar set smudge_boss value 31
execute if entity @s[scores={var2=30}] run bossbar set smudge_boss value 30
execute if entity @s[scores={var2=29}] run bossbar set smudge_boss value 29
execute if entity @s[scores={var2=28}] run bossbar set smudge_boss value 28
execute if entity @s[scores={var2=27}] run bossbar set smudge_boss value 27
execute if entity @s[scores={var2=26}] run bossbar set smudge_boss value 26
execute if entity @s[scores={var2=25}] run bossbar set smudge_boss value 25
execute if entity @s[scores={var2=24}] run bossbar set smudge_boss value 24
execute if entity @s[scores={var2=23}] run bossbar set smudge_boss value 23
execute if entity @s[scores={var2=22}] run bossbar set smudge_boss value 22
execute if entity @s[scores={var2=21}] run bossbar set smudge_boss value 21
execute if entity @s[scores={var2=20}] run bossbar set smudge_boss value 20
execute if entity @s[scores={var2=19}] run bossbar set smudge_boss value 19
execute if entity @s[scores={var2=18}] run bossbar set smudge_boss value 18
execute if entity @s[scores={var2=17}] run bossbar set smudge_boss value 17
execute if entity @s[scores={var2=16}] run bossbar set smudge_boss value 16
execute if entity @s[scores={var2=15}] run bossbar set smudge_boss value 15
execute if entity @s[scores={var2=14}] run bossbar set smudge_boss value 14
execute if entity @s[scores={var2=13}] run bossbar set smudge_boss value 13
execute if entity @s[scores={var2=12}] run bossbar set smudge_boss value 12
execute if entity @s[scores={var2=11}] run bossbar set smudge_boss value 11
execute if entity @s[scores={var2=10}] run bossbar set smudge_boss value 10
execute if entity @s[scores={var2=9}] run bossbar set smudge_boss value 9
execute if entity @s[scores={var2=8}] run bossbar set smudge_boss value 8
execute if entity @s[scores={var2=7}] run bossbar set smudge_boss value 7
execute if entity @s[scores={var2=6}] run bossbar set smudge_boss value 6
execute if entity @s[scores={var2=5}] run bossbar set smudge_boss value 5
execute if entity @s[scores={var2=4}] run bossbar set smudge_boss value 4
execute if entity @s[scores={var2=3}] run bossbar set smudge_boss value 3
execute if entity @s[scores={var2=2}] run bossbar set smudge_boss value 2
execute if entity @s[scores={var2=1}] run bossbar set smudge_boss value 1

bossbar set smudge_boss players @a[distance=..256]
execute unless entity @a[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s[scores={var2=60..}] var3 1
execute if entity @a[distance=..1,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s[scores={var2=60..}] var3 4
scoreboard players reset @s[scores={var2=..59}] var3
data merge entity @s[scores={var3=1200..}] {Glowing:0b}
data merge entity @s[scores={var3=1200..}] {NoGravity:0b}
execute if entity @s[scores={var3=1200..}] run bossbar set smudge_boss players
execute if entity @s[scores={var3=1200..}] at @e[tag=smudge_boss,nbt={Glowing:1b},sort=random,limit=1] run bossbar set smudge_boss players @a[distance=..256]

execute positioned ~ ~0.5 ~ if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-2 ~ air run tp ~ ~-0.59 ~
execute unless block ~ ~-1 ~ air run tp ~ ~0.12 ~
execute unless block ~ ~-2 ~ air run tp ~ ~0.17 ~
tag @a[gamemode=!creative,gamemode=!spectator] add assigned
tag @e[tag=basic] add assigned
tag @e[tag=undead,tag=!smudge_boss] add assigned
execute at @s run tp @s ^0.08 ^ ^0.02 facing entity @e[tag=assigned,distance=..64,sort=nearest,limit=1] eyes
execute at @s[scores={var1=80..100}] run tp @s ^0.2 ^ ^ facing entity @e[tag=assigned,distance=..64,sort=nearest,limit=1] eyes
execute at @s run tp @s ~ ~ ~ facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..80,sort=nearest,limit=1] eyes
execute at @s anchored eyes run function custom:check_solid
execute at @s[tag=!thru] run function custom:check_solid
tp @s[tag=thru] ~ ~0.1 ~
tag @s remove thru
execute store result entity @s Rotation[1] float 100 run data get entity @s Rotation[1]
execute store result score @s compare_id run data get entity @s Rotation[1]
execute store result entity @s Rotation[1] float 0 run data get entity @s Rotation[1]
execute at @s if entity @e[tag=assigned,distance=..5,sort=nearest,limit=1] run tp ^ ^ ^-0.2
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s compare_id
execute at @s[scores={spur_charge=2,var1=..50}] if entity @e[tag=assigned,distance=..7.5,sort=nearest,limit=1] run tp ^ ^ ^-0.6
execute at @s[scores={var1=80..100}] if entity @e[tag=assigned,distance=..9,sort=nearest,limit=1] run tp ^ ^ ^-0.6
execute at @s[scores={var1=80..100}] unless entity @e[tag=assigned,distance=..24,sort=nearest,limit=1] run tp ^ ^ ^0.6
execute at @s[scores={var1=80..100}] run particle end_rod ~ ~ ~ 0.2 0.1 0.2 0.02 8 force
execute at @s[scores={var1=80..90}] run playsound minecraft:entity.tnt.primed hostile @a[distance=..26] ~ ~ ~ 0.8 2
execute at @s anchored eyes run function custom:check_solid
tp @s[tag=thru] ~ ~0.1 ~
tag @s remove thru

execute unless entity @s[scores={spur_charge=1..4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
execute unless entity @s[scores={spur_charge=1..4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}
execute unless entity @s[scores={spur_charge=1..4}] run scoreboard players reset @s var1
execute unless entity @s[scores={spur_charge=1..4}] run scoreboard players set @s spur_charge 1
#execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run scoreboard players add @e[tag=smudge_boss,sort=nearest,limit=1] spur_charge 2
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run scoreboard players add @e[tag=smudge_boss,sort=nearest,limit=1] spur_charge 1
kill @e[tag=random]

scoreboard players add @s var1 1
execute at @s[scores={spur_charge=1,var1=1}] run playsound minecraft:block.amethyst_block.fall hostile @a[distance=..48] ~ ~ ~ 3 1.25
execute at @s[scores={spur_charge=1,var1=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Pose:{LeftArm:[75f,0f,0f],RightArm:[75f,0f,0f]},Tags:["smudge_hands"]}
execute at @s[scores={spur_charge=1,var1=1..29}] positioned ^ ^ ^0.5 run tp @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] ~ ~0.4 ~ ~180 ~
execute at @s[scores={spur_charge=1,var1=4}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {HandItems:[{id:"minecraft:snowball",Count:1b},{id:"minecraft:snowball",Count:1b}]}
execute at @s[scores={spur_charge=1,var1=4}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=1,var1=10}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:0b}
execute at @s[scores={spur_charge=1,var1=15}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=1,var1=19}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:0b}
execute at @s[scores={spur_charge=1,var1=22}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=1,var1=24}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:0b}
execute at @s[scores={spur_charge=1,var1=26}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=1,var1=27}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:0b}
execute at @s[scores={spur_charge=1,var1=28}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=1,var1=29}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] {Glowing:0b}
execute at @s[scores={spur_charge=1,var1=30}] anchored eyes run kill @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1]
execute at @s[scores={spur_charge=1,var1=30}] positioned ^ ^0.5 ^0.5 run function custom:smudge_ice_wave

scoreboard players reset @s[scores={spur_charge=1,var1=120..}] spur_charge

execute at @s[scores={spur_charge=2,var1=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smudge_hands"],Passengers:[{id:"minecraft:dragon_fireball",Tags:["smudge_held_fireball"]}]}
execute at @s[scores={spur_charge=2,var1=1..49}] positioned ^ ^ ^1 run tp @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1] ~ ~1.1 ~ ~180 ~
execute at @s[scores={spur_charge=2,var1=40}] positioned ^ ^ ^0.5 run data merge entity @e[tag=smudge_held_fireball,distance=..4,sort=nearest,limit=1] {Glowing:1b}
execute at @s[scores={spur_charge=2,var1=40}] positioned ^ ^ ^0.5 run playsound minecraft:block.amethyst_block.fall hostile @a[distance=..48] ~ ~ ~ 3 1.25
execute at @s[scores={spur_charge=2,var1=50}] anchored eyes run kill @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1]
execute at @s[scores={spur_charge=2,var1=50}] anchored eyes run kill @e[tag=smudge_held_fireball,distance=..4,sort=nearest,limit=1]
execute at @s[scores={spur_charge=2,var1=50}] positioned ^ ^0.5 ^0.5 run summon area_effect_cloud ~ ~ ~ {Duration:1,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run playsound minecraft:item.trident.throw hostile @a[distance=..28] ~ ~ ~ 1.5 0.7
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon dragon_fireball ~ ~.5 ~ {Glowing:1b,Tags:["smudge_ice_ball"]}
execute at @s run tp f266414c-caac-11eb-b8bc-0242ac130003 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp ^ ^ ^64
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=64..,sort=nearest,limit=1] at @s run tp ~ 1 ~
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=32..64,sort=nearest,limit=1] at @s run tp ~ 2 ~
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=16..32,sort=nearest,limit=1] at @s run tp ~ 4 ~
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=8..16,sort=nearest,limit=1] at @s run tp ~ 8 ~
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=4..8,sort=nearest,limit=1] at @s run tp ~ 16 ~
execute at @s as f266414c-caac-11eb-b8bc-0242ac130003 if entity @e[tag=assigned,distance=..4,sort=nearest,limit=1] at @s run tp ~ 32 ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 store result entity @e[tag=smudge_ice_ball,sort=nearest,limit=1] power[0] double 0.001 run data get entity @s Pos[0]
execute as f266414c-caac-11eb-b8bc-0242ac130003 store result entity @e[tag=smudge_ice_ball,sort=nearest,limit=1] power[1] double -0.001 run data get entity @s Pos[1]
execute as f266414c-caac-11eb-b8bc-0242ac130003 store result entity @e[tag=smudge_ice_ball,sort=nearest,limit=1] power[2] double 0.001 run data get entity @s Pos[2]
kill f266414c-caac-11eb-b8bc-0242ac130003

scoreboard players reset @s[scores={spur_charge=2,var1=200..}] spur_charge

execute at @s[scores={spur_charge=1..2,var1=2..49,var3=1200..}] anchored eyes run kill @e[tag=smudge_hands,distance=..3,sort=nearest,limit=1]
execute at @s[scores={spur_charge=1..2,var1=2..49,var3=1200..}] anchored eyes run kill @e[tag=smudge_held_fireball,distance=..3,sort=nearest,limit=1]
scoreboard players reset @s[scores={var3=1200..}] var1

execute at @s run particle cloud ~ ~ ~ 0.2 0.1 0.2 0.02 8 force
tag @e[tag=assigned] remove assigned