execute as @e[scores={wither_id=1..}] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[scores={wither_id=1..}] compare_id -= @s wither_id

execute as @e[tag=wither_orbit,scores={compare_id=0}] at @s positioned ^ ^5 ^ run tp @e[tag=angle1,scores={compare_id=0}] ^ ^ ^-12 facing entity @s
execute as @e[tag=wither_orbit,scores={compare_id=0}] at @s positioned ^ ^5 ^ run tp @e[tag=angle2,scores={compare_id=0}] ^10.3923 ^ ^6 facing entity @s
execute as @e[tag=wither_orbit,scores={compare_id=0}] at @s positioned ^ ^5 ^ run tp @e[tag=angle3,scores={compare_id=0}] ^-10.3923 ^ ^6 facing entity @s