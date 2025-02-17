#
# Посмотреть сколько ресов
# К гражданину можно вернуться из любого ранга TODO сделать бесплатно
promote_citizen:
    type: task
    script:
    - if <placeholder[rpmaster_human_gender_isset]> == 0:
        - narrate "Для начала установите пол /gender (male|female)"
        - stop
    # Переменные
    - define ticks <player.statistic[PLAY_ONE_MINUTE]>
    # Ранг
    - flag player rank_met_citizen
    - narrate ------------------------------
    - narrate "Статистика игрока <player.name>"
    - narrate "Пол: <&6><placeholder[rpmaster_human_gender]>"
    # Время игры
    - if <duration[<[ticks]>t].in_hours> >= 1:
        - narrate "<green>Время онлайн: <&r><duration[<[ticks]>t].formatted><green>/<&r>1h"
    - else:
        - narrate "<red>Время онлайн: <&r><duration[<[ticks]>t].formatted><red>/<&r>1h"
        - flag player rank_met_citizen:!
    # Опыт
    - if <player.xp_level> >= 30:
        - narrate "<green>Опыт: <&r><player.xp_level><green>/<&r>30"
    - else:
        - narrate "<red>Опыт: <&r><player.xp_level><red>/<&r>30"
        - flag player rank_met_citizen:!
    # Баланс
    - if <player.money> >= 32:
        - narrate "<green>Баланс: <&r><player.money><green>/<&r>32"
    - else:
        - narrate "<red>Баланс: <&r><player.money><red>/<&r>32"
        - flag player rank_met_citizen:!
    # Аметист TODO добавить жителей, продающих аметист
    - if <player.inventory.quantity_item[amethyst_block]> >= 64:
        - narrate "<green>стак аметистовых блоков: есть"
    - else:
        - narrate "<red>стак аметистовых блоков: нет"
        - flag player rank_met_citizen:!
    # Кварц
    - if <player.inventory.quantity_item[quartz_block]> >= 64:
        - narrate "<green>стак кварца: есть"
    - else:
        - narrate "<red>стак кварцовых блоков: нет"
        - flag player rank_met_citizen:!
    # Кирпичи
    - if <player.inventory.quantity_item[bricks]> >= 64:
        - narrate "<green>стак кирпичей: есть"
    - else:
        - narrate "<red>стак кирпичных блоков: нет"
        - flag player rank_met_citizen:!
    #
    - narrate ------------------------------
    # Assign if met requirement
    - if <player.has_flag[rank_met_citizen]>:
      - experience take level 30
      - money take quantity:64
      - playerpoints take 1
      - take item:amethyst_block quantity:64
      - take item:quartz_block quantity:64
      - take item:bricks quantity:64
      - execute as_server "lp user <player.name> parent add citizen"
      - playsound <server.online_players> sound:ENTITY_PLAYER_LEVELUP pitch:0.8
      - announce "<&b>Поздравляем нового <&9>Гражданина <&r><&o><&l><player.name><&b>!"
      - ~discordmessage id:sc_chat channel:<server.flag[sc_chat]> "***Поздравляем** нового Гражданина **<player.name>**!*"
