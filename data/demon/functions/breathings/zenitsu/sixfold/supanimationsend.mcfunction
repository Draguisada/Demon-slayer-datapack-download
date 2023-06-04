execute as @a[tag=zenitsudoingsixfold] at @s run function demon:breathings/zenitsu/eightfold/animationsixfold
execute as @a[tag=zenitsudoingsixfold] at @s run scoreboard players add @s sixfolddid 1
tag @e[tag=kill,type=!#demon:nokill] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 10 minecraft:player_attack by @a[tag=zenitsudoingsixfold,limit=1,sort=nearest]
tag @e[tag=kill,type=!#demon:nokill] remove kill 
tellraw @a[tag=debug] {"text":"damage 10","color":"yellow"}

