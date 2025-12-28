#例外
    execute as @a if score @s ucarrot matches 1.. if score @s scool matches 1.. if data entity @s {SelectedItem:{components:{"minecraft:item_model":"minecraft:speed"}}} if items entity @s weapon.offhand *[item_model="minecraft:carrot"] at @s run title @s actionbar "クールダウン中です・・・"
execute as @a if score @s ucarrot matches 1.. if score @s scool matches 0 if data entity @s {SelectedItem:{components:{"minecraft:item_model":"minecraft:speed"}}} if items entity @s weapon.offhand *[item_model="minecraft:carrot"] at @s run scoreboard players set @s speed 9 
execute as @a if score @s ucarrot matches 1.. if score @s scool matches 0 if data entity @s {SelectedItem:{components:{"minecraft:item_model":"minecraft:speed"}}} if items entity @s weapon.offhand *[item_model="minecraft:carrot"] at @s run scoreboard players set @s scool 60

execute as @a if score @s speed matches 9 at @s run effect give @s speed 1 7 true

#制御
    execute as @a if score @s ucarrot matches 1.. at @s run scoreboard players set @s ucarrot 0
    execute as @a if score @s speed matches 1..9 at @s run scoreboard players remove @s speed 1
    execute as @a if score @s scool matches 1..60 at @s run scoreboard players remove @s scool 1

execute as @a if score @s speed matches 2 at @s run effect clear @s speed
execute as @a if score @s speed matches 1 at @s run scoreboard players set @s speed 10

#give
execute as @a if score @s speed matches 1 at @s run give @s potion[potion_contents={potion:"minecraft:strong_swiftness"}]
