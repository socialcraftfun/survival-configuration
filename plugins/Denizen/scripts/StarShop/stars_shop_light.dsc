#
# Меню для покупки блоков света
light_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи блоки света!
    size: 36
    gui: true
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [light_item] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
#
# Команда для меню покупки стойки
light_cmd:
    type: command
    name: stars_light
    description: Меню магазина блоков света
    usage: /stars_light
    permission: stars.light
    permission message: У вас нет разрешения использовать эту команду
    script:
    - inventory open d:light_inv
#
light_item:
    type: item
    material: light
    display name: <&5>Блоки света
    lore:
    - <&2>Цена 1 звезда
    - <&2>за 8 блоков
#
light_inv_world:
    type: world
    events:
        after player clicks light_item in light_inv:
        - inventory open d:light_item_inv
#
light_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить 8 блоков света?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
light_item_inv_world:
    type: world
    events:
        after player clicks yes_item in light_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 1:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 1"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 1
        - give light quantity:8
        - inventory close
        - narrate <&5>-------------------------------
        - narrate "Ты купил <&5>8 Блоков света"
        - narrate <&5>-------------------------------
        after player clicks no_item in light_item_inv:
        - inventory close
        after player clicks back_item in light_item_inv:
        - inventory open d:light_inv
#