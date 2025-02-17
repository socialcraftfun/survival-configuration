#
# Меню
menu_stars:
    type: inventory
    inventory: chest
    title: <bold><&5>Магазин звезд
    size: 54
    gui: true
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [item_flags] [] [] [item_heads] [] [] [item_light] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [item_stands] [] [] [] [item_spawners] [] []
    - [] [] [] [] [] [] [] [] []
#
# Команда
cmd_stars:
    type: command
    name: stars
    description: Меню магазина звезд
    usage: /stars
    permission: stars.menu
    script:
    - inventory open d:menu_stars
#
# Функции
world_stars:
    type: world
    events:
        after player clicks item_flags in menu_stars:
        - execute as_player stars_flags
        after player clicks item_heads in menu_stars:
        - execute as_player stars_heads
        after player clicks item_light in menu_stars:
        - execute as_player stars_light
        after player clicks item_stands in menu_stars:
        - execute as_player stars_armor_stands
        after player clicks item_spawners in menu_stars:
        - execute as_player stars_spawners
#
# FLAGS
item_flags:
    type: item
    material: orange_banner
    display name: <&6>Флаги
# HEADS
item_heads:
    type: item
    material: skeleton_skull
    display name: <&3>Миниблоки
# LIGHT
item_light:
    type: item
    material: redstone_lamp
    display name: <&e>Свет
# STAND
item_stands:
    type: item
    material: armor_stand
    display name: <&7>Маникены
# SPAWNER
item_spawners:
    type: item
    material: spawner
    display name: <&d>Спавнера
#