#
# Посмотреть сколько ресов
promote_farmer:
    type: task
    script:
    # Переменные
    - define ticks <player.statistic[PLAY_ONE_MINUTE]>
    - flag player rank_met_farmer
    - narrate ------------------------------
    - narrate "Статистика игрока <player.name>"
    # Ранг
    # Время игры
    - if <duration[<[ticks]>t].in_hours> >= 5:
        - narrate "<green>Время онлайн: <&r><duration[<[ticks]>t].formatted><green>/<&r>5h"
    - else:
        - narrate "<red>Время онлайн: <&r><duration[<[ticks]>t].formatted><red>/<&r>5h"
        - flag player rank_met_farmer:!
    # Опыт
    - if <player.xp_level> >= 50:
        - narrate "<green>Опыт: <&r><player.xp_level><green>/<&r>50"
    - else:
        - narrate "<red>Опыт: <&r><player.xp_level><red>/<&r>50"
        - flag player rank_met_farmer:!
    # Баланс
    - if <player.money> >= 128:
        - narrate "<green>Баланс: <&r><player.money><green>/<&r>128"
    - else:
        - narrate "<red>Баланс: <&r><player.money><red>/<&r>128"
        - flag player rank_met_farmer:!
    # Динамит
    - if <player.inventory.quantity_item[tnt]> >= 64:
        - narrate "<green>стак ТНТ: есть"
    - else:
        - narrate "<red>стак ТНТ: нет"
        - flag player rank_met_farmer:!
    # Сено
    - if <player.inventory.quantity_item[hay_block]> >= 64:
        - narrate "<green>стак блоков сена: есть"
    - else:
        - narrate "<red>стак блоков сена: нет"
        - flag player rank_met_farmer:!
    # Мед
    - if <player.inventory.quantity_item[honey_block]> >= 64:
        - narrate "<green>стак медовых блоков: есть"
    - else:
        - narrate "<red>стак медовых блоков: нет"
        - flag player rank_met_farmer:!
    # Семка
    - if <player.inventory.quantity_item[salmon]> >= 64:
        - narrate "<green>стак сёмги: есть"
    - else:
        - narrate "<red>стак лососи: нет"
        - flag player rank_met_farmer:!
    # Белая шерсть
    - if <player.inventory.quantity_item[white_wool]> >= 64:
        - narrate "<green>стак белой шерсти: есть"
    - else:
        - narrate "<red>стак белой шерсти: нет"
        - flag player rank_met_farmer:!
    # Арбузы
    - if <player.inventory.quantity_item[melon]> >= 64:
        - narrate "<green>стак арбузов: есть"
    - else:
        - narrate "<red>стак арбузов: нет"
        - flag player rank_met_farmer:!
    # Инфрит
    - if <player.inventory.quantity_item[blaze_rod]> >= 64:
        - narrate "<green>стак стержней инфрита: есть"
    - else:
        - narrate "<red>стак стержней инфрита: нет"
        - flag player rank_met_farmer:!
    # Жемчуг
    - if <player.inventory.quantity_item[ender_pearl]> >= 64:
        - narrate "<green>стак жемчугов енда: есть"
    - else:
        - narrate "<red>стак жемчугов енда: нет"
        - flag player rank_met_farmer:!
    # Торт
    - if <player.inventory.quantity_item[cake]> >= 16:
        - narrate "<green>16 тортов: есть"
    - else:
        - narrate "<red>16 тортов: нет"
        - flag player rank_met_farmer:!
    #
    - narrate ------------------------------
    # Assign if met requirement
    - if <player.has_flag[rank_met_farmer]>:
      - experience take level 50
      - money take quantity:128
      - take item:tnt quantity:64
      - take item:hay_block quantity:64
      - take item:honey_block quantity:64
      - take item:salmon quantity:64
      - take item:white_wool quantity:64
      - take item:melon quantity:64
      - take item:blaze_rod quantity:64
      - take item:ender_pearl quantity:64
      - take item:cake quantity:16
      - execute as_server "lp user <player.name> parent add farmer"
      - give netherite_hoe quantity:1
      - playsound <server.online_players> sound:ENTITY_PLAYER_LEVELUP pitch:0.8
      - announce "<&b>Поздравляем нового <&6>Фермера <&r><&o><&l><player.name><&b>!"
      - ~discordmessage id:sc_chat channel:<server.flag[sc_chat]> "***Поздравляем** нового Фермера **<player.name>**!*"
