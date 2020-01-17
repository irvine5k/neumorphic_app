import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:neumorphic_app/app/app_controller.dart';
import 'package:neumorphic_app/app/app_module.dart';

import 'components/neumorphic_button/neumorphic_button_widget.dart';
import 'components/neumorphic_container/neumorphic_container_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NeumorphicButtonWidget(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.menu,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  Container(
                    child:
                        Text('HOME', style: Theme.of(context).textTheme.title),
                  ),
                  NeumorphicButtonWidget(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.brightness_3,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(40),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.attach_money,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.bookmark_border,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.center_focus_weak,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.border_all,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.stay_primary_landscape,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicContainerWidget(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Icon(
                          Icons.bluetooth_searching,
                          size: 50,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NeumorphicButtonWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.home,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicButtonWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicButtonWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    NeumorphicButtonWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.settings,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
