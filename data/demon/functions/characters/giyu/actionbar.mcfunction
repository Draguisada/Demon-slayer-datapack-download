#1th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=1}] run title @s actionbar {"translate":"water.first.action","color":"blue","bold": true}
#2th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=2}] run title @s actionbar {"translate":"water.second.action","color":"blue","bold": true}
#3th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=3}] run title @s actionbar {"translate":"water.third.action","color":"blue","bold": true}
#4th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=4}] run title @s actionbar {"translate":"water.four.action","color":"blue","bold": true}
#5th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=5}] run title @s actionbar {"translate":"water.fifth.action","color":"blue","bold": true}
#6th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=6}] run title @s actionbar {"translate":"water.sixth.action","color":"blue","bold": true}
#7th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=7}] run title @s actionbar {"translate":"water.seventh.action","color":"blue","bold": true}
#8th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=8}] run title @s actionbar {"translate":"water.eight.action","color":"blue","bold": true}
#9th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=9}] run title @s actionbar {"translate":"water.nine.action","color":"blue","bold": true}
#10th form giyu
execute as @s[tag=!cooldown,scores={ds_giyuattack=10}] run title @s actionbar {"translate":"water.tenth.action","color":"blue","bold": true}
#elevent form giyu 
execute as @s[tag=!cooldown,tag=hashira,scores={ds_giyuattack=11}] run title @s actionbar {"translate":"water.calm.action","color":"blue","bold": true}
execute run execute as @s[scores={ds_giyuattack=12..},tag=hashira] run scoreboard players set @s ds_giyuattack 1
execute run execute as @s[scores={ds_giyuattack=11..},tag=!hashira] run scoreboard players set @s ds_giyuattack 1
tellraw @a[tag=debugrepeat] "action bar water"