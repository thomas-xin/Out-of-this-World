execute store result score @s health_target run data get entity @s Health 2
scoreboard players set @s lp2 0
execute store result score @s lp2 run data get entity @s HurtTime

execute unless entity @s[scores={lp2=1..}] run effect give @s[type=#custom:living,scores={health_target=5..}] instant_damage 1
execute unless entity @s[scores={lp2=1..}] run effect give @s[type=#custom:undead,scores={health_target=5..}] instant_health 1
execute unless entity @s[scores={lp2=1..}] at @s[type=ender_dragon,scores={health_target=5..}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
scoreboard players remove @s[type=!end_crystal,scores={health_target=5..},nbt={HurtTime:0}] damaged 4

scoreboard players operation @s health_target -= @s damaged
scoreboard players operation @s health_target -= @s damaged
scoreboard players add @s health_target 1
scoreboard players reset @s damaged

execute if entity @s[type=end_crystal] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7}
execute if score @s[type=ender_dragon] health_target matches ..0 run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4}
execute if score @s[tag=killable] health_target matches ..0 at @s run damage @s 2147483648 trident by @p[distance=.01..]

execute if score @s health_target matches 1.. store result entity @s Health float 0.5 run scoreboard players get @s health_target
data merge entity @s[scores={health_target=1..}] {HurtTime:20}