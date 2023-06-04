#1th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=1}] run title @s actionbar {"translate":"water.first.action","color":"blue","bold": true}
#2th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=2}] run title @s actionbar {"translate":"water.second.action","color":"blue","bold": true}
#3th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=3}] run title @s actionbar {"translate":"water.third.action","color":"blue","bold": true}
#4th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=4}] run title @s actionbar {"translate":"water.four.action","color":"blue","bold": true}
#5th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=5}] run title @s actionbar {"translate":"water.fifth.action","color":"blue","bold": true}
#6th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=6}] run title @s actionbar {"translate":"water.sixth.action","color":"blue","bold": true}
#7th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=7}] run title @s actionbar {"translate":"water.seventh.action","color":"blue","bold": true}
#8th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=8}] run title @s actionbar {"translate":"water.eight.action","color":"blue","bold": true}
#9th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=9}] run title @s actionbar {"translate":"water.nine.action","color":"blue","bold": true}
#10th form giyu
execute as @s[tag=!cooldown,scores={giyuattack=10}] run title @s actionbar {"translate":"water.tenth.action","color":"blue","bold": true}
#elevent form giyu 
execute as @s[tag=!cooldown,tag=hashira,scores={giyuattack=11}] run title @s actionbar {"translate":"water.calm.action","color":"blue","bold": true}
execute run execute as @s[scores={giyuattack=12..},tag=hashira] run scoreboard players set @s giyuattack 1
execute run execute as @s[scores={giyuattack=11..},tag=!hashira] run scoreboard players set @s giyuattack 1
tellraw @a[tag=debugrepeat] "action bar water"