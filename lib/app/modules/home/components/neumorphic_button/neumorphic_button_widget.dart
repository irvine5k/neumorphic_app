import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:neumorphic_app/app/app_module.dart';
import 'package:neumorphic_app/app/modules/home/components/neumorphic_button/neumorphic_button_controller.dart';
import 'package:neumorphic_app/app/modules/home/home_module.dart';

extension ColorUtils on Color {
  Color mix(Color another, double amount) => Color.lerp(
        this,
        another,
        amount,
      );
}

class NeumorphicButtonWidget extends StatefulWidget {
  final Widget child;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  final Function onPressed;

  NeumorphicButtonWidget(
      {Key key, this.child, this.bevel = 10.0, this.color, this.onPressed})
      : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  _NeumorphicButtonWidgetState createState() => _NeumorphicButtonWidgetState();
}

class _NeumorphicButtonWidgetState extends State<NeumorphicButtonWidget> {
  final _controller = NeumorphicButtonController();

  mobx.ReactionDisposer _disposer;

  @override
  void initState() {
    _disposer = mobx.reaction(
      (_) => _controller.isPressed,
      (_) => _ ? widget.onPressed : () {},
    );
    super.initState();
  }

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Theme.of(context).backgroundColor;

    return Observer(builder: (context) {
      return Listener(
        onPointerDown: (_) => _controller.onPointDown(),
        onPointerUp: (_) => _controller.onPointUp(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.mix(Colors.black, .1),
                color,
                color,
                color.mix(Colors.white, .5),
              ],
              stops: [
                0.0,
                .3,
                .6,
                1.0,
              ],
            ),
            borderRadius: BorderRadius.circular(widget.bevel),
            color: Colors.grey.shade200,
            boxShadow: _controller.isPressed
                ? null
                : [
                    BoxShadow(
                      blurRadius: widget.bevel,
                      offset: -widget.blurOffset,
                      color: color.mix(Colors.white, .6),
                    ),
                    BoxShadow(
                      blurRadius: widget.bevel,
                      offset: widget.blurOffset,
                      color: color.mix(Colors.black, .3),
                    )
                  ],
          ),
          child: widget.child,
        ),
      );
    });
  }
}
