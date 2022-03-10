tag @s[tag=immune] remove flying
tag @s[nbt={abilities:{flying:1b}}] add immune

tag @s[tag=assigned] remove assigned
execute if entity @s[scores={deaths=1..}] run data merge entity @e[tag=wither_main,sort=nearest,limit=1] {ActiveEffects:[{Id:7,Amplifier:2,Duration:1}]}
scoreboard players reset @s[scores={deaths=1..}] deaths

effect give @s[tag=trident] conduit_power 16 9
effect give @s[tag=trident] dolphins_grace 16 8
execute at @s[tag=trident,nbt={SelectedItem:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}},scores={trident=1..}] run effect give @e[distance=.01..4] wither 18 2
execute at @s[tag=trident,nbt={SelectedItem:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}},scores={trident=1..}] run effect give @e[distance=.01..4] poison 18 2

give @s[gamemode=!creative,tag=trident,nbt=!{SelectedItem:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}},scores={trident=1..}] trident{display:{Name:'{"text":"Emperor\'s Trident","color":"dark_blue","bold":true,"italic":false}',Lore:['{"text":"Sharpness XLVIII","color":"gray","italic":false}','{"text":"Power XLVIII","color":"gray","italic":false}','{"text":"Efficiency XXIV","color":"gray","italic":false}','{"text":"Smite VI","color":"gray","italic":false}','{"text":"Bane of Arthropods VI","color":"gray","italic":false}','{"text":"Impaling VI","color":"gray","italic":false}','{"text":"Knockback III","color":"gray","italic":false}','{"text":"Thorns V","color":"gray","italic":false}','{"text":"Fire Aspect XI","color":"gray","italic":false}','{"text":"Silk Touch","color":"gray","italic":false}','{"text":"Infinity","color":"gray","italic":false}','{"text":"Loyalty XCIX","color":"gray","italic":false}','{"text":"Looting VIII","color":"gray","italic":false}','{"text":"Fortune VIII","color":"gray","italic":false}','{"text":"Aqua Affinity X","color":"gray","italic":false}','{"text":"Sweeping Edge LXIV","color":"gray","italic":false}','{"text":"Depth Strider IX","color":"gray","italic":false}','{"text":"Channeling II","color":"gray","italic":false}','{"text":"Detonation III","color":"gray","italic":false}','{"text":"Fragmentation VIII","color":"gray","italic":false}','{"text":"Poisoned Blade III","color":"gray","italic":false}','{"text":"Withering Curse III","color":"gray","italic":false}','{"text":"Unbreaking C","color":"gray","italic":false}','{"text":"Mending","color":"gray","italic":false}']},HideFlags:53,Enchantments:[{id:"minecraft:aqua_affinity",lvl:10s},{id:"minecraft:thorns",lvl:5s},{id:"minecraft:depth_strider",lvl:9s},{id:"minecraft:sharpness",lvl:48s},{id:"minecraft:smite",lvl:6s},{id:"minecraft:bane_of_arthropods",lvl:6s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:fire_aspect",lvl:11s},{id:"minecraft:looting",lvl:8s},{id:"minecraft:sweeping",lvl:64s},{id:"minecraft:efficiency",lvl:24s},{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:unbreaking",lvl:100s},{id:"minecraft:fortune",lvl:8s},{id:"minecraft:power",lvl:48s},{id:"minecraft:infinity",lvl:1s},{id:"minecraft:loyalty",lvl:32767s},{id:"minecraft:impaling",lvl:6s},{id:"minecraft:channeling",lvl:2s},{id:"minecraft:mending",lvl:1s}]}

tag @s[tag=trident] remove trident
tag @s[nbt={SelectedItem:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}}] add trident
scoreboard players reset @s trident

scoreboard players set @s[scores={left=1..}] player_id -1
scoreboard players set @s[scores={left=1..}] left 0
tag @s[scores={player_id=1..}] add assigned
scoreboard players set @s[tag=!assigned] player_id -1
execute if entity @s[tag=!assigned] in overworld run summon area_effect_cloud 0 0 0 {Duration:1,Tags:["player_id"]}

function custom:cs_weapon_before

scoreboard players reset @s var0
scoreboard players reset @s var1