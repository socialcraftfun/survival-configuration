#
# Меню для покупки голов
heads_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи декоративную голову!
    size: 27
    gui: true
    slots:
    - [] [] [] [] [player_head_item] [] [] [] []
    - [] [] [deco_head_item] [] [food_head_item] [] [animal_head_item] [] []
    - [] [] [misc_head_item] [] [plant_head_item] [] [alphabet_head_item] [] []
#
# Команда для меню выбора головы
heads_cmd:
    type: command
    name: stars_heads
    description: Меню магазина голов
    usage: /stars_heads
    permission: stars.heads
    permission message: У вас нет разрешения использовать эту команду
    script:
    - inventory open d:heads_inv
#
player_head_item:
    type: item
    material: <player.skull_item>
    display name: <&5>Голова игрока
    lore:
    - <&2>Цена <blue>30<&2> алмазов
#
heads_inv_world:
    type: world
    events:
        after player clicks player_head_item in heads_inv:
        - inventory open d:player_head_item_inv
#
player_head_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Голову игрока?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
player_head_item_inv_world:
    type: world
    events:
        after player clicks yes_item in player_head_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.money> < 30:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно алмазов, нужно: 30"
            - narrate <&5>---------------------------
            - stop
        - execute as_server "eco take <player.name> 30"
        - give player_head_item
        - inventory close
        - narrate <&5>-------------------------
        - narrate "Ты купил <&5>Голову игрока"
        - narrate <&5>-------------------------
        after player clicks no_item in player_head_item_inv:
        - inventory close
        after player clicks back_item in player_head_item_inv:
        - inventory open d:heads_inv
#
# #
# deco_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Декорации
#     mechanisms:
#         skull_skin: 72107ad1-7ab2-5323-876d-d287ea75aa08||e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRlZmU5MGUzZjM0MjAwMDVlN2UzMGZiZThkMjE3ZTBhNzljNjVlOTNlZjdlYjMxMmZkYzA2YTgwYWJiZGMwZCJ9fX0=||cryinglittlegirl
# #
# food_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Еда
#     mechanisms:
#         skull_skin: d1375075-c727-40ad-bcce-7e4277099e30||eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZlZjFjMjVmNTE2ZjJlN2Q2Zjc2Njc0MjBlMzNhZGNmM2NkZjkzOGNiMzdmOWE0MWE4YjM1ODY5ZjU2OWIifX19
# #
# animal_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Животные
#     mechanisms:
#         skull_skin: 219a1585-6e9e-49fb-aba0-77b6937a3ed1||eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDliMjJjNmZjYTBlMDZiYzFmNWFhY2JhZDY2NDA2ZWRmNmRhNzk4MDY5MjViOTI0Y2FiOGU0Y2JkYmRjZDUyYSJ9fX0=
# #
# misc_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Разное
#     mechanisms:
#         skull_skin: 6c466181-a803-410f-8297-1ad51faadcd1||ewogICJ0aW1lc3RhbXAiIDogMTY3ODIzMTYyOTA2NywKICAicHJvZmlsZUlkIiA6ICIzNmMxODk4ZjlhZGE0NjZlYjk0ZDFmZWFmMjQ0MTkxMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJMdW5haWFuIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2FlZmIwOGIxZGViYzNmODEwZTEzNmNkYzVkMTcxZjc3NzZkN2M1MThkNWE1ZWRhNjdjM2NlMmMzOGZjYTAzYjkiCiAgICB9CiAgfQp9||CkURx7DM7R4zByeCSxUaBozHt4Kfov4PfSxdlV5NXeCQPzgVEt4z27at4IyptP2sGYeMRduTuFMupUsa04rvy9rk4n2M7WNMm15wmzNhmWl1T+PBuF0LVUTCR1Tykg16H01jxIcZN/yb/EQCRzAaFJPNaZxqEQG5AzZCn9KGu4iHsqNLtnxVL874Ov8dTza/Wtlcf7YZF24O+W3BmM0yMC3bAWVjX0JvVJAioN4OAmuXUml5tJweJGGCB372piR9dH8P98Tz6lerURKnhQXB7wPz4yR9f8nwQ1+8X3NoHEQWNAUyaEH2ALN6ZLD8mE+nQhG9EpY1sGSc5OxXYPGKTPwEpBIm71Q9eOxAwFlIco4LWTf91wpx0zUMaqxhE3A0S1kVu6Bzd+cx+Ni+dUXh6pkYqoTHApCxN9uL2RDuzWn8yXfuzvC4vPQ3wtF8LDcq/03UMEmUiwKQ6R/RaOfSi1qSMEsYac2YmJdMv43g0r+Kv3TfiY37fE2sT3ETIjM6soRHAHB362rRFdVDUxW9AdE7mvGjjSHHkUHpyVgMGZK6L2ZQUEcaKVGY8jMpuqZdKDOhMvRMamzwG01qUV7gjGZknp4HOktsLhemOpr21WDxweDTEFpRwWOlifpNem4zKQ/DFzJ0LlBFIfQ7mqv7KNJQxCegdCj0p/ZEBf0+yJg=
# #
# plant_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Растения
# #
# alphabet_head_item:
#     type: item
#     material: player_head
#     display name: <&5>Буквы и цифры
# #