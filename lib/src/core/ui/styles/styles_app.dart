import 'package:flutter/material.dart';

import 'colors_app.dart';

class StylesApp {
  static StylesApp? _instance;

  StylesApp._();
  static StylesApp get instance {
    _instance ??= StylesApp._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.instance.primary,
      );
}

extension StylesAppExtension on BuildContext {
  StylesApp get styles => StylesApp.instance;
}