summon wither ~ ~ ~ {Tags:["initialized","check","wither_sprite","wither_load"],CanPickUpLoot:1,Invulnerable:1,Invul:2500,CustomName:'{"text":"Grumm","color":"dark_blue","bold":true,"obfuscated":true}'}
summon wither ~ ~ ~ {CanPickUpLoot:1b,Health:1f,Invul:5,Tags:["target_select","initialized","wither_target","wither_main","wither_load"],CustomName:'{"text":"Emperor of Destruction","color":"dark_purple","bold":true}',HandItems:[{id:"minecraft:totem_of_undying",Count:2b},{}],ActiveEffects:[{Id:6b,Amplifier:1b,Duration:99},{Id:7b,Amplifier:0b,Duration:99},{Id:11b,Amplifier:2b,Duration:9999999},{Id:14b,Amplifier:0b,Duration:9999999}],ArmorItems:[{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:5s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:5s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:5s}]}},{id:"minecraft:end_crystal",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:5s}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F]}
summon armor_stand ~ ~ ~ {Tags:["wither_orbit","wither_spin","raised"],Marker:1,Invisible:1,Invulnerable:1}

tag @e[scores={wither_id=1..}] add assigned
execute store result score @e[type=wither,tag=!assigned] wither_id run scoreboard players get @s wither_id
execute store result score @e[tag=wither_orbit,tag=!assigned] wither_id run scoreboard players get @s wither_id
tag @e[tag=assigned] remove assigned

summon fireball ~ ~ ~ {direction:[0.,-.5,0.],power:[0.,-.1,0.],ExplosionPower:16}
summon tnt ~ ~ ~ {Fuse:2}
fill ~-3 ~-1 ~-3 ~3 ~5 ~3 void_air
summon lightning_bolt ~ ~-2 ~

playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 255 0 1
playsound minecraft:block.enderchest.open hostile @a ~ ~ ~ 255 0 1
playsound minecraft:block.end_gateway.spawn player @a ~ ~ ~ 255 0 1
data merge entity @s {Tags:[initialized],Health:0,DeathTime:19}
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["summontimer"]}