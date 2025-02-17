#
# Меню для покупки спавнеров страница 1
spawners_page1_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи спавнер мобов!
    size: 36
    gui: true
    slots:
    - [drowned_spawner_item] [blaze_spawner_item] [creeper_spawner_item] [zombified_piglin_spawner_item] [elder_guardian_spawner_item] [ghast_spawner_item] [witch_spawner_item] [slime_spawner_item] [allay_spawner_item]
    - [pig_spawner_item] [cow_spawner_item] [mooshroom_spawner_item] [sheep_spawner_item] [chicken_spawner_item] [rabbit_spawner_item] [hoglin_spawner_item] [cod_spawner_item] [salmon_spawner_item]
    - [cat_spawner_item] [wolf_spawner_item] [horse_spawner_item] [goat_spawner_item] [donkey_spawner_item] [llama_spawner_item] [parrot_spawner_item] [fox_spawner_item] [bee_spawner_item]
    - [] [] [] [] [] [] [] [] [next_page_item]
#
# Команда для меню выбора спавнера
spawners_cmd:
    type: command
    name: stars_spawners
    description: Меню магазина спавнеров
    usage: /stars_spawners
    permission: stars.spawners
    permission message: У вас нет разрешения использовать эту команду
    script:
    - inventory open d:spawners_page1_inv
#
spawners_page1_inv_world:
    type: world
    events:
        after player clicks drowned_spawner_item in spawners_page1_inv:
        - inventory open d:drowned_spawner_item_inv
        after player clicks blaze_spawner_item in spawners_page1_inv:
        - inventory open d:blaze_spawner_item_inv
        after player clicks creeper_spawner_item in spawners_page1_inv:
        - inventory open d:creeper_spawner_item_inv
        after player clicks zombified_piglin_spawner_item in spawners_page1_inv:
        - inventory open d:zombified_piglin_spawner_item_inv
        after player clicks elder_guardian_spawner_item in spawners_page1_inv:
        - inventory open d:elder_guardian_spawner_item_inv
        after player clicks ghast_spawner_item in spawners_page1_inv:
        - inventory open d:ghast_spawner_item_inv
        after player clicks witch_spawner_item in spawners_page1_inv:
        - inventory open d:witch_spawner_item_inv
        after player clicks slime_spawner_item in spawners_page1_inv:
        - inventory open d:slime_spawner_item_inv
        after player clicks allay_spawner_item in spawners_page1_inv:
        - inventory open d:allay_spawner_item_inv
        after player clicks pig_spawner_item in spawners_page1_inv:
        - inventory open d:pig_spawner_item_inv
        after player clicks cow_spawner_item in spawners_page1_inv:
        - inventory open d:cow_spawner_item_inv
        after player clicks mooshroom_spawner_item in spawners_page1_inv:
        - inventory open d:mooshroom_spawner_item_inv
        after player clicks sheep_spawner_item in spawners_page1_inv:
        - inventory open d:sheep_spawner_item_inv
        after player clicks chicken_spawner_item in spawners_page1_inv:
        - inventory open d:chicken_spawner_item_inv
        after player clicks rabbit_spawner_item in spawners_page1_inv:
        - inventory open d:rabbit_spawner_item_inv
        after player clicks hoglin_spawner_item in spawners_page1_inv:
        - inventory open d:hoglin_spawner_item_inv
        after player clicks cod_spawner_item in spawners_page1_inv:
        - inventory open d:cod_spawner_item_inv
        after player clicks salmon_spawner_item in spawners_page1_inv:
        - inventory open d:salmon_spawner_item_inv
        after player clicks cat_spawner_item in spawners_page1_inv:
        - inventory open d:cat_spawner_item_inv
        after player clicks wolf_spawner_item in spawners_page1_inv:
        - inventory open d:wolf_spawner_item_inv
        after player clicks horse_spawner_item in spawners_page1_inv:
        - inventory open d:horse_spawner_item_inv
        after player clicks goat_spawner_item in spawners_page1_inv:
        - inventory open d:goat_spawner_item_inv
        after player clicks donkey_spawner_item in spawners_page1_inv:
        - inventory open d:donkey_spawner_item_inv
        after player clicks llama_spawner_item in spawners_page1_inv:
        - inventory open d:llama_spawner_item_inv
        after player clicks parrot_spawner_item in spawners_page1_inv:
        - inventory open d:parrot_spawner_item_inv
        after player clicks fox_spawner_item in spawners_page1_inv:
        - inventory open d:fox_spawner_item_inv
        after player clicks bee_spawner_item in spawners_page1_inv:
        - inventory open d:bee_spawner_item_inv
        after player clicks next_page_item in spawners_page1_inv:
        - inventory open d:spawners_page2_inv
#
drowned_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер утопленника?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
drowned_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in drowned_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> drowned_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер утопленника"
        - narrate <&5>------------------------------
        after player clicks no_item in drowned_spawner_item_inv:
        - inventory close
        after player clicks back_item in drowned_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
blaze_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер всполоха?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
blaze_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in blaze_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> blaze_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер всполоха"
        - narrate <&5>------------------------------
        after player clicks no_item in blaze_spawner_item_inv:
        - inventory close
        after player clicks back_item in blaze_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
creeper_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер крипера?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
creeper_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in creeper_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> creeper_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер крипера"
        - narrate <&5>------------------------------
        after player clicks no_item in creeper_spawner_item_inv:
        - inventory close
        after player clicks back_item in creeper_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
zombified_piglin_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер зомби-пиглина?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
zombified_piglin_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in zombified_piglin_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> zombified_piglin_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер зомби-пиглина"
        - narrate <&5>------------------------------
        after player clicks no_item in zombified_piglin_spawner_item_inv:
        - inventory close
        after player clicks back_item in zombified_piglin_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
elder_guardian_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер древнего стража?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
elder_guardian_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in elder_guardian_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> elder_guardian_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер древнего стража"
        - narrate <&5>------------------------------
        after player clicks no_item in elder_guardian_spawner_item_inv:
        - inventory close
        after player clicks back_item in elder_guardian_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
ghast_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер гаста?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
ghast_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in ghast_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> ghast_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер гаста"
        - narrate <&5>------------------------------
        after player clicks no_item in ghast_spawner_item_inv:
        - inventory close
        after player clicks back_item in ghast_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
witch_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер ведьмы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
witch_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in witch_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> witch_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер ведьмы"
        - narrate <&5>------------------------------
        after player clicks no_item in witch_spawner_item_inv:
        - inventory close
        after player clicks back_item in witch_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
slime_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер слизня?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
slime_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in slime_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> slime_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер слизня"
        - narrate <&5>------------------------------
        after player clicks no_item in slime_spawner_item_inv:
        - inventory close
        after player clicks back_item in slime_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
allay_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер тихони?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
allay_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in allay_spawner_item_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 5:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 5"
            - narrate <&5>---------------------------
            - stop
        - playerpoints take 5
        - execute as_server "give <player.name> allay_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер тихони"
        - narrate <&5>------------------------------
        after player clicks no_item in allay_spawner_item_inv:
        - inventory close
        after player clicks back_item in allay_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
pig_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер свиньи?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
pig_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in pig_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> pig_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер свиньи"
        - narrate <&5>------------------------------
        after player clicks no_item in pig_spawner_item_inv:
        - inventory close
        after player clicks back_item in pig_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
cow_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер коровы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
cow_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in cow_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> cow_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер коровы"
        - narrate <&5>------------------------------
        after player clicks no_item in cow_spawner_item_inv:
        - inventory close
        after player clicks back_item in cow_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
mooshroom_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер муухомора?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
mooshroom_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in mooshroom_spawner_item_inv:
        - inventory close
        - narrate <&5>------------------------------
        - narrate "<&5>Спавнер муухомора <&r>временно недоступен"
        - narrate <&5>------------------------------
        # - if !<player.in_group[citizen]>:
        #     - inventory close
        #     - narrate <&5>--------------------------------------------------
        #     - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
        #     - narrate <&5>--------------------------------------------------
        #     - stop
        # - if <player.playerpoints_points> < 3:
        #     - inventory close
        #     - narrate <&5>---------------------------
        #     - narrate "Недостаточно звёзд, нужно: 3"
        #     - narrate <&5>---------------------------
        #     - stop
        # - playerpoints take 3
        # - execute as_server "give <player.name> mooshroom_spawner 1"
        # - inventory close
        # - narrate <&5>------------------------------
        # - narrate "Ты купил <&5>Спавнер муухомора"
        # - narrate <&5>------------------------------
        after player clicks no_item in mooshroom_spawner_item_inv:
        - inventory close
        after player clicks back_item in mooshroom_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
sheep_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер овцы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
sheep_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in sheep_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> sheep_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер овцы"
        - narrate <&5>------------------------------
        after player clicks no_item in sheep_spawner_item_inv:
        - inventory close
        after player clicks back_item in sheep_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
chicken_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер курицы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
chicken_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in chicken_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> chicken_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер курицы"
        - narrate <&5>------------------------------
        after player clicks no_item in chicken_spawner_item_inv:
        - inventory close
        after player clicks back_item in chicken_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
rabbit_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер кролика?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
rabbit_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in rabbit_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> rabbit_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер кролика"
        - narrate <&5>------------------------------
        after player clicks no_item in rabbit_spawner_item_inv:
        - inventory close
        after player clicks back_item in rabbit_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
hoglin_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер хоглина?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
hoglin_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in hoglin_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> hoglin_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер хоглина"
        - narrate <&5>------------------------------
        after player clicks no_item in hoglin_spawner_item_inv:
        - inventory close
        after player clicks back_item in hoglin_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
cod_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер трески?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
cod_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in cod_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> cod_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер трески"
        - narrate <&5>------------------------------
        after player clicks no_item in cod_spawner_item_inv:
        - inventory close
        after player clicks back_item in cod_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
salmon_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер лосося?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
salmon_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in salmon_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> salmon_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер лосося"
        - narrate <&5>------------------------------
        after player clicks no_item in salmon_spawner_item_inv:
        - inventory close
        after player clicks back_item in salmon_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
cat_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер кошки?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
cat_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in cat_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> cat_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер кошки"
        - narrate <&5>------------------------------
        after player clicks no_item in cat_spawner_item_inv:
        - inventory close
        after player clicks back_item in cat_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
wolf_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер волка?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
wolf_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in wolf_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> wolf_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер волка"
        - narrate <&5>------------------------------
        after player clicks no_item in wolf_spawner_item_inv:
        - inventory close
        after player clicks back_item in wolf_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
horse_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер лошади?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
horse_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in horse_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> horse_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер лошади"
        - narrate <&5>------------------------------
        after player clicks no_item in horse_spawner_item_inv:
        - inventory close
        after player clicks back_item in horse_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
goat_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер козы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
goat_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in goat_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> goat_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер козы"
        - narrate <&5>------------------------------
        after player clicks no_item in goat_spawner_item_inv:
        - inventory close
        after player clicks back_item in goat_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
donkey_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер осла?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
donkey_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in donkey_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> donkey_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер осла"
        - narrate <&5>------------------------------
        after player clicks no_item in donkey_spawner_item_inv:
        - inventory close
        after player clicks back_item in donkey_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
llama_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер ламы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
llama_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in llama_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> llama_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер ламы"
        - narrate <&5>------------------------------
        after player clicks no_item in llama_spawner_item_inv:
        - inventory close
        after player clicks back_item in llama_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
parrot_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер попугая?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
parrot_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in parrot_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> parrot_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер попугая"
        - narrate <&5>------------------------------
        after player clicks no_item in parrot_spawner_item_inv:
        - inventory close
        after player clicks back_item in parrot_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
fox_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер лисицы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
fox_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in fox_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> fox_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер лисицы"
        - narrate <&5>------------------------------
        after player clicks no_item in fox_spawner_item_inv:
        - inventory close
        after player clicks back_item in fox_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
bee_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер пчелы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
bee_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in bee_spawner_item_inv:
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
        - playerpoints take 3
        - execute as_server "give <player.name> bee_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер пчелы"
        - narrate <&5>------------------------------
        after player clicks no_item in bee_spawner_item_inv:
        - inventory close
        after player clicks back_item in bee_spawner_item_inv:
        - inventory open d:spawners_page1_inv
#
drowned_spawner_item:
    type: item
    material: drowned_spawn_egg
    display name: <&5>Утопленник
    lore:
    - <&2>Цена 5 звезд
#
blaze_spawner_item:
    type: item
    material: blaze_spawn_egg
    display name: <&5>Всполох
    lore:
    - <&2>Цена 5 звезд
#
creeper_spawner_item:
    type: item
    material: creeper_spawn_egg
    display name: <&5>Крипер
    lore:
    - <&2>Цена 5 звезд
#
zombified_piglin_spawner_item:
    type: item
    material: zombified_piglin_spawn_egg
    display name: <&5>Зомби-пиглин
    lore:
    - <&2>Цена 5 звезд
#
elder_guardian_spawner_item:
    type: item
    material: elder_guardian_spawn_egg
    display name: <&5>Древний страж
    lore:
    - <&2>Цена 5 звезд
#
ghast_spawner_item:
    type: item
    material: ghast_spawn_egg
    display name: <&5>Гаст
    lore:
    - <&2>Цена 5 звезд
#
witch_spawner_item:
    type: item
    material: witch_spawn_egg
    display name: <&5>Ведьма
    lore:
    - <&2>Цена 5 звезд
#
slime_spawner_item:
    type: item
    material: slime_spawn_egg
    display name: <&5>Слизень
    lore:
    - <&2>Цена 5 звезд
#
allay_spawner_item:
    type: item
    material: allay_spawn_egg
    display name: <&5>Тихоня
    lore:
    - <&2>Цена 5 звезд
#
pig_spawner_item:
    type: item
    material: pig_spawn_egg
    display name: <&5>Свинья
    lore:
    - <&2>Цена 3 звезды
#
cow_spawner_item:
    type: item
    material: cow_spawn_egg
    display name: <&5>Корова
    lore:
    - <&2>Цена 3 звезды
#
mooshroom_spawner_item:
    type: item
    material: mooshroom_spawn_egg
    display name: <&5>Муухомор
    lore:
    - <&2>Цена 3 звезды
#
sheep_spawner_item:
    type: item
    material: sheep_spawn_egg
    display name: <&5>Овца
    lore:
    - <&2>Цена 3 звезды
#
chicken_spawner_item:
    type: item
    material: chicken_spawn_egg
    display name: <&5>Курица
    lore:
    - <&2>Цена 3 звезды
#
rabbit_spawner_item:
    type: item
    material: rabbit_spawn_egg
    display name: <&5>Кролик
    lore:
    - <&2>Цена 3 звезды
#
hoglin_spawner_item:
    type: item
    material: hoglin_spawn_egg
    display name: <&5>Хоглин
    lore:
    - <&2>Цена 3 звезды
#
cod_spawner_item:
    type: item
    material: cod_spawn_egg
    display name: <&5>Треска
    lore:
    - <&2>Цена 3 звезды
#
salmon_spawner_item:
    type: item
    material: salmon_spawn_egg
    display name: <&5>Лосось
    lore:
    - <&2>Цена 3 звезды
#
cat_spawner_item:
    type: item
    material: cat_spawn_egg
    display name: <&5>Кошка
    lore:
    - <&2>Цена 3 звезды
#
wolf_spawner_item:
    type: item
    material: wolf_spawn_egg
    display name: <&5>Волк
    lore:
    - <&2>Цена 3 звезды
#
horse_spawner_item:
    type: item
    material: horse_spawn_egg
    display name: <&5>Лошадь
    lore:
    - <&2>Цена 3 звезды
#
goat_spawner_item:
    type: item
    material: goat_spawn_egg
    display name: <&5>Коза
    lore:
    - <&2>Цена 3 звезды
#
donkey_spawner_item:
    type: item
    material: donkey_spawn_egg
    display name: <&5>Осёл
    lore:
    - <&2>Цена 3 звезды
#
llama_spawner_item:
    type: item
    material: llama_spawn_egg
    display name: <&5>Лама
    lore:
    - <&2>Цена 3 звезды
#
parrot_spawner_item:
    type: item
    material: parrot_spawn_egg
    display name: <&5>Попугай
    lore:
    - <&2>Цена 3 звезды
#
fox_spawner_item:
    type: item
    material: fox_spawn_egg
    display name: <&5>Лисица
    lore:
    - <&2>Цена 3 звезды
#
bee_spawner_item:
    type: item
    material: bee_spawn_egg
    display name: <&5>Пчела
    lore:
    - <&2>Цена 3 звезды
#