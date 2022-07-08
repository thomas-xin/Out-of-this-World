execute at @s[scores={spur_charge=2..39}] run playsound minecraft:block.note_block.iron_xylophone player @a ~ ~ ~ .3 2
execute at @s[scores={spur_charge=40..99}] run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ .4 0.75
execute at @s[scores={spur_charge=100..299}] run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ .5 1

execute at @s[scores={spur_charge=300}] run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.2
execute at @s[scores={spur_charge=300}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .5 2
effect clear @s[scores={spur_charge=300}] slowness

execute as @s[scores={spur_charge=40..99}] at @s anchored eyes run particle end_rod ^ ^ ^ .35 .35 .35 0 1 normal
execute as @s[scores={spur_charge=100..299}] at @s anchored eyes run particle end_rod ^ ^ ^ .5 .5 .5 .01 1 force
execute as @s[scores={spur_charge=300..}] at @s anchored eyes run particle end_rod ^ ^ ^ .71 .71 .71 .02 1 force
execute as @s[scores={spur_charge=300..}] at @s anchored eyes run particle firework ^ ^ ^ .71 .71 .71 .02 2 force