execute at @e[tag=timed] at @e[tag=!flying,tag=!none,type=!armor_stand,type=!area_effect_cloud,distance=..12] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute at @e[tag=column] as @e[tag=suck,distance=..14] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..16] run particle cloud ~ ~ ~ 0 0 0 0.02 2 force
execute at @e[tag=suck] as @e[distance=..1,tag=!flying,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 5
execute at @e[tag=suck] as @e[distance=..1,tag=!flying,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^1.5 ^0.38 ^0.12
kill @e[tag=euck]
execute at @e[tag=timed] positioned ~ ~4 ~ at @e[tag=!falling,tag=!none,type=!armor_stand,type=!area_effect_cloud,distance=12..16] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..20] run particle poof ~ ~ ~ 0 0 0 0.01 1 force
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run effect give @s levitation 1 2
execute at @e[tag=suck] as @e[distance=..1,tag=!falling,tag=!immune,type=!falling_block,type=!area_effect_cloud,type=!armor_stand,limit=1] run tp @s ^0.95 ^0.11 ^0.6
kill @s[tag=suck]
execute at @e[tag=timed] positioned ~ ~8 ~ at @e[tag=!falling,tag=!none,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,distance=16..24] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["suck"]}
execute at @e[tag=column] as @e[tag=suck,distance=..32] at @s run tp @s ~ ~ ~ facing entity @e[tag=flyto,sort=nearest,limit=1]
execute at @e[tag=column] at @e[tag=suck,distance=..32] run particle firework ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
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