#
# Меню для покупки спавнеров страница 2
spawners_page2_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи спавнер мобов!
    size: 36
    gui: true
    slots:
    - [squid_spawner_item] [glow_squid_spawner_item] [frog_spawner_item] [turtle_spawner_item] [dolphin_spawner_item] [axolotl_spawner_item] [tropical_fish_spawner_item] [ocelot_spawner_item] [polar_bear_spawner_item]
    - [panda_spawner_item] [bat_spawner_item] [snow_golem_spawner_item] [endermite_spawner_item] [silverfish_spawner_item] [enderman_spawner_item] [magma_cube_spawner_item] [phantom_spawner_item] [vex_spawner_item]
    - [piglin_spawner_item] [skeleton_spawner_item] [spider_spawner_item] [] [] [] [] [] []
    - [back_item] [] [] [] [] [] [] [] []
#
spawners_page2_inv_world:
    type: world
    events:
        after player clicks squid_spawner_item in spawners_page2_inv:
        - inventory open d:squid_spawner_item_inv
        after player clicks glow_squid_spawner_item in spawners_page2_inv:
        - inventory open d:glow_squid_spawner_item_inv
        after player clicks frog_spawner_item in spawners_page2_inv:
        - inventory open d:frog_spawner_item_inv
        after player clicks turtle_spawner_item in spawners_page2_inv:
        - inventory open d:turtle_spawner_item_inv
        after player clicks dolphin_spawner_item in spawners_page2_inv:
        - inventory open d:dolphin_spawner_item_inv
        after player clicks axolotl_spawner_item in spawners_page2_inv:
        - inventory open d:axolotl_spawner_item_inv
        after player clicks tropical_fish_spawner_item in spawners_page2_inv:
        - inventory open d:tropical_fish_spawner_item_inv
        after player clicks ocelot_spawner_item in spawners_page2_inv:
        - inventory open d:ocelot_spawner_item_inv
        after player clicks polar_bear_spawner_item in spawners_page2_inv:
        - inventory open d:polar_bear_spawner_item_inv
        after player clicks panda_spawner_item in spawners_page2_inv:
        - inventory open d:panda_spawner_item_inv
        after player clicks bat_spawner_item in spawners_page2_inv:
        - inventory open d:bat_spawner_item_inv
        after player clicks snow_golem_spawner_item in spawners_page2_inv:
        - inventory open d:snow_golem_spawner_item_inv
        after player clicks endermite_spawner_item in spawners_page2_inv:
        - inventory open d:endermite_spawner_item_inv
        after player clicks silverfish_spawner_item in spawners_page2_inv:
        - inventory open d:silverfish_spawner_item_inv
        after player clicks enderman_spawner_item in spawners_page2_inv:
        - inventory open d:enderman_spawner_item_inv
        after player clicks vex_spawner_item in spawners_page2_inv:
        - inventory open d:vex_spawner_item_inv
        after player clicks piglin_spawner_item in spawners_page2_inv:
        - inventory open d:piglin_spawner_item_inv
        after player clicks skeleton_spawner_item in spawners_page2_inv:
        - inventory open d:skeleton_spawner_item_inv
        after player clicks spider_spawner_item in spawners_page2_inv:
        - inventory open d:spider_spawner_item_inv
        after player clicks magma_cube_spawner_item in spawners_page2_inv:
        - inventory open d:magma_cube_spawner_item_inv
        after player clicks phantom_spawner_item in spawners_page2_inv:
        - inventory open d:phantom_spawner_item_inv
        after player clicks back_item in spawners_page2_inv:
        - inventory open d:spawners_page1_inv
#
squid_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер спрута?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
squid_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in squid_spawner_item_inv:
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
        - execute as_server "give <player.name> squid_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер спрута"
        - narrate <&5>------------------------------
        after player clicks no_item in squid_spawner_item_inv:
        - inventory close
        after player clicks back_item in squid_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
glow_squid_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер свет. спрута?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
glow_squid_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in glow_squid_spawner_item_inv:
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
        - execute as_server "give <player.name> glow_squid_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер светящегося спрута"
        - narrate <&5>------------------------------
        after player clicks no_item in glow_squid_spawner_item_inv:
        - inventory close
        after player clicks back_item in glow_squid_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
frog_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер лягушки?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
frog_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in frog_spawner_item_inv:
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
        - execute as_server "give <player.name> frog_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер лягушки"
        - narrate <&5>------------------------------
        after player clicks no_item in frog_spawner_item_inv:
        - inventory close
        after player clicks back_item in frog_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
turtle_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер черепахи?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
turtle_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in turtle_spawner_item_inv:
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
        - execute as_server "give <player.name> turtle_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер черепахи"
        - narrate <&5>------------------------------
        after player clicks no_item in turtle_spawner_item_inv:
        - inventory close
        after player clicks back_item in turtle_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
dolphin_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер дельфина?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
dolphin_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in dolphin_spawner_item_inv:
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
        - execute as_server "give <player.name> dolphin_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер дельфина"
        - narrate <&5>------------------------------
        after player clicks no_item in dolphin_spawner_item_inv:
        - inventory close
        after player clicks back_item in dolphin_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
axolotl_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер аксолотля?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
axolotl_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in axolotl_spawner_item_inv:
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
        - execute as_server "give <player.name> axolotl_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер аксолотля"
        - narrate <&5>------------------------------
        after player clicks no_item in axolotl_spawner_item_inv:
        - inventory close
        after player clicks back_item in axolotl_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
tropical_fish_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер троп. рыбки?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
tropical_fish_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in tropical_fish_spawner_item_inv:
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
        - execute as_server "give <player.name> tropical_fish_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер тропической рыбки"
        - narrate <&5>------------------------------
        after player clicks no_item in tropical_fish_spawner_item_inv:
        - inventory close
        after player clicks back_item in tropical_fish_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
ocelot_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер оцелота?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
ocelot_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in ocelot_spawner_item_inv:
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
        - execute as_server "give <player.name> ocelot_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер оцелота"
        - narrate <&5>------------------------------
        after player clicks no_item in ocelot_spawner_item_inv:
        - inventory close
        after player clicks back_item in ocelot_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
polar_bear_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер медведя?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
polar_bear_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in polar_bear_spawner_item_inv:
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
        - execute as_server "give <player.name> polar_bear_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер полярного медведя"
        - narrate <&5>------------------------------
        after player clicks no_item in polar_bear_spawner_item_inv:
        - inventory close
        after player clicks back_item in polar_bear_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
panda_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер панды?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
panda_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in panda_spawner_item_inv:
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
        - execute as_server "give <player.name> panda_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер панды"
        - narrate <&5>------------------------------
        after player clicks no_item in panda_spawner_item_inv:
        - inventory close
        after player clicks back_item in panda_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
bat_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер летучей мыши?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
bat_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in bat_spawner_item_inv:
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
        - execute as_server "give <player.name> bat_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер летучей мыши"
        - narrate <&5>------------------------------
        after player clicks no_item in bat_spawner_item_inv:
        - inventory close
        after player clicks back_item in bat_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
snow_golem_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер снежного голема?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
snow_golem_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in snow_golem_spawner_item_inv:
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
        # - execute as_server "give <player.name> snow_golem_spawner 1"
        # - inventory close
        # - narrate <&5>------------------------------
        # - narrate "Ты купил <&5>Спавнер снежного голема"
        # - narrate <&5>------------------------------
        # after player clicks no_item in snow_golem_spawner_item_inv:
        # - inventory close
        # after player clicks back_item in snow_golem_spawner_item_inv:
        # - inventory open d:spawners_page2_inv
#
endermite_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер эндермита?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
endermite_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in endermite_spawner_item_inv:
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
        - execute as_server "give <player.name> endermite_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер эндермита"
        - narrate <&5>------------------------------
        after player clicks no_item in endermite_spawner_item_inv:
        - inventory close
        after player clicks back_item in endermite_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
silverfish_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер чешуйницы?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
silverfish_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in silverfish_spawner_item_inv:
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
        - execute as_server "give <player.name> silverfish_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер чешуйницы"
        - narrate <&5>------------------------------
        after player clicks no_item in silverfish_spawner_item_inv:
        - inventory close
        after player clicks back_item in silverfish_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
enderman_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер эндермена?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
enderman_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in enderman_spawner_item_inv:
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
        - execute as_server "give <player.name> enderman_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер эндермена"
        - narrate <&5>------------------------------
        after player clicks no_item in enderman_spawner_item_inv:
        - inventory close
        after player clicks back_item in enderman_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
vex_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер вредины?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
vex_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in vex_spawner_item_inv:
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
        - execute as_server "give <player.name> vex_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер вредины"
        - narrate <&5>------------------------------
        after player clicks no_item in vex_spawner_item_inv:
        - inventory close
        after player clicks back_item in vex_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
piglin_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер пиглина?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
piglin_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in piglin_spawner_item_inv:
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
        - execute as_server "give <player.name> piglin_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер пиглина"
        - narrate <&5>------------------------------
        after player clicks no_item in piglin_spawner_item_inv:
        - inventory close
        after player clicks back_item in piglin_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
skeleton_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер скелета?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
skeleton_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in skeleton_spawner_item_inv:
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
        - execute as_server "give <player.name> skeleton_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер скелета"
        - narrate <&5>------------------------------
        after player clicks no_item in skeleton_spawner_item_inv:
        - inventory close
        after player clicks back_item in skeleton_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
spider_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер паука?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
spider_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in spider_spawner_item_inv:
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
        - execute as_server "give <player.name> spider_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер паука"
        - narrate <&5>------------------------------
        after player clicks no_item in spider_spawner_item_inv:
        - inventory close
        after player clicks back_item in spider_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
magma_cube_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер магмового куба?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
magma_cube_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in magma_cube_spawner_item_inv:
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
        - execute as_server "give <player.name> magma_cube_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер магмового куба"
        - narrate <&5>------------------------------
        after player clicks no_item in magma_cube_spawner_item_inv:
        - inventory close
        after player clicks back_item in magma_cube_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
phantom_spawner_item_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить Спавнер фантома?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
phantom_spawner_item_inv_world:
    type: world
    events:
        after player clicks yes_item in phantom_spawner_item_inv:
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
        - execute as_server "give <player.name> phantom_spawner 1"
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>Спавнер фантома"
        - narrate <&5>------------------------------
        after player clicks no_item in phantom_spawner_item_inv:
        - inventory close
        after player clicks back_item in phantom_spawner_item_inv:
        - inventory open d:spawners_page2_inv
#
squid_spawner_item:
    type: item
    material: squid_spawn_egg
    display name: <&5>Спрут
    lore:
    - <&2>Цена 3 звезды
#
glow_squid_spawner_item:
    type: item
    material: glow_squid_spawn_egg
    display name: <&5>Светящийся спрут
    lore:
    - <&2>Цена 3 звезды
#
frog_spawner_item:
    type: item
    material: frog_spawn_egg
    display name: <&5>Лягушка
    lore:
    - <&2>Цена 3 звезды
#
turtle_spawner_item:
    type: item
    material: turtle_spawn_egg
    display name: <&5>Черепаха
    lore:
    - <&2>Цена 3 звезды
#
dolphin_spawner_item:
    type: item
    material: dolphin_spawn_egg
    display name: <&5>Дельфин
    lore:
    - <&2>Цена 3 звезды
#
axolotl_spawner_item:
    type: item
    material: axolotl_spawn_egg
    display name: <&5>Аксолотль
    lore:
    - <&2>Цена 3 звезды
#
tropical_fish_spawner_item:
    type: item
    material: tropical_fish_spawn_egg
    display name: <&5>Тропическая рыбка
    lore:
    - <&2>Цена 3 звезды
#
ocelot_spawner_item:
    type: item
    material: ocelot_spawn_egg
    display name: <&5>Оцелот
    lore:
    - <&2>Цена 3 звезды
#
polar_bear_spawner_item:
    type: item
    material: polar_bear_spawn_egg
    display name: <&5>Полярный медведь
    lore:
    - <&2>Цена 3 звезды
#
panda_spawner_item:
    type: item
    material: panda_spawn_egg
    display name: <&5>Панда
    lore:
    - <&2>Цена 3 звезды
#
bat_spawner_item:
    type: item
    material: bat_spawn_egg
    display name: <&5>Летучая мышь
    lore:
    - <&2>Цена 3 звезды
#
snow_golem_spawner_item:
    type: item
    material: snow_golem_spawn_egg
    display name: <&5>Снежный голем
    lore:
    - <&2>Цена 3 звезды
#
endermite_spawner_item:
    type: item
    material: endermite_spawn_egg
    display name: <&5>Эндермит
    lore:
    - <&2>Цена 3 звезды
#
silverfish_spawner_item:
    type: item
    material: silverfish_spawn_egg
    display name: <&5>Чешуйница
    lore:
    - <&2>Цена 3 звезды
#
enderman_spawner_item:
    type: item
    material: enderman_spawn_egg
    display name: <&5>Эндермен
    lore:
    - <&2>Цена 3 звезды
#
magma_cube_spawner_item:
    type: item
    material: magma_cube_spawn_egg
    display name: <&5>Магмовый куб
    lore:
    - <&2>Цена 3 звезды
#
phantom_spawner_item:
    type: item
    material: phantom_spawn_egg
    display name: <&5>Фантом
    lore:
    - <&2>Цена 3 звезды
#
vex_spawner_item:
    type: item
    material: vex_spawn_egg
    display name: <&5>Вредина
    lore:
    - <&2>Цена 3 звезды
#
piglin_spawner_item:
    type: item
    material: piglin_spawn_egg
    display name: <&5>Пиглин
    lore:
    - <&2>Цена 3 звезды
#
skeleton_spawner_item:
    type: item
    material: skeleton_spawn_egg
    display name: <&5>Скелет
    lore:
    - <&2>Цена 3 звезды
#
spider_spawner_item:
    type: item
    material: spider_spawn_egg
    display name: <&5>Паук
    lore:
    - <&2>Цена 3 звезды
#