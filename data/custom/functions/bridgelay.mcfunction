execute at @s positioned ^ ^ ^1.414213562 if entity @e[tag=s_bridge,distance=..1,limit=1] run function custom:clear
execute at @s[tag=corridor0] run summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1b,Tags:["s_bridge","s_corridor0"]}
execute at @s[tag=corridor1] run summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1b,Tags:["s_bridge","s_corridor1"]}
execute at @s[tag=corridor2] run summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1b,Tags:["s_bridge","s_corridor2"]}
execute at @s[tag=corridor3] run summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1b,Tags:["s_bridge","s_corridor3"]}
execute at @s run tp @s ^ ^ ^2.8284271247461901