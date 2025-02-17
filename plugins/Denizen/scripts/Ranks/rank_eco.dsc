#
# Посмотреть сколько ресов
promote_eco:
    type: task
    script:
    # Переменные
    - define ticks <player.statistic[PLAY_ONE_MINUTE]>
    - flag player rank_met_eco
    - narrate ------------------------------
    - narrate "Статистика игрока <player.name>"
    # Ранг
    # Время игры
    - if <duration[<[ticks]>t].in_hours> >= 5:
        - narrate "<green>Время онлайн: <&r><duration[<[ticks]>t].formatted><green>/<&r>5h"
    - else:
        - narrate "<red>Время онлайн: <&r><duration[<[ticks]>t].formatted><red>/<&r>5h"
        - flag player rank_met_eco:!
    # Опыт
    - if <player.xp_level> >= 50:
        - narrate "<green>Опыт: <&r><player.xp_level><green>/<&r>50"
    - else:
        - narrate "<red>Опыт: <&r><player.xp_level><red>/<&r>50"
        - flag player rank_met_eco:!
    # Баланс
    - if <player.money> >= 128:
        - narrate "<green>Баланс: <&r><player.money><green>/<&r>128"
    - else:
        - narrate "<red>Баланс: <&r><player.money><red>/<&r>128"
        - flag player rank_met_eco:!
    # Звёзды Почёта
    - if <player.playerpoints_points> >= 1:
        - narrate "<green>Звёзды Почёта: <&r><player.playerpoints_points><green>/<&r>1"
    - else:
        - narrate "<red>Звёзды Почёта: <&r><player.playerpoints_points><red>/<&r>1"
        - flag player rank_met_eco:!
    # Ростки
    - if <player.inventory.quantity_item[cherry_sapling]> >= 64:
        - narrate "<green>стак сажанцев вишни: есть"
    - else:
        - narrate "<red>стак сажанцев вишни: нет"
        - flag player rank_met_eco:!
    # Листва
    - if <player.inventory.quantity_item[azalea_leaves]> >= 64:
        - narrate "<green>стак листьев азалии: есть"
    - else:
        - narrate "<red>стак листьев азалии: нет"
        - flag player rank_met_eco:!
    # Плакучая лоза красная
    - if <player.inventory.quantity_item[weeping_vines]> >= 64:
        - narrate "<green>стак плакучей лозы: есть"
    - else:
        - narrate "<red>стак плакучей лозы: нет"
        - flag player rank_met_eco:!
    # Кувшиницы
    - if <player.inventory.quantity_item[pitcher_plant]> >= 5:
        - narrate "<green>5 кувшиниц: есть"
    - else:
        - narrate "<red>5 кувшиниц: нет"
        - flag player rank_met_eco:!
    # Факельник
    - if <player.inventory.quantity_item[torchflower]> >= 5:
        - narrate "<green>5 факельников: есть"
    - else:
        - narrate "<red>5 факельников: нет"
        - flag player rank_met_eco:!
    # Паутина TODO добавить генерацию паутины пауками
    - if <player.inventory.quantity_item[cobweb]> >= 32:
        - narrate "<green>32 паутины: есть"
    - else:
        - narrate "<red>32 паутины: нет"
        - flag player rank_met_eco:!
    # КУСТЫ
    - if <player.inventory.quantity_item[dead_bush]> >= 64:
        - narrate "<green>64 сухих кустов: есть"
    - else:
        - narrate "<red>64 сухих кустов: нет"
        - flag player rank_met_eco:!
    - narrate ------------------------------
    # Assign if met requirement
    - if <player.has_flag[rank_met_eco]>:
      - experience take level 50
      - money take quantity:128
      - playerpoints take 1
      - take item:cherry_sapling quantity:64
      - take item:azalea_leaves quantity:64
      - take item:weeping_vines quantity:64
      - take item:pitcher_plant quantity:5
      - take item:torchflower quantity:5
      - take item:cobweb quantity:32
      - take item:dead_bush quantity:16
      - execute as_server "lp user <player.name> parent add eco"
      - playsound <server.online_players> sound:ENTITY_PLAYER_LEVELUP pitch:0.8
      - announce "<&b>Поздравляем нового <&2>Эколога <&r><&o><&l><player.name><&b>!"
      - ~discordmessage id:sc_chat channel:<server.flag[sc_chat]> "***Поздравляем** нового Эколога **<player.name>**!*"
