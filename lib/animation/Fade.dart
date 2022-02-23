import 'package:flutter/cupertino.dart';

class Fade extends PageRouteBuilder {
  final Widget widget;

  Fade({required this.widget})
      : super(
          transitionDuration: Duration(milliseconds: 200),
          //context - animation - 2nd animation
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> setAnimation,
              Widget child) {
            return FadeTransition(
              // animation type
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> setAnimation) {
            return widget; //this is the 2nd screen
          },
        );
}
