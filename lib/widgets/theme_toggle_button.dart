import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

/// A button widget that toggles between light and dark theme
/// 
/// This widget displays a sun icon for light theme and moon icon for dark theme.
/// When pressed, it toggles the app's theme mode.
class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return IconButton(
          icon: Icon(
            themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            size: 28,
          ),
          tooltip: themeProvider.isDarkMode 
              ? 'Switch to Light Mode' 
              : 'Switch to Dark Mode',
          onPressed: () {
            themeProvider.toggleTheme();
          },
        );
      },
    );
  }
}
