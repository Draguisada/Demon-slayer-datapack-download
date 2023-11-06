function demon:main2



#//
execute as @a[scores={ds_cooldown=1..},tag=nocooldown] run scoreboard players set @s ds_cooldown 0
execute as @a[scores={ds_cooldown=..0},tag=cooldown] run tag @s remove cooldown
execute as @a[scores={ds_cooldown=1..}] run scoreboard players remove @s ds_cooldown 1
#//
execute as @a[scores={ds_cooldownrainbow=..0},tag=cooldownrainbow] run tag @s remove cooldownrainbow
execute as @a[scores={ds_cooldownrainbow=1..}] run scoreboard players remove @s ds_cooldownrainbow 1
#//
execute as @a[scores={ds_kagura=..0},tag=kagura] run tag @s remove kagura
execute as @a[scores={ds_kagura=1..}] run scoreboard players remove @s ds_kagura 1
#//
execute as @a[scores={ds_10form=..0},tag=10form] run tag @s remove 10form
execute as @a[scores={ds_10form=1..}] run scoreboard players remove @s ds_10form 1
#//
execute as @a[scores={ds_rengoku=..0},tag=rengoku] run tag @s remove rengoku
execute as @a[scores={ds_rengoku=1..}] run scoreboard players remove @s ds_rengoku 1
#//
execute as @a[scores={ds_9form=..0},tag=9form] run tag @s remove 9form
execute as @a[scores={ds_9form=1..}] run scoreboard players remove @s ds_9form 1
#//
execute as @a[scores={ds_fourthsound=..0},tag=fourthsound] run tag @s remove fourthsound
execute as @a[scores={ds_fourthsound=1..}] run scoreboard players remove @s ds_fourthsound 1
#//
execute as @a[scores={ds_soundfifth=..0},tag=soundfifth] run tag @s remove soundfifth
execute as @a[scores={ds_soundfifth=1..}] run scoreboard players remove @s ds_soundfifth 1
#//
execute as @e[type=armor_stand,tag=waterdragon] run scoreboard players add @s ds_cooldown 1
