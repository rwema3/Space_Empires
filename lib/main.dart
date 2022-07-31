
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // To make the Game fullscreen
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Game>.value(
          value: Game(),
        ),

        // It is lazily build, i.e unless someone requests it, it won't be created.
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
