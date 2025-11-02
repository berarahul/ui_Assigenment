import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_theme.dart';

class GuestCounter extends StatelessWidget {
  final String label;
  final int count;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const GuestCounter({
    super.key,
    required this.label,
    required this.count,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    
    return Column(
      children: [
        Text(
          label, 
          style: AppTextStyles.bodyLarge.copyWith(
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: AppTheme.spacing12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isDark ? AppColors.darkCard : AppColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isDark ? AppColors.darkBorder : AppColors.borderGrey,
                ),
              ),
              child: IconButton(
                onPressed: onDecrement,
                icon: Icon(
                  Icons.remove,
                  color: colorScheme.primary,
                ),
                iconSize: AppTheme.iconSizeMedium,
                padding: AppTheme.paddingAll8,
                constraints: const BoxConstraints(),
              ),
            ),
            Padding(
              padding: AppTheme.paddingHorizontal16,
              child: Text(
                '$count', 
                style: AppTextStyles.counter.copyWith(
                  color: Theme.of(context).textTheme.headlineMedium?.color,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isDark ? AppColors.darkCard : AppColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isDark ? AppColors.darkBorder : AppColors.borderGrey,
                ),
              ),
              child: IconButton(
                onPressed: onIncrement,
                icon: Icon(
                  Icons.add,
                  color: colorScheme.primary,
                ),
                iconSize: AppTheme.iconSizeMedium,
                padding: AppTheme.paddingAll8,
                constraints: const BoxConstraints(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
