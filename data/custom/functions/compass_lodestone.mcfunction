execute in the_end unless entity @e[tag=tracked,distance=0..,limit=1] at @e[tag=tracked,limit=1] run setblock ~ 0 ~ lodestone
execute in the_end unless entity @e[tag=tracked,distance=0..,limit=1] at @e[tag=tracked,limit=1] run setblock ~ 1 ~ bedrock

execute at @e[tag=lodestone] run fill ~ 255 ~ ~ 255 ~ air replace lodestone
kill @e[tag=lodestone]
execute at @e[tag=tracked,limit=1] unless block ~ 0 ~ lodestone run summon armor_stand ~ 255 ~ {Tags:["lodestone"],NoGravity:1b,Invisible:1b}
execute at @e[tag=lodestone] run setblock ~ 255 ~ lodestone

execute in overworld if entity @e[tag=tracked,distance=0..,limit=1] run summon item 0 255 0 {Tags:["assigned2"],Health:1,Item:{id:"minecraft:compass",Count:1b,tag:{HideFlags:40,LodestoneTracked:1b,LodestoneDimension:"minecraft:overworld",LodestonePos:{X:0,Y:512,Z:0},display:{Name:'{"text":"Hunter Compass","color":"gold","bold":true,"italic":false}'}}}}
execute in the_nether if entity @e[tag=tracked,distance=0..,limit=1] run summon item 0 255 0 {Tags:["assigned2"],Health:1,Item:{id:"minecraft:compass",Count:1b,tag:{HideFlags:40,LodestoneTracked:1b,LodestoneDimension:"minecraft:the_nether",LodestonePos:{X:0,Y:512,Z:0},display:{Name:'{"text":"Hunter Compass","color":"gold","bold":true,"italic":false}'}}}}
execute in the_end if entity @e[tag=tracked,distance=0..,limit=1] run summon item 0 255 0 {Tags:["assigned2"],Health:1,Item:{id:"minecraft:compass",Count:1b,tag:{HideFlags:40,LodestoneTracked:1b,LodestoneDimension:"minecraft:the_end",LodestonePos:{X:0,Y:512,Z:0},display:{Name:'{"text":"Hunter Compass","color":"gold","bold":true,"italic":false}'}}}}

execute store result entity @e[tag=assigned2,limit=1] Item.tag.LodestonePos.X int 1 run data get entity @e[tag=tracked,limit=1] Pos[0] 1
execute if entity @e[tag=lodestone,limit=1] run data modify entity @e[tag=assigned2,limit=1] Item.tag.LodestonePos.Y set value 255
execute unless entity @e[tag=lodestone,limit=1] run data modify entity @e[tag=assigned2,limit=1] Item.tag.LodestonePos.Y set value 0
execute store result entity @e[tag=assigned2,limit=1] Item.tag.LodestonePos.Z int 1 run data get entity @e[tag=tracked,limit=1] Pos[2] 1

tp @e[tag=assigned2,limit=1] ~ ~ ~
kill @s