join_script:
    type: world
    events:
      on player joins:
        - execute as_server "gamemode survival <player.name>"