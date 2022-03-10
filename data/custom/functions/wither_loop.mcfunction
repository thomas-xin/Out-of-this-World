tag @a[gamemode=!creative,gamemode=!spectator] add found
execute unless entity @e[tag=fast_loop,limit=1] as @e[tag=target] at @s run tp @s ~ ~ ~ facing entity @e[tag=found,sort=nearest,limit=1] eyes
execute unless entity @e[tag=fast_loop,limit=1] as @e[tag=target] at @s run tp @s ~ ~ ~ facing entity @e[tag=priority,distance=..303,sort=random,limit=1] eyes
execute unless entity @e[tag=fast_loop,limit=1] as @e[tag=target] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..255,sort=nearest,limit=1] eyes
execute as @e[tag=target] at @s run tp @s ^ ^0.07 ^0.7
execute at @e[tag=fireball] run particle explosion ~ ~1.5 ~ 0 0 0 0 0 force
execute at @e[tag=s1] run particle flame ~ ~1.5 ~ 0 0 0 .2 11 force
execute at @e[tag=s2] run particle end_rod ~ ~1.5 ~ 0 0 0 .2 11 force
execute at @e[tag=fireball] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.2 0.
execute as @e[tag=wither_main] at @s positioned ~ ~8.1 ~ run function custom:projectile_stabilize
execute as @e[tag=timercheck] at @s unless entity @e[tag=fireball,distance=..7,limit=1] run function custom:wither_projectile
execute at @e[tag=timercheck] as @e[tag=wither_main,sort=nearest,limit=1] at @s positioned ~ 0 ~ if entity @s[distance=..99] at @s run function custom:wither_charge

execute as @e[tag=despawn] at @s if entity @s[y=-64,dy=64] run kill @s
execute as @e[tag=wither_main] at @s run function custom:wither_update

#tag @e[tag=faced] remove faced
#execute at @e[tag=wither_load] run tag @e[distance=..127,tag=living,type=!bat] add faced
#execute at @e[tag=wither_load] run tag @e[distance=..127,tag=undead,type=!wither] add faced
#execute at @e[tag=faced] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["wither_face"]}
#execute as @e[tag=wither_face] at @s run tp @s ~ ~ ~ facing entity @e[tag=wither_load,sort=nearest,limit=1] eyes
#execute as @e[tag=faced] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=wither_face,distance=..1,sort=nearest,limit=1] Rotation[0]
#execute as @e[tag=faced] at @s store result entity @s Rotation[1] float 1 run data get entity @e[tag=wither_face,distance=..1,sort=nearest,limit=1] Rotation[1]
#kill @e[tag=wither_face]

execute as @e[tag=wither_target,tag=!dead] at @s run function custom:crystal_orbit
execute as @e[tag=wither_orbit] at @s run function custom:crystal_orbit2
execute as @e[tag=wither_spin,scores={wither_id=32768..}] at @s run tp @s ~ ~ ~ ~-13 0
execute as @e[tag=wither_spin,scores={wither_id=..32767}] at @s run tp @s ~ ~ ~ ~13 0
execute as @e[tag=summoned] at @s run function custom:wither_spawn_phase

execute as @e[tag=projectile_freeze] at @s run function custom:projectile_freeze
execute at @e[tag=ultrablast] run particle end_rod ~ ~ ~ .7 .7 .7 0.05 2 force
scoreboard players add @e[tag=supercharged] var0 1
execute at @e[tag=supercharged,scores={var0=..191}] run kill @e[tag=blast,distance=..2.5,sort=nearest,limit=1]
execute as @e[tag=supercharged,scores={var0=192..}] run kill @s

execute as @e[tag=blast] at @s run function custom:blast

execute as @e[tag=wither_target] at @s run function custom:wither_sprite

execute unless entity @e[tag=fast_loop,limit=1] as @e[tag=wither_main] at @s positioned ~ ~8.1 ~ run function custom:wither_attack

execute at @e[tag=attack] run summon area_effect_cloud ~ ~-8.1 ~ {Duration:400,Tags:["summontimer"]}
execute at @e[tag=attack] run playsound minecraft:entity.evoker.prepare_summon neutral @a ~ ~ ~ 4. 0.6
execute as @e[tag=timercheck] at @s unless entity @e[tag=point_crystal,distance=..6,limit=1] run function custom:explode_self
execute as @e[tag=glow_crystal] at @s run function custom:glow_crystal
tag @e[tag=attack] remove attack
kill @e[tag=wither_rando]

execute unless entity @e[tag=global_delay,limit=1] at @e[tag=wither_main] unless block ~ ~-1 ~ air run summon experience_orb ^ ^-.5 ^1 {Value:0,Tags:["bats"]}
execute at @e[tag=bats] unless entity @e[type=bat,distance=..2,limit=1] run summon bat ~ ~-1 ~ {NoAI:1b,Tags:["target_select","target","despawn"],Silent:1b,ActiveEffects:[{Id:20,Duration:999999},{Id:11,Amplifier:4,Duration:51}]}
execute at @a as @e[type=bat,tag=target,distance=..16] run data merge entity @s {ActiveEffects:[]}
execute at @e[type=bat,tag=target] run kill @e[type=bat,distance=.1..5]
execute as @e[tag=spin_crystal] at @s run function custom:minion_destroy

execute as @e[tag=wither_sprite] at @s run execute unless entity @e[tag=wither_target,distance=..32,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["wither_kill","wither_death_id"]}
execute at @e[tag=wither_kill] run summon wither ~ ~5 ~ {NoGravity:1b,Invul:160,Tags:["wither_dead","wither_target","wither_death_id"],ActiveEffects:[{Id:14b,Duration:330}]}
execute at @e[tag=wither_kill] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 2. 0.5 1.
execute at @e[tag=wither_kill] run kill @e[tag=target,distance=..127]
execute as @e[tag=wither_sprite] at @s run execute store result score @e[tag=wither_death_id,sort=nearest,distance=..32,limit=2] wither_id run scoreboard players get @s wither_id
execute as @e[tag=wither_dead] at @s run function custom:wither_dead

kill @e[tag=bats]
execute at @e[tag=supercharged] unless entity @e[type=wither,distance=..2,limit=1] run summon area_effect_cloud ^ ^0.25 ^-0.25 {Tags:["blast","bats"],Duration:2}
execute at @e[tag=supercharged] unless entity @e[type=wither,distance=..2,limit=1] run particle nautilus ~ ~ ~ 0.1 0 0.1 0.005 3 force
execute unless entity @e[tag=fast_loop,limit=1] at @e[tag=wither_main] run summon area_effect_cloud ~ ~2 ~ {Duration:4,Tags:["break_box"]}
execute as @e[tag=wither_sprite] run data merge entity @s {Invul:2500}
execute unless entity @e[tag=global_delay,limit=1] run tag @e[tag=found] remove found
execute unless entity @e[tag=global_delay,limit=1] as @e[tag=wither_main] at @e[tag=target_select,sort=random,limit=12] positioned ~-128 ~-8 ~-128 run execute as @e[type=!item,type=!player,type=!trident,type=!wither_skull,type=!wither,type=!experience_orb,type=!area_effect_cloud,type=!end_crystal,type=!bat,type=!armor_stand,type=!wither_skeleton,type=!arrow,type=!dragon_fireball,type=!fireball,type=!falling_block,tag=!found,tag=!launch,tag=!target,dx=256,dy=256,dz=256] run tag @s add found

execute unless entity @e[tag=found,limit=1] at @e[tag=target] run kill @e[tag=target,distance=0.1..2,limit=1]
execute at @e[tag=target] run effect give @e[distance=..3,type=!item,type=!experience_orb,type=!area_effect_cloud,type=!bat] wither 2 0
tag @e[tag=target] add break_stone
execute at @e[tag=target] run function custom:break_blocks
execute at @e[tag=target] run setblock ~ ~ ~ fire keep
execute as @e[tag=target] at @s if block ~ ~-6 ~ air run tp @s ~ ~-.5 ~

execute as @e[type=wither_skull] unless entity @s[nbt={Silent:1b}] run data merge entity @s {Silent:1b}
execute unless entity @e[tag=global_delay,limit=1] run execute at @e[tag=spin_crystal] unless entity @e[tag=minion,distance=..6,limit=1] if entity @p[distance=..96] run summon creeper ~ ~ ~ {powered:1,Fuse:0}
execute unless entity @e[tag=global_delay,limit=1] run execute at @e[tag=spin_crystal] unless entity @e[tag=minion,distance=..6,limit=1] if entity @p[distance=..96] run kill @e[tag=raised,distance=..4]
execute as @e[tag=orbit] at @s run function custom:crystal_stabilize
execute as @e[tag=wither_main] positioned ~ ~5 ~ unless entity @e[type=tnt,distance=..16,limit=1] run data merge entity @s {ActiveEffects:[{Id:11,Amplifier:2,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=wither_main] positioned ~ ~5 ~ unless entity @e[tag=spin_crystal,distance=..16,limit=1] run data merge entity @s {ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute unless entity @e[tag=global_delay,limit=1] run execute at @e[tag=check] unless entity @e[tag=table,distance=..80,limit=1] run fill ~-31.5 ~-11 ~-31.5 ~31.5 ~-4 ~31.5 command_block[facing=up]{Command:"summon silverfish ~ ~ ~ {Tags:['tableset','table' ],NoAI:1b,Attributes:[{Name:generic.maxHealth,Base:3}],Silent:1b,ActiveEffects:[{Id:6b,Duration:999999,ShowParticles:0b},{Id:14b,Duration:999999,ShowParticles:0b}]}",auto:1} replace crafting_table
execute unless entity @e[tag=global_delay,limit=1] run execute as @e[tag=wither_main] at @e[tag=check2,sort=random,limit=7] unless entity @e[tag=table,distance=..80,limit=1] run fill ~-15.5 ~-11.5 ~-15.5 ~15.5 ~11.5 ~15.5 command_block[facing=up]{Command:"summon silverfish ~ ~ ~ {Tags:['tableset','table'],NoAI:1b,Attributes:[{Name:generic.maxHealth,Base:3}],Silent:1b,ActiveEffects:[{Id:6b,Duration:999999,ShowParticles:0b},{Id:14b,Duration:999999,ShowParticles:0b}]}",auto:1} replace crafting_table
execute at @e[tag=tableset] run setblock ~ ~ ~ crafting_table
execute as @e[tag=tableset] run tag @s remove tableset
execute unless entity @e[tag=global_delay,limit=1] run function custom:target_priority