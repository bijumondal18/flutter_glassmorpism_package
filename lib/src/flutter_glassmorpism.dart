import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphicContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? padding;
  final double? margin;
  final double? radius;
  final double? border;
  final Color? backgroundColor;
  final Widget child;

  const GlassmorphicContainer(
      {Key? key,
      this.width = 200,
      this.height = 200,
      this.padding = 10,
      this.margin = 10,
      required this.child,
      this.radius = 10,
      this.border = 1,
      this.backgroundColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Container(
        padding: EdgeInsets.all(padding!),
        margin: EdgeInsets.all(margin!),
        width: width!,
        height: height!,
        decoration: BoxDecoration(
            border: Border.all(
                width: border!, color: backgroundColor!.withOpacity(0.3)),
            color: backgroundColor!.withOpacity(0.4),
            borderRadius: BorderRadius.circular(radius!)),
        child: child,
      ),
    );
  }
}
