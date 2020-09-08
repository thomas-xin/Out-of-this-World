execute at @s run summon area_effect_cloud ~1 ~ ~1 {Duration:2,Tags:["randocolour","r1","a1"]}
execute at @s run summon area_effect_cloud ~1 ~ ~-1 {Duration:2,Tags:["randocolour","r2","a1"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~-1 {Duration:2,Tags:["randocolour","r3","a1"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~1 {Duration:2,Tags:["randocolour","r4","a1"]}
execute at @s run summon area_effect_cloud ~1 ~ ~1 {Duration:2,Tags:["randocolour","r1","a2"]}
execute at @s run summon area_effect_cloud ~1 ~ ~-1 {Duration:2,Tags:["randocolour","r2","a2"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~-1 {Duration:2,Tags:["randocolour","r3","a2"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~1 {Duration:2,Tags:["randocolour","r4","a2"]}
execute at @s run summon area_effect_cloud ~1 ~ ~1 {Duration:2,Tags:["randocolour","r1","a3"]}
execute at @s run summon area_effect_cloud ~1 ~ ~-1 {Duration:2,Tags:["randocolour","r2","a3"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~-1 {Duration:2,Tags:["randocolour","r3","a3"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~1 {Duration:2,Tags:["randocolour","r4","a3"]}
tag @e[tag=randocolour,sort=random,limit=11] add selected
kill @e[tag=randocolour,tag=!selected]