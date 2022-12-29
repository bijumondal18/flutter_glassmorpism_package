<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


## Features

This package is to achieve Glassmorphism in your flutter application. It's a new and modern design
UI/UX implementation. This package has multiple widgets (i.e. Container, Button, Card, Switch,
Dropdown, Tabbar, Drawer etc.) to use. You can use it anywhere inside your flutter application.

## Installation

1: Add the latest version of the package to your pubspec.yaml (and run `dart pub get`):

```yaml

dependencies:
  flutter_glassmorpism: ^0.0.1

```

2: Import the package and use it in your Flutter app.

```dart

import 'package:flutter_glassmorpism/flutter_glassmorpism.dart';

```

## Example

There are multiple properties that you can modify :

  - height
  - width
  - padding
  - margin

<hr>




<table>


<tr>


<td>


```dart

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

```

</td>


<td>

<img src="https://github.com/bijumondal18/bouncy_container_flutter_package/blob/main/lib/src/BouncingContainer.png" alt="Sample Image">

</td>

</tr>

</table>

## Next Goals

- [x] Add animation effect on click.

- [x] Add ripple effect on click.

- [x] Add more custom widgets to the package.