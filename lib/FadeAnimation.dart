import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos la animación de opacidad
    return CustomAnimationBuilder<double>(
      delay: Duration(milliseconds: (500 * delay).round()), // Delay de animación
      duration: const Duration(milliseconds: 500), // Duración
      tween: Tween(begin: 0.0, end: 1.0), // Tween para opacidad
      builder: (context, animation, child) {
        return Opacity(
          opacity: animation, // Aplicamos la animación de opacidad
          child: child,
        );
      },
      child: child,
    );
  }
}
