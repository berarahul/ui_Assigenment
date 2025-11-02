import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_theme.dart';

class DestinationInputField extends StatelessWidget {
  const DestinationInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkCard : AppColors.white,
        borderRadius: AppTheme.borderRadius8,
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.borderGrey,
        ),
      ),
      child: TextField(
        style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
        decoration: InputDecoration(
          hintText: AppStrings.whereDoYouWantToGo,
          hintStyle: AppTextStyles.hint.copyWith(
            color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.location_on_outlined,
            color: Theme.of(context).iconTheme.color?.withOpacity(0.6),
          ),
          border: InputBorder.none,
          contentPadding: AppTheme.paddingAll16,
        ),
      ),
    );
  }
}
