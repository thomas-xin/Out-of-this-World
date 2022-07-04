scoreboard players set @s var1 0
scoreboard players set @s var2 0

execute store result score @s var0 run data get entity @s SelectedItem.Count
execute if score @s var0 matches 1.. run function custom:light_main
scoreboard players operation @s var0 /= __8__ var0
execute if score @s var1 matches 1.. run scoreboard players operation @s var1 += @s var0

execute store result score @s var0 run data get entity @s Inventory[{Slot:-106b}].Count
execute if score @s var0 matches 1.. run function custom:light_off
scoreboard players operation @s var0 /= __8__ var0
execute if score @s var2 matches 1.. run scoreboard players operation @s var2 += @s var0

execute if score @s var2 > @s var1 store result score @s var1 run scoreboard players get @s var2

execute if score @s var1 matches 1.. run scoreboard players remove @s var1 1
execute if score @s var1 matches 1.. unless score @s light_delay >= @s var1 run scoreboard players add @s light_delay 2
execute if score @s var1 < @s light_delay run scoreboard players remove @s light_delay 1
execute unless score @s var1 matches 1.. if score @s light_delay matches 1.. store result score @s var1 run scoreboard players get @s light_delay
execute store result score @s var0 run scoreboard players get @s light_delay

execute if score @s var0 matches 2.. positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glow","new","disappear"]}
execute if score @s var0 matches 3.. positioned ~ ~1 ~ store result entity @e[tag=glow,tag=new,distance=...1,limit=1] Duration int 1 run scoreboard players get @s var0
execute if score @s var0 matches 2.. positioned ~ ~1 ~ run tag @e[tag=glow,tag=new,distance=...1,limit=1] remove new

scoreboard players remove @s var0 4
execute positioned ^ ^ ^1 unless block ~ ~1 ~ #custom:empty run scoreboard players set @s var0 0
execute if score @s var0 matches 2.. positioned ^ ^ ^2 positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glow","new","disappear"]}
execute if score @s var0 matches 3.. positioned ^ ^ ^2 positioned ~ ~1 ~ store result entity @e[tag=glow,tag=new,distance=...1,limit=1] Duration int 1 run scoreboard players get @s var0
execute if score @s var0 matches 2.. positioned ^ ^ ^2 positioned ~ ~1 ~ run tag @e[tag=glow,tag=new,distance=...1,limit=1] remove new

scoreboard players remove @s var0 5
execute positioned ^ ^ ^3 unless block ~ ~1 ~ #custom:empty run scoreboard players set @s var0 0
execute if score @s var0 matches 2.. positioned ^ ^ ^4 positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glow","new","disappear"]}
execute if score @s var0 matches 3.. positioned ^ ^ ^4 positioned ~ ~1 ~ store result entity @e[tag=glow,tag=new,distance=...1,limit=1] Duration int 1 run scoreboard players get @s var0
execute if score @s var0 matches 2.. positioned ^ ^ ^4 positioned ~ ~1 ~ run tag @e[tag=glow,tag=new,distance=...1,limit=1] remove new

scoreboard players remove @s var0 6
execute positioned ^ ^ ^5 unless block ~ ~1 ~ #custom:empty run scoreboard players set @s var0 0
execute if score @s var0 matches 2.. positioned ^ ^ ^6 positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glow","new","disappear"]}
execute if score @s var0 matches 3.. positioned ^ ^ ^6 positioned ~ ~1 ~ store result entity @e[tag=glow,tag=new,distance=...1,limit=1] Duration int 1 run scoreboard players get @s var0
execute if score @s var0 matches 2.. positioned ^ ^ ^6 positioned ~ ~1 ~ run tag @e[tag=glow,tag=new,distance=...1,limit=1] remove new

scoreboard players remove @s var0 7
execute positioned ^ ^ ^7 unless block ~ ~1 ~ #custom:empty run scoreboard players set @s var0 0
execute if score @s var0 matches 2.. positioned ^ ^ ^8 positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glow","new","disappear"]}
execute if score @s var0 matches 3.. positioned ^ ^ ^8 positioned ~ ~1 ~ store result entity @e[tag=glow,tag=new,distance=...1,limit=1] Duration int 1 run scoreboard players get @s var0
execute if score @s var0 matches 2.. positioned ^ ^ ^8 positioned ~ ~1 ~ run tag @e[tag=glow,tag=new,distance=...1,limit=1] remove new