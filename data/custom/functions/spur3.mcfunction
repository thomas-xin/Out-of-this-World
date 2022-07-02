execute at @s[scores={spur_charge=40..99}] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level1","spur_bullet","assign","despawn","player_assign"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:iron_block,Count:1b}]}

execute at @s[scores={spur_charge=100..299}] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level2","spur_bullet","assign","despawn","player_assign"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:iron_block,Count:1b}]}

execute at @s[scores={spur_charge=300..}] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level3","spur_bullet","assign","despawn","player_assign"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:diamond_block,Count:1b}]}

execute store result score @e[tag=assign,tag=player_assign] player_id run scoreboard players get @s player_id

tp @e[tag=assign,sort=nearest,limit=1] ~ ~-.8 ~ ~ ~
execute as @e[tag=assign,sort=nearest,limit=1] at @s run tp @s ^ ^ ^0.9

execute at @s[scores={spur_charge=40..99}] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2
execute at @s[scores={spur_charge=100..299}] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.6
execute at @s[scores={spur_charge=300..}] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.2

tag @e[tag=assign] remove assign
effect clear @s slowness