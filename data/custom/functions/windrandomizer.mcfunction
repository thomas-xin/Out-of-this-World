execute at @s unless entity @e[tag=directional1,distance=..96] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["directional1","blow"]}
execute at @s unless entity @e[tag=directional2,distance=..96] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["directional2","blow"]}
execute at @s unless entity @e[tag=directional3,distance=..96] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["directional3","blow"]}
execute at @s unless entity @e[tag=directional4,distance=..96] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["directional4","blow"]}
execute as @e[tag=wind] at @s run tp @s ~ ~ ~ ~78 0
execute as @e[tag=directional1] at @e[tag=wind,sort=random,limit=1] run tp @s 0 0 0 ~ ~
execute as @e[tag=directional2] at @e[tag=wind,sort=random,limit=1] run tp @s 0 0 0 ~-77 ~
execute as @e[tag=directional3] at @e[tag=wind,sort=random,limit=1] run tp @s 0 0 0 ~41 ~
execute as @e[tag=directional4] at @e[tag=wind,sort=random,limit=1] run tp @s 0 0 0 ~127 ~
execute as @e[tag=directional1] at @s run tp @s ^ ^ ^69
execute as @e[tag=directional2] at @s run tp @s ^ ^ ^-37
execute as @e[tag=directional3] at @s run tp @s ^-48 ^ ^
execute as @e[tag=directional4] at @s run tp @s ^26 ^ ^51