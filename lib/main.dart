        // It is requested for first Time on gameScreen (as we navigate from characterSelectionScreen)
        // As soon as gameScreen is called create is called
        // But since we notify or tell GameData too (in characterSelectionScreen)
        // So update is called too
        // finally the value obtained is provided in gameScreen
        ChangeNotifierProxyProvider<Game, Player?>(
          update: (_, game, __) {
            return game.currentPlayer;
          },
          create: (ctx) {
            r     builder: (context) =>
                      AttackScreen(attacker: _attacker, planet: _planet),
                );
              }
              return null;
            },
          );
        });
      },
    );
  }
}
