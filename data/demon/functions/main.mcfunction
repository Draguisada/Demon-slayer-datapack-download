function demon:main2



#//
execute as @a[scores={cooldown=..0},tag=cooldown] run tag @s remove cooldown
execute as @a[scores={cooldown=1..}] run scoreboard players remove @s cooldown 1
#//
execute as @a[scores={cooldownrainbow=..0},tag=cooldownrainbow] run tag @s remove cooldownrainbow
execute as @a[scores={cooldownrainbow=1..}] run scoreboard players remove @s cooldownrainbow 1
#//
execute as @a[scores={kagura=..0},tag=kagura] run tag @s remove kagura
execute as @a[scores={kagura=1..}] run scoreboard players remove @s kagura 1
#//
execute as @a[scores={10form=..0},tag=10form] run tag @s remove 10form
execute as @a[scores={10form=1..}] run scoreboard players remove @s 10form 1
#//
execute as @a[scores={rengoku=..0},tag=rengoku] run tag @s remove rengoku
execute as @a[scores={rengoku=1..}] run scoreboard players remove @s rengoku 1
#//
execute as @a[scores={9form=..0},tag=9form] run tag @s remove 9form
execute as @a[scores={9form=1..}] run scoreboard players remove @s 9form 1
#//
execute as @a[scores={fourthsound=..0},tag=fourthsound] run tag @s remove fourthsound
execute as @a[scores={fourthsound=1..}] run scoreboard players remove @s fourthsound 1
#//
execute as @a[scores={soundfifth=..0},tag=soundfifth] run tag @s remove soundfifth
execute as @a[scores={soundfifth=1..}] run scoreboard players remove @s soundfifth 1
#//
execute as @e[type=armor_stand,tag=waterdragon] run scoreboard players add @s cooldown 1
