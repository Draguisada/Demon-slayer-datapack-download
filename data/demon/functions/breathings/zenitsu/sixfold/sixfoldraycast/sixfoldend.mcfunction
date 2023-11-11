tag @a[scores={ds_sixfolddid=6..}] add enddedsixfold
tag @a[tag=enddedsixfold] remove sixfolddid
tag @a[tag=enddedsixfold] remove zenitsudoingsixfold
tag @a[tag=enddedsixfold] remove zform
scoreboard players set @a[tag=enddedsixfold] ds_sixfolddid 0
execute as @a[tag=enddedsixfold] at @s run tp @s ~ ~ ~
execute as @a[tag=enddedsixfold] at @s run tag @s add flyingbug
execute as @a[tag=enddedsixfold] at @s run summon shulker ~ ~2.1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["flyingbug"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:10000,ShowParticles:0b}]}


tag @a[tag=enddedsixfold] remove enddedsixfold
