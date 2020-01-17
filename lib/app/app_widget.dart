import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:neumorphic_app/app/app_controller.dart';
import 'package:neumorphic_app/app/app_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppController _controller = Inject<AppModule>.of().get();

    return Observer(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        title: 'Neumorphic App',
        theme: ThemeData(
          backgroundColor: Colors.lightBlue[50],
          scaffoldBackgroundColor: Colors.lightBlue[50],
          dialogBackgroundColor: Colors.lightBlue[50],
          textTheme: TextTheme(
            headline: TextStyle(color: Colors.black),
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            body1: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
