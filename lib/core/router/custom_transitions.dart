import 'package:flutter/material.dart';

class CustomTransitions {
  static const RouteTransitionsBuilder prikolTransition = _prikolTransition;

  static Widget _prikolTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Stack(
      children: [
        RotationTransition(
          turns: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: const Interval(
                0.0,
                0.5,
                curve: Curves.easeInOut,
              ),
            ),
          ),
          child: ScaleTransition(
            scale: Tween<double>(
              begin: 1.0,
              end: 0.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: const Interval(
                  0.0,
                  0.5,
                  curve: Curves.easeInOut,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: child,
            ),
          ),
        ),
        RotationTransition(
          turns: Tween<double>(
            begin: -1.0,
            end: 0.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: const Interval(
                0.5,
                1.0,
                curve: Curves.easeInOut,
              ),
            ),
          ),
          child: ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: const Interval(
                  0.5,
                  1.0,
                  curve: Curves.easeInOut,
                ),
              ),
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
