void main() {
  Theme theme = ThemeFactory.setTheme(ThemeMode.light);
  // Theme theme = ThemeFactory.setTheme(ThemeMode.dark);
  theme.apply();
}

class ThemeFactory {
  static Theme setTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return LightTheme();
      case ThemeMode.dark:
        return DarkTheme();
    }
  }
}

class LightTheme extends Theme {
  @override
  void apply() {
    print('Light theme is applying.');
  }
}

class DarkTheme extends Theme {
  @override
  void apply() {
    print('Dark theme is applying.');
  }
}

abstract class Theme {
  void apply();
}

enum ThemeMode { light, dark }



// void main() {
//   LightTheme lightTheme = LightTheme();
//   lightTheme.apply();

//   DarkTheme darkTheme = DarkTheme();
//   darkTheme.apply();
// }

// class LightTheme extends Theme {
//   @override
//   void apply() {
//     print('Light theme is applying.');
//   }
// }

// class DarkTheme extends Theme {
//   @override
//   void apply() {
//     print('Dark theme is applying.');
//   }
// }

// abstract class Theme {
//   void apply();
// }
