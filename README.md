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
  - radius
  - border
  - backgroundColor

<hr>




<table>


<tr>


<td>


```dart

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
            borderRadius: BorderRadius.circular(radius!)
        ),
        child: child,
      ),
    );
  }
}

```

</td>


<td>

[//]: # (<img src="https://github.com/bijumondal18/bouncy_container_flutter_package/blob/main/lib/src/BouncingContainer.png" alt="Sample Image">)

</td>

</tr>

</table>

## Next Goals

- [x] Add animation effect on click.

- [x] Add ripple effect on click.

- [x] Add more custom widgets to the package.