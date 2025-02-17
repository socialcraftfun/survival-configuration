#
# Меню для покупки декоративных стоек
armor_stands_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи стойки для брони!
    size: 36
    gui: true
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [armor_stand_item] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
#
# Команда для меню покупки стойки
armor_stands_cmd:
    type: command
    name: stars_armor_stands
    description: Меню магазина декоративных стоек
    usage: /stars_armor_stands
    permission: stars.armor_stands
    permission message: У вас нет разрешения использовать эту команду
    script:
    - inventory open d:armor_stands_inv
#
armor_stand_item:
    type: item
    material: armor_stand
    display name: <&5>Стойки для брони
    lore:
    - <&7>Возможность создавать
    - <&7>декоративные
    - <&7>стойки для брони
    - <&2>Цена 3 звезды
#
armor_stand_inv_world:
    type: world
    events:
        after player clicks armor_stand_item in armor_stands_inv:
        - inventory open d:armor_stand_item_inv
#
armor_stand_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Стойки для брони?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
armor_stand_item_inv_world:
    type: world
    events:
        after player clicks yes_item in armor_stand_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 3:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 3"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[astools.use]>:
            - inventory close
            - narrate <&5>-----------------------------
            - narrate "У тебя уже есть это разрешение"
            - narrate <&5>-----------------------------
            - stop
        - playerpoints take 3
        - execute as_server "lp user <player.name> permission set easyarmorstands.survival true"
        - inventory close
        - narrate <&5>-------------------------------
        - narrate "Ты купил <&5>Декоративные стойки"
        - narrate "<bold>/eas give</bold> - получить инструмент для редактирования"
        - narrate <&5>-------------------------------
        after player clicks no_item in armor_stand_item_inv:
        - inventory close
        after player clicks back_item in armor_stand_item_inv:
        - inventory open d:armor_stands_inv
#