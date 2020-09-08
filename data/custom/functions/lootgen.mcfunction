kill @e[tag=random]
summon area_effect_cloud ~ ~ ~ {Tags:["random","r1"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["random","r2"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["random","r3"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["random","r4"],Duration:1}
tag @e[tag=random,sort=random,limit=1] add selected
execute at @e[tag=selected,tag=r1] run setblock ~ ~-16 ~ structure_block[mode=load]{metadata:"nether_labyrinth_loot",mirror:"NONE",rotation:"NONE",posX:-9,mode:"LOAD",posY:-5,posZ:-9,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_loot",sizeX:18,sizeY:8,sizeZ:18,showboundingbox:1b} destroy
execute at @e[tag=selected,tag=r2] run setblock ~ ~-16 ~ structure_block[mode=load]{metadata:"nether_labyrinth_loot",mirror:"NONE",rotation:"CLOCKWISE_90",posX:8,mode:"LOAD",posY:-5,posZ:-9,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_loot",sizeX:18,sizeY:8,sizeZ:18,showboundingbox:1b} destroy
execute at @e[tag=selected,tag=r3] run setblock ~ ~-16 ~ structure_block[mode=load]{metadata:"nether_labyrinth_loot",mirror:"NONE",rotation:"CLOCKWISE_180",posX:8,mode:"LOAD",posY:-5,posZ:8,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_loot",sizeX:18,sizeY:8,sizeZ:18,showboundingbox:1b} destroy
execute at @e[tag=selected,tag=r4] run setblock ~ ~-16 ~ structure_block[mode=load]{metadata:"nether_labyrinth_loot",mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",posX:-9,mode:"LOAD",posY:-5,posZ:8,integrity:1.0f,showair:0b,name:"custom:nether_labyrinth_loot",sizeX:18,sizeY:8,sizeZ:18,showboundingbox:1b} destroy
setblock ~ ~-15 ~ redstone_block destroy
summon pig ~ ~ ~ {NoAI:1,Invulnerable:1,Tags:["s_reset"]}
summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_nether_labyrinth","s_done"]}
kill @e[tag=random]