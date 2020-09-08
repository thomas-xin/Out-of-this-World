execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=angle,limit=1] Rotation[0]
execute at @s run tp @s ^16 ^-8 ^16
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r1"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r2"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r3"]}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
execute at @e[tag=pocketrandomizer] as @e[tag=random,sort=random,limit=1] unless entity @s[tag=r1] run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
execute at @e[tag=pocketrandomizer] as @e[tag=random,sort=random,limit=1] unless entity @s[tag=r1] run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
execute at @e[tag=pocketrandomizer] as @e[tag=random,sort=random,limit=1] unless entity @s[tag=r1] run summon armor_stand ~ ~ ~ {Tags:["pocketrandomizer"],Invulnerable:1}
kill @e[tag=random]
execute at @e[tag=s_cave_crystal_generator] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"stonegen",mirror:"NONE",rotation:"NONE",posX:-6,mode:"LOAD",posY:-5,sizeX:13,posZ:-6,integrity:0.96f,showair:0b,name:"custom:stonegen",sizeY:13,sizeZ:13,showboundingbox:1b}
execute at @s run setblock ~ ~-1 ~ redstone_block
execute at @s run summon vex ~ ~ ~ {NoAI:1,Tags:["emeraldgen"]}
execute as @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=angle,limit=1] Rotation[0]
execute as @s at @s run tp @s ^ ^ ^5
execute as @s at @s run tp @s ~ ~-2.5 ~
execute at @e[tag=pocketrandomizer] run function custom:crystalgen
execute at @e[tag=pocketrandomizer] run function custom:crystalgen
execute at @e[tag=pocketrandomizer] run function custom:crystalgen
execute at @e[tag=pocketrandomizer] run function custom:crystalgen