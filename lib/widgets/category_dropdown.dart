import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_theme.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: isDark ? Theme.of(context).cardColor : Colors.white,
        borderRadius: AppTheme.borderRadius8,
        border: Border.all(
          color: isDark 
              ? Theme.of(context).dividerColor 
              : Colors.grey.shade300,
        ),
      ),
      child: DropdownButton<String>(
        value: AppStrings.allCategories,
        isExpanded: true,
        underline: const SizedBox(),
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: textColor,
        ),
        dropdownColor: isDark ? Theme.of(context).cardColor : Colors.white,
        style: AppTextStyles.bodyLarge.copyWith(color: textColor),
        items: [
          DropdownMenuItem(
            value: AppStrings.allCategories,
            child: Text(
              AppStrings.allCategories, 
              style: AppTextStyles.bodyLarge.copyWith(color: textColor),
            ),
          ),
          DropdownMenuItem(
            value: AppStrings.hotels,
            child: Text(
              AppStrings.hotels,
              style: TextStyle(color: textColor),
            ),
          ),
          DropdownMenuItem(
            value: AppStrings.resorts,
            child: Text(
              AppStrings.resorts,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}
