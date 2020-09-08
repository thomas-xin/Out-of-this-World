execute at @s[type=creeper] if block ~ ~-1 ~ terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_knob_randomizer"]}
execute at @s[type=creeper] if block ~ ~-1 ~ orange_terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_knob_randomizer"]}
execute at @s[type=creeper] if block ~ ~-1 ~ white_terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_knob_randomizer"]}
execute at @s[type=creeper] at @e[tag=s_badlands_knob_randomizer,sort=nearest,limit=1] run function custom:structure_badlands_knob_randomize

execute at @s[type=spider] if block ~ ~-1 ~ terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_spike"]}
execute at @s[type=spider] if block ~ ~-1 ~ orange_terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_spike"]}
execute at @s[type=spider] if block ~ ~-1 ~ white_terracotta run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["s_badlands_spike"]}
execute at @s[type=spider] at @e[tag=s_badlands_spike,tag=!s_done,limit=1] run setblock ~ ~ ~ structure_block[mode=load]{metadata:"badlands_spike",mirror:"NONE",rotation:"NONE",posX:-5,mode:"LOAD",posY:-3,posZ:-5,integrity:1.0f,showair:0b,name:"custom:badlands_spike",sizeX:11,sizeY:19,sizeZ:11,showboundingbox:1b}
execute at @s[type=spider] at @e[tag=s_badlands_spike,tag=!s_done,sort=nearest,limit=1] run setblock ~ ~-1 ~ redstone_block
execute at @s[type=spider] run tag @e[tag=s_badlands_spike,tag=!s_done,sort=nearest,limit=1] add s_done