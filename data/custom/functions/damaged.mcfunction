execute store result score @s health_target run data get entity @s Health 2
scoreboard players set @s var2 0
execute store result score @s var2 run data get entity @s HurtTime

execute unless entity @s[scores={var2=1..}] run effect give @s[type=#custom:living,scores={health_target=5..}] instant_damage 1
execute unless entity @s[scores={var2=1..}] run effect give @s[type=#custom:undead,scores={health_target=5..}] instant_health 1
execute unless entity @s[scores={var2=1..}] at @s[type=ender_dragon,scores={health_target=5..}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
scoreboard players remove @s[type=!end_crystal,scores={health_target=5..},nbt={HurtTime:0}] damaged 4

scoreboard players operation @s health_target -= @s damaged
scoreboard players operation @s health_target -= @s damaged
scoreboard players add @s health_target 1
scoreboard players reset @s damaged

execute if score @s health_target matches ..0 if entity @s[type=!blaze,type=!guardian,type=!evoker,type=!elder_guardian,type=!iron_golem,type=!piglin_brute,type=!ravager,type=!wither] run summon experience_orb ~ ~ ~ {Value:5}
execute if score @s[type=blaze] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:10}
execute if score @s[type=guardian] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:10}
execute if score @s[type=evoker] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:10}
execute if score @s[type=iron_golem] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:20}
execute if score @s[type=elder_guardian] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:20}
execute if score @s[type=piglin_brute] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:20}
execute if score @s[type=ravager] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:20}
execute if score @s[type=wither] health_target matches ..0 run summon experience_orb ~ ~ ~ {Value:50}

execute if score @s[type=player] health_target matches ..0 run effect give @s instant_damage 1
execute if entity @s[type=end_crystal] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7}
execute if score @s[type=ender_dragon] health_target matches ..0 run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4}
execute if score @s[type=!player,type=!end_crystal,type=!ender_dragon,nbt=!{Invulnerable:1b}] health_target matches ..0 run kill @s
execute if score @s health_target matches 1.. store result entity @s Health float 0.5 run scoreboard players get @s health_target
data merge entity @s[scores={health_target=1..}] {HurtTime:20}