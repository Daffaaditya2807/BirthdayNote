import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

//Animasi Image Scale
class AnimatedImage extends StatelessWidget {
  final Duration duration;
  final Image imagee;

  AnimatedImage({required this.duration, required this.imagee});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: ScaleAnimation(
        duration: duration,
        child: FadeInAnimation(
          duration: duration,
          child: imagee,
        ),
      ),
    );
  }
}

//Animasi Widget Scale
class AnimasiWidgetScale extends StatelessWidget {
  final Duration duration;
  final Widget widgett;

  AnimasiWidgetScale({required this.duration, required this.widgett});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: ScaleAnimation(
        duration: duration,
        child: FadeInAnimation(
          duration: duration,
          child: widgett,
        ),
      ),
    );
  }
}

//Animasi Widget Slide Verical
class AnimasiWidgetSlideVertical extends StatelessWidget {
  final Duration duration;
  final Widget widgett;
  final double vertikal;

  AnimasiWidgetSlideVertical(
      {required this.duration, required this.widgett, required this.vertikal});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        verticalOffset: vertikal,
        duration: duration,
        child: FadeInAnimation(
          duration: duration,
          child: widgett,
        ),
      ),
    );
  }
}

class AnimasiWidgetSlideHorizontal extends StatelessWidget {
  final Duration duration;
  final Widget widgett;
  final double horizontal;

  AnimasiWidgetSlideHorizontal(
      {required this.duration,
      required this.widgett,
      required this.horizontal});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        horizontalOffset: horizontal,
        duration: duration,
        child: FadeInAnimation(
          duration: duration,
          child: widgett,
        ),
      ),
    );
  }
}
