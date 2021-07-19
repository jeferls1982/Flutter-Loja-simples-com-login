import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loja/screens/base/base_screen.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:loja/stores/page_store.dart';

void main() async{
  await initializaParse();
  setupLocators();
  runApp(MyApp());
}
void setupLocators(){
  GetIt.I.registerSingleton(PageStore());
}


Future<void>initializaParse() async {
  await Parse().initialize(
    'BUOagG8u8SymCQTE4fVces9WjV2mjd1DOiGw9Yje',
    'https://parseapi.back4app.com/',
    clientKey: 'aJOo4iXYw90nGnafZTgWjEtqvKnTzzVgnQrwdeh5',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor : Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(
          elevation: 0
        ),
          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.purple),
      ),

      home: BaseScreen(),
    );
  }
}