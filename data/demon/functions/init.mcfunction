##Schedules
function demon:main5t
function demon:main20t
function demon:main10
function demon:crafting/manager
function demon:trigger/manager
function demon:ranks/manager

#
tellraw @a {"text":"Datapack reloaded (Made by Draguisada)","color": "red","bold": true}
scoreboard objectives add range dummy
scoreboard objectives add numbers dummy
scoreboard objectives add 10form dummy
scoreboard objectives add sixfolddid dummy
scoreboard objectives add eightfolddid dummy
scoreboard objectives add 9form dummy
scoreboard objectives add kagura dummy
scoreboard objectives add dance dummy
scoreboard objectives add flying dummy
scoreboard objectives add rengoku dummy
scoreboard objectives add zenitsuattack dummy
scoreboard objectives add tanjiroattack dummy
scoreboard objectives add giyuattack dummy
scoreboard objectives add soundattack dummy
scoreboard objectives add beastattack dummy
scoreboard objectives add flameattack dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add detectclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add cooldown dummy
scoreboard objectives add cooldownrainbow dummy
scoreboard objectives add death deathCount
scoreboard objectives add playerenter minecraft.custom:minecraft.leave_game
scoreboard objectives add step minecraft.custom:sprint_one_cm

scoreboard objectives add fourthsound dummy
scoreboard objectives add soundfifth dummy

##Nichirin maker
scoreboard objectives add daycount dummy

##triggers
scoreboard objectives add helpbook trigger
scoreboard objectives add statusbook trigger
scoreboard objectives add nichirin trigger
scoreboard objectives add helpcreative trigger
scoreboard objectives add maker trigger
scoreboard objectives add feedback trigger
scoreboard objectives add bugreport trigger

##Killed mobs
scoreboard objectives add totalkill minecraft.custom:mob_kills


#Ranks
team add mizunoto
team add mizunoe
team add kanoto
team add kanoe
team add tsuchinoto
team add tsuchinoe
team add hinoto
team add hinoe
team add kinoto
team add kinoe 

team modify mizunoto color white
team modify mizunoe color gray
team modify kanoto color yellow
team modify kanoe color gold
team modify tsuchinoto color green
team modify tsuchinoe color dark_green
team modify hinoto color dark_aqua
team modify hinoe color blue
team modify kinoto color red
team modify kinoe color dark_red

team modify mizunoto prefix {"text":"<Mizunoto> "}
team modify mizunoe prefix {"text":"<Mizunoe> "}
team modify kanoto prefix {"text":"<Kanoto> "}
team modify kanoe prefix {"text":"<Kanoe> "}
team modify tsuchinoto prefix {"text":"<Tsuchinoto> "}
team modify tsuchinoe prefix {"text":"<Tsuchinoe> "}
team modify hinoto prefix {"text":"<Hinoto> "}
team modify hinoe prefix {"text":"<Hinoe> "}
team modify kinoto prefix {"text":"<Kinoto> "}
team modify kinoe prefix {"text":"<Kinoe> "}


#Hashira ranks
team add flamehashira {"translate":"hashira.flame","color":"red"}
team add waterhashira {"translate":"hashira.water","color":"blue"}
team add thunderhashira {"translate":"hashira.thunder","color":"yellow"}
team add sunhashira {"translate":"hashira.sun","color":"gold"}
team add beasthashira {"translate":"hashira.beast","color":"gray"}
team add soundhashira {"translate":"hashira.sound","color":"white"}

team modify thunderhashira color yellow
team modify waterhashira color blue
team modify sunhashira color gold
team modify flamehashira color red
team modify beasthashira color gray
team modify soundhashira color white

team modify thunderhashira prefix {"translate":"hashira.thunder","color":"yellow"}
team modify waterhashira prefix {"translate":"hashira.water","color":"blue"}
team modify flamehashira prefix {"translate":"hashira.flame","color":"red"}
team modify sunhashira prefix {"translate":"hashira.sun","color":"gold"}
team modify beasthashira prefix {"translate":"hashira.beast","color":"gray"}
team modify soundhashira prefix {"translate":"hashira.sound","color":"white"}

##
function demon:books/book
scoreboard players set @a[scores={playerenter=..0}] playerenter 0

##MathLite (CloudWolf)
##Lower
scoreboard players set in math 1
##Higher
scoreboard players set in1 math 100

##Player damage indicator (CloudWolf)
scoreboard players set 5 armor_old 5

##Particle plot animator (CloudWolf)
scoreboard objectives add cw_particleplot dummy

##Numbers to divide the cooldown function
scoreboard players set .0 numbers 10
scoreboard players set .1 numbers 11
scoreboard players set .2 numbers 12
scoreboard players set .3 numbers 13
scoreboard players set .4 numbers 14
scoreboard players set .5 numbers 15
scoreboard players set .6 numbers 16
scoreboard players set .7 numbers 17
scoreboard players set .8 numbers 18
scoreboard players set .9 numbers 19
scoreboard players set .10 numbers 20

