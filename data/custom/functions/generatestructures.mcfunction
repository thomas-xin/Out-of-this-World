execute at @e[tag=s_done,tag=!fin] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace structure_block
execute at @e[tag=s_done,tag=!fin] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace redstone_block
tag @e[tag=s_done,tag=!fin] add fin

# execute at @a as @e[type=creeper,distance=64..,sort=random,limit=1] at @s if entity @s[y=48,dy=144] unless entity @e[tag=s_badlands_knob,distance=..129] run function custom:structure_badlands_knob_summon

# execute at @a as @e[type=spider,distance=64..,sort=random,limit=1] at @s if entity @s[y=48,dy=144] unless entity @e[tag=s_badlands_spike,distance=..257] run function custom:structure_badlands_knob_summon

execute as @e[tag=crystal] at @s run function custom:crystalset
execute as @e[tag=randocolour] at @s run function custom:crystalores
kill @e[tag=randocolour]
execute as @e[tag=crystal] at @s run function custom:crystalspawn
kill @e[tag=crystal]
execute at @e[tag=emeraldgen] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"emeraldgen",mirror:"NONE",rotation:"NONE",posX:-6,mode:"LOAD",posY:-5,sizeX:13,posZ:-6,integrity:0.055f,showair:0b,name:"custom:emeraldgen",sizeY:13,sizeZ:13,showboundingbox:1b}
execute at @e[tag=emeraldgen] run setblock ~ ~-1 ~ redstone_block
execute at @e[tag=emeraldgen] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"diamondgen",mirror:"NONE",rotation:"NONE",posX:-6,mode:"LOAD",posY:-5,sizeX:13,posZ:-6,integrity:0.035f,showair:0b,name:"custom:diamondgen",sizeY:13,sizeZ:13,showboundingbox:1b} destroy
execute at @e[tag=emeraldgen] run setblock ~ ~-1 ~ redstone_block destroy
execute at @e[tag=emeraldgen] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace structure_block
execute at @e[tag=emeraldgen] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace redstone_block
execute at @e[tag=emeraldgen] run summon zombie_villager ~ ~-2 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,AbsorptionAmount:5f,Health:35f,CanBreakDoors:1b,HandItems:[{id:"minecraft:diamond_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:0.7},{Name:generic.movement_speed,Base:0.25},{Name:generic.armor,Base:5},{Name:generic.armor_toughness,Base:5}],VillagerData:{level:5,profession:"minecraft:none",type:"minecraft:jungle"}}
kill @e[tag=emeraldgen]
execute at @a as @e[type=bat,distance=64..,sort=random,limit=1] at @s if entity @s[y=-16,dy=40] if block ~ ~4 ~ #base_stone_overworld unless entity @e[tag=s_cave_crystal,distance=..160] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_cave_crystal"]}
execute at @e[tag=s_cave_crystal,tag=!s_done] run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["s_cave_crystal_generator"]}
execute as @e[tag=s_cave_crystal_generator] at @s run function custom:crystalinit
kill @e[tag=pocketrandomizer]
kill @e[tag=s_cave_crystal_generator]
tag @e[tag=s_cave_crystal,tag=!s_done] add s_done

execute at @a as @e[type=zombie,tag=!crystal,nbt={IsBaby:1b},distance=64..,sort=random,limit=1] at @s if entity @s[y=0,dy=32] if block ~ ~-2 ~ stone unless entity @e[tag=s_cave_spawner,distance=..512] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_cave_spawner"]}
execute at @e[tag=s_cave_spawner,tag=!s_done] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"cave_spawner",mirror:"NONE",rotation:"NONE",posX:-4,mode:"LOAD",posY:-1,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"custom:cave_spawner",sizeY:9,sizeZ:9,showboundingbox:1b}
execute at @e[tag=s_cave_spawner,tag=!s_done] run setblock ~ ~-1 ~ redstone_block
tag @e[tag=s_cave_spawner,tag=!s_done] add s_done

execute at @e[tag=s_wait] if entity @p[distance=..32] run function custom:lootreset
execute as @e[tag=s_wait] at @s if entity @p[distance=..32] run kill @s
execute at @e[tag=s_reset] run summon pig ~ ~ ~ {NoAI:1,Invulnerable:1,Tags:["s_wait"]}
kill @e[tag=s_reset]
execute at @a at @e[type=magma_cube,nbt=!{Size:0},distance=64..,sort=random,limit=1] if block ~ 31 ~ lava[level=0] if block ~ 31 ~16 lava if block ~16 31 ~ lava if block ~ 31 ~-16 lava if block ~-16 31 ~ lava unless entity @e[tag=s_nether_labyrinth,distance=..600] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_nether_labyrinth"]}
execute at @e[tag=s_nether_labyrinth,tag=!s_done] run summon vex ~ 30 ~ {Invulnerable:1,NoAI:1,Tags:["nether_labyrinth_entrance"]}
execute as @e[tag=nether_labyrinth_entrance,limit=1] run function custom:labyrinthgen
tag @e[tag=s_nether_labyrinth,tag=!s_done] add s_done