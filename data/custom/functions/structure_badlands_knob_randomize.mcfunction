summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["b1","s_badlands_knob_output"]}
summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["b2","s_badlands_knob_output"]}
summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["b3","s_badlands_knob_output"]}
summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["b4","s_badlands_knob_output"]}

tag @e[tag=s_badlands_knob_output,sort=random,limit=1] add s_badlands_knob
tag @e[tag=s_badlands_knob,limit=1] remove s_badlands_knob_output
kill @e[tag=s_badlands_knob_output,limit=3]

execute at @e[tag=s_badlands_knob,tag=!s_done,sort=nearest,limit=1] run function custom:structure_badlands_knob_spawn
kill @s