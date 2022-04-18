import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import './screens/character_selection_screen.dart';
import './screens/game_end/game_lost.dart';
import './screens/game_end/game_won.dart';
import './screens/game_screen.dart';
import './screens/planet_screen.dart';
import './screens/splash_screen.dart';
import './screens/story/story_i.dart';
import './screens/story/story_ii.dart';
import './screens/welcome_screen.dart';
import 'models/planet_model.dart';
import 'screens/attack/attack_conclusion_screen.dart';
import 'screens/attack/attack_screen.dart';
import 'screens/help/info_screen.dart';
import 'screens/story/story_iii.dart';
import 'services/game.dart';
import 'services/planet/planet.dart';
import 'services/player/player.dart';
import 'utility/constants.dart';

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

        // It is lazily build, i.e unless someone requests it, it won't be created
        // It is requested for first Time on gameScreen (as we navigate from characterSelectionScreen)
        // As soon as gameScreen is called create is called
        // But since we notify GameData too (in characterSelectionScreen)
        // So update is called too
        // finally the value obtained is provided in gameScreen
        ChangeNotifierProxyProvider<Game, Player?>(
          update: (_, game, __) {
            return game.currentPlayer;
          },
          create: (ctx) {
            return null;
          },
        ),
      ],
      builder: (_, __) {
        return Sizer 
           
             
              
           
              
              
               
             
                 
                 

          
                    
                    
                     
              
               
                    
