tag @a[scores={ds_eightfolddid=6..}] add enddedrightfold
tag @a[tag=enddedrightfold] remove eightfolddid
tag @a[tag=enddedrightfold] remove zenitsudoingsixfold
scoreboard players set @a[tag=enddedrightfold] ds_eightfolddid 0
tag @a[tag=enddedrightfold] remove eightfolddid
execute as @a[tag=enddedrightfold] at @s run tp @s ~ ~ ~
execute as @a[tag=enddedrightfold] at @s run tag @s add flyingbug
execute as @a[tag=enddedrightfold] at @s run summon shulker ~ ~2.1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["flyingbug"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:10000,ShowParticles:0b}]}



tag @a[tag=enddedrightfold] remove zenitsudoingsixfold
tag @a[tag=enddedrightfold] remove enddedrightfold