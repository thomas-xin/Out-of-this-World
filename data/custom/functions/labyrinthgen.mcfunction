execute at @e[tag=nether_labyrinth_entrance] run setblock ~ ~-8 ~ structure_block[mode=load]{metadata:"nether_labyrinth_entrance",mirror:"NONE",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,posZ:-3,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_entrance",sizeX:7,sizeY:10,sizeZ:7,showboundingbox:1b}
execute at @e[tag=nether_labyrinth_entrance] run setblock ~ ~-7 ~ redstone_block
execute at @e[tag=nether_labyrinth_entrance] run setblock ~ ~-9 ~ obsidian
execute at @e[tag=nether_labyrinth_entrance] run summon armor_stand ~4 ~-8 ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=nether_labyrinth_entrance] run summon armor_stand ~4 ~-8 ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=nether_labyrinth_entrance] run summon armor_stand ~-4 ~-8 ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=nether_labyrinth_entrance] run summon armor_stand ~-4 ~-8 ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute as @e[tag=corridor0] at @s run tp @s ~ ~ ~ 315 0
execute as @e[tag=corridor1] at @s run tp @s ~ ~ ~ 225 0
execute as @e[tag=corridor2] at @s run tp @s ~ ~ ~ 135 0
execute as @e[tag=corridor3] at @s run tp @s ~ ~ ~ 45 0
execute as @e[tag=bridge] at @s run function custom:bridgeset1
execute at @e[tag=bridgeset,nbt=!{CanPickUpLoot:1b},nbt=!{LeftHanded:1b},nbt=!{CanBreakDoors:1b},nbt=!{IsBaby:1b}] as @e[tag=bridge,distance=..2] run function custom:bridgelay
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge] as @e[tag=random,distance=..1,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,distance=..1,sort=random,limit=1] add gateway
execute as @e[tag=gateway] run kill @e[type=item]
kill @e[tag=random]
execute as @e[tag=bridge,tag=!gateway] at @s run tp @s ^ ^ ^1.414213562
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^ ^ structure_block[mode=load]{metadata:"nether_labyrinth_hub",mirror:"NONE",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,posZ:-3,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_hub",sizeX:7,sizeY:8,sizeZ:7,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^-1 ^ redstone_block destroy
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=!gateway,sort=random,limit=1] add guardian
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~1 ~ obsidian
execute at @e[tag=bridge,tag=!gateway,tag=!guardian] run summon vex ~ ~1 ~ {Tags:["lootbox"]}
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~6 ~ emerald_block
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~5 ~ minecraft:spawner{SpawnData:{id:"minecraft:experience_orb",Age:5873,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:9b,Amplifier:0b,Duration:120},{Id:15b,Amplifier:0b,Duration:80},{Id:16b,Amplifier:0b,Duration:60}]}}}]}} destroy
execute at @e[tag=bridge,tag=guardian] align x align z run summon minecraft:armor_stand ~.5 ~.5 ~.5 {Small:0b,Marker:0b,Invisible:1b,Tags:["turret"],Passengers:[{id:"minecraft:end_crystal",Invulnerable:1b,ShowBottom:0b,Tags:["turret"]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/end_city_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_shovel",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/shipwreck_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_axe",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:magma_cube",OnGround:0b,NoGravity:1b,DeathLootTable:"chests/simple_dungeon",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40f,Size:4,wasOnGround:0b,HandItems:[{id:"minecraft:golden_pickaxe",Count:1b,tag:{display:{Lore:["{\"text\":\"Efficiency XI\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Silk Touch\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Unbreaking XIX\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Fortune IV\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Mending\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:11s},{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:unbreaking",lvl:19s},{id:"minecraft:fortune",lvl:4s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:ender_eye",Count:1b}],HandDropChances:[0.050F,0.800F],ArmorItems:[{id:"minecraft:obsidian",Count:3b},{id:"minecraft:fire_charge",Count:1b},{id:"minecraft:ghast_tear",Count:1b},{id:"minecraft:glass",Count:1b}],ArmorDropChances:[0.300F,0.300F,0.400F,0.500F],ActiveEffects:[{Id:10b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0},{Name:generic.armorToughness,Base:6}]}]}
kill @e[tag=random]
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ^ ^ ^6.36396103068
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ~.5 ~ ~.5
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_gateway",mirror:"NONE",rotation:"NONE",posX:-7,mode:"LOAD",posY:-8,posZ:-7,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_gateway",sizeX:14,sizeY:8,sizeZ:14,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute as @e[tag=bridge,tag=gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=gateway,sort=random,limit=1] add loot
kill @e[tag=random]
execute at @e[tag=loot] run function custom:lootgen

tag @e[tag=bridge,tag=!gateway] add hub
tag @e[tag=bridge] add branch
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
kill @e[tag=random]
execute as @e[tag=corridor0] at @s run tp @s ~ ~ ~ 315 0
execute as @e[tag=corridor1] at @s run tp @s ~ ~ ~ 225 0
execute as @e[tag=corridor2] at @s run tp @s ~ ~ ~ 135 0
execute as @e[tag=corridor3] at @s run tp @s ~ ~ ~ 45 0
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..7,limit=3] at @s run tp @s ~.5 ~ ~-.5
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..8,limit=3] at @s run tp @s ^ ^ ^4.9497474683
kill @e[tag=branch]
execute as @e[tag=bridge] at @s run function custom:bridgeset2
execute at @e[tag=bridgeset,nbt=!{CanPickUpLoot:1b},nbt=!{LeftHanded:1b},nbt=!{CanBreakDoors:1b},nbt=!{IsBaby:1b}] as @e[tag=bridge,distance=..2] run function custom:bridgelay
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute at @e[tag=bridge] as @e[tag=random,distance=..1,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,distance=..1,sort=random,limit=1] add gateway
kill @e[tag=random]
execute as @e[tag=bridge,tag=!gateway] at @s run tp @s ^ ^ ^1.414213562
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^ ^ structure_block[mode=load]{metadata:"nether_labyrinth_hub",mirror:"NONE",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,posZ:-3,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_hub",sizeX:7,sizeY:8,sizeZ:7,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^-1 ^ redstone_block destroy
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=!gateway,sort=random,limit=1] add guardian
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~1 ~ obsidian
execute at @e[tag=bridge,tag=!gateway,tag=!guardian] run summon vex ~ ~1 ~ {Tags:["lootbox"]}
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~6 ~ emerald_block
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~5 ~ minecraft:spawner{SpawnData:{id:"minecraft:experience_orb",Age:5873,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:9b,Amplifier:0b,Duration:120},{Id:15b,Amplifier:0b,Duration:80},{Id:16b,Amplifier:0b,Duration:60}]}}}]}} destroy
execute at @e[tag=bridge,tag=guardian] align x align z run summon minecraft:armor_stand ~.5 ~.5 ~.5 {Small:0b,Marker:0b,Invisible:1b,Tags:["turret"],Passengers:[{id:"minecraft:end_crystal",Invulnerable:1b,ShowBottom:0b,Tags:["turret"]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/end_city_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_shovel",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/shipwreck_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_axe",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:magma_cube",OnGround:0b,NoGravity:1b,DeathLootTable:"chests/simple_dungeon",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40f,Size:4,wasOnGround:0b,HandItems:[{id:"minecraft:golden_pickaxe",Count:1b,tag:{display:{Lore:["{\"text\":\"Efficiency XI\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Silk Touch\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Unbreaking XIX\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Fortune IV\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Mending\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:11s},{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:unbreaking",lvl:19s},{id:"minecraft:fortune",lvl:4s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:ender_eye",Count:1b}],HandDropChances:[0.050F,0.800F],ArmorItems:[{id:"minecraft:obsidian",Count:3b},{id:"minecraft:fire_charge",Count:1b},{id:"minecraft:ghast_tear",Count:1b},{id:"minecraft:glass",Count:1b}],ArmorDropChances:[0.300F,0.300F,0.400F,0.500F],ActiveEffects:[{Id:10b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0},{Name:generic.armorToughness,Base:6}]}]}
kill @e[tag=random]
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ^ ^ ^6.36396103068
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ~.5 ~ ~.5
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_gateway",mirror:"NONE",rotation:"NONE",posX:-7,mode:"LOAD",posY:-8,posZ:-7,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_gateway",sizeX:14,sizeY:8,sizeZ:14,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute as @e[tag=bridge,tag=gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=gateway,sort=random,limit=1] add loot
kill @e[tag=random]
execute at @e[tag=loot] run function custom:lootgen

tag @e[tag=bridge,tag=!gateway] add hub
tag @e[tag=bridge] add branch
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
kill @e[tag=random]
execute as @e[tag=corridor0] at @s run tp @s ~ ~ ~ 315 0
execute as @e[tag=corridor1] at @s run tp @s ~ ~ ~ 225 0
execute as @e[tag=corridor2] at @s run tp @s ~ ~ ~ 135 0
execute as @e[tag=corridor3] at @s run tp @s ~ ~ ~ 45 0
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..7,limit=3] at @s run tp @s ~-.5 ~ ~-.5
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..8,limit=3] at @s run tp @s ^ ^ ^4.9497474683
kill @e[tag=branch]
execute at @e[tag=bridge] run summon husk
execute at @e[tag=bridge] run summon husk
execute at @e[tag=bridge] run summon husk
execute at @e[tag=bridge] run summon husk
execute as @e[tag=bridge] at @s run function custom:bridgeset3
execute at @e[type=husk,nbt={CanPickUpLoot:1b}] as @e[tag=bridge,distance=..2,limit=1] run function custom:bridgeset4
execute as @e[type=husk] at @s at @e[tag=bridge,distance=..2,limit=1] run kill @s
execute at @e[tag=bridgeset,nbt=!{CanPickUpLoot:1b},nbt=!{LeftHanded:1b},nbt=!{CanBreakDoors:1b},nbt=!{IsBaby:1b}] as @e[tag=bridge,distance=..2] run function custom:bridgelay
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute at @e[tag=bridge] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r4"],Duration:1}
execute at @e[tag=bridge] as @e[tag=random,distance=..1,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,distance=..1,sort=random,limit=1] add gateway
kill @e[tag=random]
execute as @e[tag=bridge,tag=!gateway] at @s run tp @s ^ ^ ^1.414213562
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^ ^ structure_block[mode=load]{metadata:"nether_labyrinth_hub",mirror:"NONE",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,posZ:-3,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_hub",sizeX:7,sizeY:8,sizeZ:7,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=!gateway] run setblock ^ ^-1 ^ redstone_block destroy
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=bridge,tag=!gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=!gateway,sort=random,limit=1] add guardian
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~1 ~ obsidian
execute at @e[tag=bridge,tag=!gateway,tag=!guardian] run summon vex ~ ~1 ~ {Tags:["lootbox"]}
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~6 ~ emerald_block
execute at @e[tag=bridge,tag=guardian] run setblock ~ ~5 ~ minecraft:spawner{SpawnData:{id:"minecraft:experience_orb",Age:5873,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:9b,Amplifier:0b,Duration:120},{Id:15b,Amplifier:0b,Duration:80},{Id:16b,Amplifier:0b,Duration:60}]}}}]}} destroy
execute at @e[tag=bridge,tag=guardian] align x align z run summon minecraft:armor_stand ~.5 ~.5 ~.5 {Small:0b,Marker:0b,Invisible:1b,Tags:["turret"],Passengers:[{id:"minecraft:end_crystal",Invulnerable:1b,ShowBottom:0b,Tags:["perma_crystal","turret"]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/end_city_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_shovel",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"chests/shipwreck_treasure",PersistenceRequired:1b,CanPickUpLoot:1b,Health:10f,HandItems:[{id:"minecraft:golden_axe",Count:1b},{}],ArmorItems:[{id:"minecraft:acacia_boat",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:32767s}]}},{},{},{}],ActiveEffects:[{Id:3b,Amplifier:4b,Duration:999999},{Id:5b,Amplifier:0b,Duration:999999},{Id:6b,Amplifier:0b,Duration:999999},{Id:10b,Amplifier:4b,Duration:999999},{Id:12b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999},{Id:28b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackKnockback,Base:5}]},{id:"minecraft:magma_cube",OnGround:0b,NoGravity:1b,DeathLootTable:"chests/simple_dungeon",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40f,Size:4,wasOnGround:0b,HandItems:[{id:"minecraft:golden_pickaxe",Count:1b,tag:{display:{Lore:["{\"text\":\"Efficiency XI\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Silk Touch\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Unbreaking XIX\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Fortune IV\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Mending\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:11s},{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:unbreaking",lvl:19s},{id:"minecraft:fortune",lvl:4s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:ender_eye",Count:1b}],HandDropChances:[0.050F,0.800F],ArmorItems:[{id:"minecraft:obsidian",Count:3b},{id:"minecraft:fire_charge",Count:1b},{id:"minecraft:ghast_tear",Count:1b},{id:"minecraft:glass",Count:1b}],ArmorDropChances:[0.300F,0.300F,0.400F,0.500F],ActiveEffects:[{Id:10b,Amplifier:0b,Duration:999999},{Id:13b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0},{Name:generic.armorToughness,Base:6}]}]}
kill @e[tag=random]
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ^ ^ ^6.36396103068
execute as @e[tag=bridge,tag=gateway] at @s run tp @s ~.5 ~ ~.5
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_gateway",mirror:"NONE",rotation:"NONE",posX:-7,mode:"LOAD",posY:-8,posZ:-7,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_gateway",sizeX:14,sizeY:8,sizeZ:14,showboundingbox:1b} destroy
execute at @e[tag=bridge,tag=gateway] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=bridge,tag=gateway] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute as @e[tag=bridge,tag=gateway] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run tag @e[tag=bridge,tag=gateway,sort=random,limit=1] add loot
kill @e[tag=random]
execute at @e[tag=loot] run function custom:lootgen

tag @e[tag=bridge,tag=!gateway] add hub
tag @e[tag=bridge] add branch
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor0,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor1,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor1"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor2,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor0"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~-4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor2"]}
execute at @e[tag=corridor3,tag=branch] run summon armor_stand ~-4 ~ ~4 {Invulnerable:1,NoGravity:1,Tags:["bridge","corridor3"]}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=hub] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
execute at @e[tag=hub] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run kill @e[tag=bridge,tag=!branch,distance=..7,sort=random,limit=1]
kill @e[tag=random]
execute as @e[tag=corridor0] at @s run tp @s ~ ~ ~ 315 0
execute as @e[tag=corridor1] at @s run tp @s ~ ~ ~ 225 0
execute as @e[tag=corridor2] at @s run tp @s ~ ~ ~ 135 0
execute as @e[tag=corridor3] at @s run tp @s ~ ~ ~ 45 0
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..7,limit=3] at @s run tp @s ~-.5 ~ ~-.5
execute at @e[tag=bridge,tag=gateway] run execute as @e[tag=bridge,tag=!branch,distance=..8,limit=3] at @s run tp @s ^ ^ ^4.9497474683
kill @e[tag=branch]
execute at @e[tag=bridge] run summon husk
execute at @e[tag=bridge] run summon husk
execute at @e[tag=bridge] run summon husk
execute as @e[tag=bridge] at @s run function custom:bridgeset4
execute at @e[type=husk,nbt={CanPickUpLoot:1b}] as @e[tag=bridge,distance=..2,limit=1] run function custom:bridgeset2
execute as @e[type=husk] at @s at @e[tag=bridge,distance=..2,limit=1] run kill @s
execute at @e[tag=bridgeset,nbt=!{CanPickUpLoot:1b},nbt=!{LeftHanded:1b},nbt=!{CanBreakDoors:1b},nbt=!{IsBaby:1b}] as @e[tag=bridge,distance=..2] run function custom:bridgelay
execute as @e[tag=bridge] at @s run tp @s ^ ^ ^1.414213562
execute at @e[tag=bridge] run setblock ^ ^ ^ structure_block[mode=load]{metadata:"nether_labyrinth_hub",mirror:"NONE",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,posZ:-3,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_hub",sizeX:7,sizeY:8,sizeZ:7,showboundingbox:1b} destroy
execute at @e[tag=bridge] run setblock ^ ^-1 ^ redstone_block destroy
execute at @e[tag=bridge,tag=!gateway,tag=!guardian] run summon vex ~ ~1 ~ {Tags:["lootbox"]}

execute at @e[tag=s_corridor0] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_bridge",mirror:"NONE",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,posZ:-2,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_bridge",sizeX:5,sizeY:6,sizeZ:5,showboundingbox:1b} destroy
execute at @e[tag=s_corridor0] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=s_corridor1] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_bridge",mirror:"NONE",rotation:"CLOCKWISE_90",posX:1,mode:"LOAD",posY:0,posZ:-1,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_bridge",sizeX:5,sizeY:6,sizeZ:5,showboundingbox:1b} destroy
execute at @e[tag=s_corridor1] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=s_corridor2] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_bridge",mirror:"NONE",rotation:"NONE",posX:-1,mode:"LOAD",posY:0,posZ:-1,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_bridge",sizeX:5,sizeY:6,sizeZ:5,showboundingbox:1b} destroy
execute at @e[tag=s_corridor2] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=s_corridor3] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"nether_labyrinth_bridge",mirror:"NONE",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:0,posZ:-2,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_bridge",sizeX:5,sizeY:6,sizeZ:5,showboundingbox:1b} destroy
execute at @e[tag=s_corridor3] run setblock ~ ~1 ~ redstone_block destroy
execute at @e[tag=s_clear] run fill ~-.5 ~-1 ~-.5 ~.5 ~4 ~.5 air replace black_stained_glass
execute at @e[tag=s_clear] run setblock ~1 ~ ~1 obsidian
kill @e[tag=s_clear]
execute at @e[tag=s_bridge] run kill @e[type=item,distance=..8]
kill @e[tag=s_bridge]
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r4"],Duration:1}
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r5"],Duration:1}
execute at @e[tag=lootbox] run summon area_effect_cloud ~ ~ ~ {Tags:["random","r6"],Duration:1}
execute at @e[tag=lootbox] run tag @e[tag=random,distance=..2,sort=random,limit=1] add selected
execute at @e[tag=selected,tag=r1] run setblock ~ ~ ~ barrel[facing=up]{LootTable:"chests/desert_pyramid"}
execute at @e[tag=selected,tag=r2] run setblock ~ ~ ~ barrel[facing=up]{LootTable:"chests/simple_dungeon"}
execute at @e[tag=selected,tag=r3] run setblock ~ ~ ~ barrel[facing=up]{LootTable:"chests/woodland_mansion"}
execute at @e[tag=selected,tag=r4] run setblock ~ ~ ~ barrel[facing=up]{LootTable:"chests/jungle_temple"}
execute at @e[tag=selected,tag=r5] run setblock ~ ~ ~ barrel[facing=up]{LootTable:"chests/igloo_chest"}
execute at @e[tag=selected,tag=r6] run setblock ~ ~4 ~ red_shulker_box[facing=down]{LootTable:"chests/shipwreck_treasure"}
kill @e[tag=random]
kill @e[tag=lootbox]
kill @e[tag=bridgeset]
kill @e[tag=nether_labyrinth_entrance]
kill @e[tag=bridge]