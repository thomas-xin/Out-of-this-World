execute positioned ^ ^ ^1 positioned ~ ~-2 ~ run kill @e[tag=!e_arrow,distance=..4]
summon fireball ^ ^ ^1 {direction:[0.,-.5,0.],power:[0.,-.1,0.],ExplosionPower:12}
summon creeper ^ ^ ^1 {Invulnerable:1b,powered:1b,Fuse:0,ExplosionRadius:8b}
summon lightning_bolt ^ ^ ^1
execute positioned ^ ^ ^1 positioned ~ ~ ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~ ~-8 ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~-8 ~ ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~8 ~ ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~ ~ ~-8 run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~ ~ ~8 run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~-5 ~-5 ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~5 ~-5 ~ run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~ ~-5 ~-5 run function custom:tornado_heavy
execute positioned ^ ^ ^1 positioned ~ ~-5 ~5 run function custom:tornado_heavy
execute positioned ^ ^ ^1 run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 air
execute positioned ^ ^ ^1 run fill ~-3 ~-2 ~-2 ~3 ~2 ~2 air
execute positioned ^ ^ ^1 run fill ~-2 ~-2 ~-3 ~2 ~2 ~3 air
execute positioned ^ ^ ^1 as @e[distance=.01..16] run data merge entity @s {ActiveEffects:[{Id:25b,Amplifier:63b,Duration:5}]}
execute positioned ^ ^ ^1 run effect give @a[distance=.01..16] levitation 1 63
playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 8 0.4
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 7 0.