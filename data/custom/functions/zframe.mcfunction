execute in overworld run forceload remove all
execute in the_nether run forceload remove all
execute in the_end run forceload remove all
execute in overworld run forceload add -100 -100 100 100
execute in the_nether run forceload add -100 -100 100 100
execute in the_end run forceload add -100 -100 100 100

execute at @a[scores={deaths=1..}] as @e[tag=wither_main,sort=random,limit=1] run data merge entity @s {ActiveEffects:[{Id:7,Amplifier:2,Duration:1}]}
scoreboard players reset @a[scores={deaths=1..}] deaths
execute as @e[tag=!typed] run function custom:identify_mobs
gamerule commandBlockOutput false

execute as @e[type=turtle,nbt={NoAI:1b},tag=!initialized] at @s positioned ~ ~0.25 ~ run function custom:wither_summon

execute as @e[tag=fire_trail] run function custom:projectile_trail2
execute at @e[tag=nuke] run kill @e[tag=fire_trail,distance=..8]
execute at @e[tag=nuke] run summon creeper ~ ~ ~ {powered:1b,Fuse:0,ExplosionRadius:127}
execute as @e[tag=fireball_check] run function custom:projectile_explode
execute at @e[type=fireball,tag=fire_trail] positioned ^ ^ ^6 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["f_proj","fireball_check"]}
execute at @e[type=dragon_fireball,tag=fire_trail] positioned ^ ^ ^6 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["d_proj","fireball_check"]}

execute if entity @e[tag=wither_load,limit=1] run function custom:wither_loop
execute at @e[type=end_crystal,tag=!spin_crystal,tag=!perma_crystal] unless entity @e[type=turtle,distance=..1,limit=1] run summon turtle ~ ~0.5 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Age:-999999,ActiveEffects:[{Id:6b,Amplifier:4b,Duration:999999,ShowParticles:0b},{Id:12b,Duration:999999,ShowParticles:0b},{Id:14b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:3}]}
execute as @e[type=turtle,nbt={NoAI:1b}] at @s unless entity @e[type=end_crystal,distance=..2] run summon tnt ~ ~ ~ {Tags:["vanilla"]}
execute as @e[type=turtle,nbt={NoAI:1b}] at @s unless entity @e[type=end_crystal,distance=..2] run kill @s
function custom:exploding_arrow

execute unless entity @e[tag=global_delay,limit=1] run function custom:generatestructures
execute as @e[tag=turret] at @s unless entity @e[type=magma_cube,distance=..5,nbt={Size:4}] run function custom:nether_turret_explode
execute as @e[tag=flame] at @s run function custom:blaze

function custom:tornado_start
execute as @e[tag=global_delay] at @s unless entity @p run kill @s
execute at @r unless entity @e[tag=global_delay,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:20,Tags:["global_delay"]}

execute as @e[tag=dragon_check] at @s unless entity @e[type=ender_dragon,limit=1] run setblock 0 66 0 dragon_egg
execute as @e[tag=dragon_check] at @s unless entity @e[type=ender_dragon,limit=1] run kill @s
execute in the_end positioned 0 0 0 as @e[type=ender_dragon] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["dragon_check"]}

execute as @e[type=trident,tag=!channeling,nbt={Trident:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}}] run data merge entity @s {crit:1b,Tags:["channeling"]}
execute as @e[type=trident,tag=!channeling,nbt={Trident:{id:"minecraft:trident",Count:1b,tag:{HideFlags:61}}}] run data merge entity @s {crit:1b,Tags:["channeling","tri_nuke"]}
execute at @e[tag=channeling2] run kill @e[tag=channeling,distance=...5]
execute at @e[tag=channeling] run kill @e[tag=channeling2,distance=..5,limit=1]
execute at @e[tag=channeling2,tag=!tri_nuke_2] run summon lightning_bolt ~ ~ ~
execute at @e[tag=channeling2,tag=!tri_nuke_2] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["blast2","despawn","nocluster","channeled"]}
execute as @e[tag=tri_nuke_2] at @s run function custom:projectile_explode
execute at @e[tag=channeling,tag=!tri_nuke] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["channeling2"]}
execute at @e[tag=tri_nuke] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["channeling2","tri_nuke_2","f_proj"]}
execute at @e[tag=channeling] as @e[tag=channeling2,sort=nearest,limit=1] run tp @s ^ ^ ^ ~ ~
execute as @e[tag=channeling,nbt={inGround:1b}] run kill @s

execute as @e[tag=cluster] run function custom:cluster_update
execute as @e[tag=blast2] at @s run function custom:blast

execute as @a at @s run function custom:player_entity

execute at @e[tag=launch_blocks] run function custom:tornado_heavy
execute as @e[type=tnt] run function custom:tnt_entity
execute as @e[tag=tnt_check,scores={e_check=1..},sort=random,limit=1] at @s run function custom:large_explode
execute at @e[type=tnt,tag=!vanilla] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["tnt_check"]}

execute as @e[type=armor_stand] run function custom:armor_stand_entity

execute as @e[tag=e_shockwave] at @s run function custom:shockwave_main
execute at @e[tag=tnt_check] run tp @e[type=tnt,distance=..5,sort=nearest,limit=64] ~ ~ ~
execute at @e[tag=tnt_check] as @e[type=tnt,distance=..5,sort=nearest,limit=64] run data merge entity @s {Glowing:1b}
scoreboard players reset @e[tag=tnt_check] e_strength
execute at @e[type=tnt,tag=!vanilla] as @e[tag=tnt_check] run scoreboard players add @s e_strength 1
execute as @e[tag=tnt_check] run scoreboard players operation @s e_check = @s e_strength
execute as @e[tag=explosion_flash] at @s run particle flash ~ ~ ~ 0 0 0 0 1 force

scoreboard players set @e[tag=player_id] player_id 0
execute as @e[tag=player_id,limit=1] at @s run function custom:player_id
kill @e[tag=player_id,limit=1]
tag @e[tag=assigned] remove assigned

scoreboard players reset @a var0
scoreboard players reset @a var1

execute as @e[tag=despawn,tag=!no_destroy,nbt={inGround:1b}] at @s positioned ^ ^ ^.4 run function custom:break_blocks
kill @e[tag=despawn,nbt={inGround:1b}]
execute at @e[tag=blade_bullet,tag=level3] run kill @e[tag=blade3,distance=..4,sort=nearest,limit=5]
execute as @e[tag=blade3] at @s positioned ^ ^ ^.1 run function custom:blade3
execute as @e[tag=king] at @s unless entity @e[tag=blade3,distance=..4,limit=1] run data merge entity @s {DeathTime:19,Health:0}
execute at @e[tag=exp_spawn] run summon experience_orb ~ ~ ~ {Value:1}

execute as @e[tag=despawn] run function custom:cs_bullet
execute as @a run function custom:cs_weapon_after

execute in overworld positioned 0 0 0 unless entity @e[tag=rand_end,distance=..2,limit=1] run function custom:rando_set
execute in the_nether positioned 0 0 0 unless entity @e[tag=rand_end,distance=..2,limit=1] run function custom:rando_set
execute in the_end positioned 0 0 0 unless entity @e[tag=rand_end,distance=..2,limit=1] run function custom:rando_set

execute as @e[tag=cs_rando,sort=random,limit=1] run function custom:rando_position

execute as @e[type=end_crystal] at @s positioned ~ ~-1 ~ if block ^ ^ ^ dispenser run function custom:craft