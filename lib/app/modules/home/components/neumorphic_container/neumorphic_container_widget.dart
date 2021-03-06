import 'package:flutter/material.dart';

extension ColorUtils on Color {
  Color mix(Color another, double amount) => Color.lerp(
        this,
        another,
        amount,
      );
}

class NeumorphicContainerWidget extends StatelessWidget {
  final Widget child;
  final double bevel;
  final Offset blurOffset;
  final Color color;

  NeumorphicContainerWidget({
    Key key,
    this.child,
    this.bevel = 10.0,
    this.color,
  })  : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).backgroundColor;

    return Container(
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
        borderRadius: BorderRadius.circular(bevel),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            blurRadius: bevel,
            offset: -blurOffset,
            color: color.mix(Colors.white, .6),
          ),
          BoxShadow(
            blurRadius: bevel,
            offset: blurOffset,
            color: color.mix(Colors.black, .3),
          )
        ],
      ),
      child: child,
    );
  }
}
