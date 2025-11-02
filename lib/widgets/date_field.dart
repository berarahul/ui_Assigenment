import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_theme.dart';

class DateField extends StatelessWidget {
  final String date;

  const DateField({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      padding: AppTheme.paddingAll16,
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkCard : AppColors.white,
        borderRadius: AppTheme.borderRadius8,
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.borderGrey,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today,
            color: Theme.of(context).iconTheme.color,
            size: AppTheme.iconSizeMedium,
          ),
          const SizedBox(width: AppTheme.spacing12),
          Text(
            date, 
            style: AppTextStyles.bodyLarge.copyWith(
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
        ],
      ),
    );
  }
}
