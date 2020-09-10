data merge entity @e[tag=wither_sprite,sort=nearest,limit=1] {Health:99f}
execute positioned ~ ~1 ~ run function custom:break_frame_1
particle large_smoke ~ ~ ~ 0.6 0 0.6 0.01 6 force
particle squid_ink ~ ~ ~ 0.4 0 0.4 0.01 12 force
effect give @e[distance=..2.5,tag=living] instant_damage 1 0