fill ~-1 ~ ~ ~1 ~-1 ~ air
fill ~ ~ ~-1 ~ ~-1 ~1 air
fill ~ ~ ~ ~ ~-3 ~ air
kill @e[tag=initialized,distance=..2]

summon wither ~ ~ ~ {Invul:280,Tags:["initialized","summoned","wither_target","wither_orbit","wither_load"]}

summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"],Invisible:1,Invulnerable:1}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"],Invisible:1,Invulnerable:1}

tag @e[tag=wither_load,scores={wither_id=1..}] add assigned
scoreboard players set @e[tag=wither_load,tag=!assigned] wither_id -1
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["wither_id"]}
scoreboard players set @e[tag=wither_id] wither_id 0
execute as @e[tag=wither_id,limit=1] run function custom:wither_id
kill @e[tag=wither_id,limit=1]
tag @e[tag=assigned] remove assigned

execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run scoreboard players add @e[tag=summoned,sort=nearest,limit=1] wither_id 32768
kill @e[tag=random]

summon armor_stand ~ ~ ~ {Tags:["orbit","check","raised","angle1"],Marker:1b,Invisible:1b,Passengers:[{id:wither,Tags:["initialized","minion","raised"],Attributes:[{Name:generic.maxHealth,Base:75}],Invul:281,CanPickUpLoot:1b,ActiveEffects:[{Id:11b,Amplifier:4b,Duration:300},{Id:14b,Duration:240}],ArmorItems:[{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F]},{id:end_crystal,Invulnerable:1b,ShowBottom:0b,Tags:["spin_crystal","raised","point_crystal"]}]}
summon armor_stand ~ ~ ~ {Tags:["orbit","check","raised","angle2"],Marker:1b,Invisible:1b,Passengers:[{id:wither,Tags:["initialized","minion","raised"],Attributes:[{Name:generic.maxHealth,Base:75}],Invul:281,CanPickUpLoot:1b,ActiveEffects:[{Id:11b,Amplifier:4b,Duration:300},{Id:14b,Duration:240}],ArmorItems:[{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F]},{id:end_crystal,Invulnerable:1b,ShowBottom:0b,Tags:["spin_crystal","raised","point_crystal"]}]}
summon armor_stand ~ ~ ~ {Tags:["orbit","check","raised","angle3"],Marker:1b,Invisible:1b,Passengers:[{id:wither,Tags:["initialized","minion","raised"],Attributes:[{Name:generic.maxHealth,Base:75}],Invul:281,CanPickUpLoot:1b,ActiveEffects:[{Id:11b,Amplifier:4b,Duration:300},{Id:14b,Duration:240}],ArmorItems:[{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F]},{id:end_crystal,Invulnerable:1b,ShowBottom:0b,Tags:["spin_crystal","raised","point_crystal"]}]}

tag @e[scores={wither_id=1..}] add assigned
execute store result score @e[type=wither,tag=!assigned] wither_id run scoreboard players get @e[tag=wither_load,sort=nearest,distance=..1,limit=1] wither_id
execute store result score @e[tag=orbit,tag=!assigned] wither_id run scoreboard players get @e[tag=wither_load,sort=nearest,distance=..1,limit=1] wither_id
execute store result score @e[tag=point_crystal,tag=!assigned] wither_id run scoreboard players get @e[tag=wither_load,sort=nearest,distance=..1,limit=1] wither_id
tag @e[tag=assigned] remove assigned

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 9. 0.8 1.
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 9. 0.7 1.
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 6. 0.9 1.
playsound minecraft:block.ender_chest.open hostile @a ~ ~ ~ 12. 0.5 1.