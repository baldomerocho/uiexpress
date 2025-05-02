# UIExpress

[![pub package](https://img.shields.io/pub/v/uiexpress.svg)](https://pub.dev/packages/uiexpress)
[![GitHub](https://img.shields.io/github/license/baldomerocho/uiexpress)](https://github.com/baldomerocho/uiexpress/blob/master/LICENSE)

A modern, customizable UI component library for Flutter applications by AppNodo. UIExpress provides a collection of pre-styled components and themes to help you build beautiful Flutter applications quickly.

## Features

- **Modern Material 3 Themes** - Light and dark theme variants with customizable seed colors
- **Consistent Design Language** - Components follow a cohesive design system
- **Customizable Components** - Easily modify components to match your brand
- **Responsive Layouts** - Components adapt to different screen sizes
- **Accessibility Support** - Components designed with accessibility in mind

## Getting Started

Add UIExpress to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  uiexpress: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

### Themes

UIExpress provides customizable light and dark themes:

```dart
import 'package:flutter/material.dart';
import 'package:uiexpress/uiexpress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UIExpress Demo',
      // Use UIExpress light theme
      theme: UIEThemes.lightTheme(
        colorSeed: Colors.blue,
        // Optional customizations
        buttonForegroundColor: Colors.white,
        iconColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      // Use UIExpress dark theme
      darkTheme: UIEThemes.darkTheme(
        colorSeed: Colors.blue,
        // Optional customizations
        buttonForegroundColor: Colors.white,
        iconColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
```

## Components

UIExpress includes a variety of pre-styled components that follow Material 3 design guidelines.

### UIENotifications

The `UIENotifications` class provides easy-to-use snackbar notifications with predefined styles:

```dart
import 'package:flutter/material.dart';
import 'package:uiexpress/uiexpress.dart';

// Show an error notification
UIENotifications.snackError(context, "Something went wrong!");

// Show a success notification
UIENotifications.snackSuccess(context, "Operation completed successfully!");
// With custom duration (in milliseconds)
UIENotifications.snackSuccess(context, "Saved!", ms: 1500);

// Show a warning notification
UIENotifications.snackWarning(context, "Please review your information");
// With custom duration (in milliseconds)
UIENotifications.snackWarning(context, "Caution required", ms: 3000);
```

## Examples

Check out the `/example` directory for sample applications demonstrating UIExpress components and themes.

## Customization

UIExpress is designed to be highly customizable. You can override any theme property to match your brand's design language.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## About AppNodo

UIExpress is maintained by [AppNodo](https://github.com/baldomerocho). Visit our GitHub page to see more of our open-source projects.