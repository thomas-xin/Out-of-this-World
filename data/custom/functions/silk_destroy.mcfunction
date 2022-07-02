execute if block ~ ~ ~ stone run summon item ~ ~ ~ {Item:{id:stone,Count:1},Health:80}
execute if block ~ ~ ~ deepslate run summon item ~ ~ ~ {Item:{id:deepslate,Count:1},Health:80}
execute if block ~ ~ ~ #base_stone_overworld run setblock ~ ~ ~ air replace

execute unless block ~ ~ ~ #custom:empty run function custom:silk_destroy_2