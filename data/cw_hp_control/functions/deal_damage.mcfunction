scoreboard players operation @s armor_old = @s armor
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
execute as @s at @s if score @s armor matches 5.. if score @s hp_dmg < @s armor run scoreboard players operation @s armor_old -= 5 armor_old
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
scoreboard players operation @s hp_dmg -= @s armor_old
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
###

execute store result score @s cw_hp_old run attribute @s minecraft:generic.max_health base get
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
scoreboard players operation #temp cw_hp_old = @s cw_hp_current
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
scoreboard players operation #temp cw_hp_old -= @s hp_dmg
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}


function cw_hp_control:set_hp
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}
effect give @s minecraft:instant_health 1 100
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"hp_dmg"},"color":"blue"}
#tellraw @s[tag=debug] {"score":{"name":"@s","objective":"armor_old"},"color":"red"}