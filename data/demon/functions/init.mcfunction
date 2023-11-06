##Schedules
function demon:main5t
function demon:main20t
function demon:main10
function demon:crafting/manager
function demon:trigger/manager
function demon:ranks/manager

#
tellraw @a {"text":"Datapack reloaded (Made by Draguisada)","color": "red","bold": true}

scoreboard objectives add ds_range dummy
scoreboard objectives add ds_numbers dummy
scoreboard objectives add ds_10form dummy
scoreboard objectives add ds_sixfolddid dummy
scoreboard objectives add ds_eightfolddid dummy
scoreboard objectives add ds_9form dummy

scoreboard objectives add ds_kagura dummy
scoreboard objectives add ds_dance dummy
scoreboard objectives add ds_flying dummy
scoreboard objectives add ds_rengoku dummy
scoreboard objectives add ds_zenitsuattack dummy
scoreboard objectives add ds_tanjiroattack dummy
scoreboard objectives add ds_giyuattack dummy
scoreboard objectives add ds_soundattack dummy
scoreboard objectives add ds_beastattack dummy
scoreboard objectives add ds_flameattack dummy
scoreboard objectives add ds_drop minecraft.custom:minecraft.drop
scoreboard objectives add ds_detectclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ds_cooldown dummy
scoreboard objectives add ds_cooldownrainbow dummy
scoreboard objectives add ds_death deathCount
scoreboard objectives add ds_playerenter dummy
scoreboard objectives add ds_step minecraft.custom:sprint_one_cm

scoreboard objectives add ds_fourthsound dummy
scoreboard objectives add ds_soundfifth dummy

##Nichirin maker
scoreboard objectives add ds_daycount dummy

##triggers
scoreboard objectives add ds_helpbook trigger
scoreboard objectives add ds_statusbook trigger
scoreboard objectives add ds_nichirin trigger
scoreboard objectives add ds_helpcreative trigger
scoreboard objectives add ds_maker trigger
scoreboard objectives add ds_feedback trigger
scoreboard objectives add ds_bugreport trigger
scoreboard objectives add ds_nocooldown trigger

##Killed mobs
scoreboard objectives add ds_totalkill minecraft.custom:mob_kills


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

##Numbers to divide the cooldown function
scoreboard players set .0 ds_numbers 10
scoreboard players set .1 ds_numbers 11
scoreboard players set .2 ds_numbers 12
scoreboard players set .3 ds_numbers 13
scoreboard players set .4 ds_numbers 14
scoreboard players set .5 ds_numbers 15
scoreboard players set .6 ds_numbers 16
scoreboard players set .7 ds_numbers 17
scoreboard players set .8 ds_numbers 18
scoreboard players set .9 ds_numbers 19
scoreboard players set .10 ds_numbers 20

##
scoreboard players add @a ds_playerenter 1
function demon:books/book
