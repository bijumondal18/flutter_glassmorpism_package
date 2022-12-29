import 'package:flutter/material.dart';

class GlassmorphicContainer extends StatefulWidget {
  final double? width;
  final double? height;
  final Widget child;
  final double? borderRadius;
  final Color? borderColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final VoidCallback? onPressed;

  const GlassmorphicContainer(
      {Key? key,
      this.width,
      this.height,
      required this.child,
      this.borderRadius,
      this.borderColor,
      this.onPressed,
      this.padding,
      this.margin})
      : super(key: key);

  @override
  State<GlassmorphicContainer> createState() => _GlassmorphicContainerState();
}

class _GlassmorphicContainerState extends State<GlassmorphicContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height,
        padding: widget.padding ?? EdgeInsets.zero,
        margin: widget.margin ?? EdgeInsets.zero,
        decoration: BoxDecoration(
            border:
                Border.all(width: 1, color: widget.borderColor ?? Colors.white),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.5),
                ])),
        child: widget.child,
      ),
    );
  }
}
