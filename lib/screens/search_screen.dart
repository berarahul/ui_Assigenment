import 'package:flutter/material.dart';
import '../widgets/destination_input_field.dart';
import '../widgets/date_field.dart';
import '../widgets/category_dropdown.dart';
import '../widgets/guest_counter.dart';
import '../widgets/theme_toggle_button.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool showAdvancedOptions = true;
  int adults = 2;
  int children = 2;
  int infants = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: AppTheme.paddingAll12,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: AppTheme.borderRadius12,
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: colorScheme.onPrimary,
                        size: AppTheme.iconSizeXLarge,
                      ),
                    ),
                    const SizedBox(width: AppTheme.spacing16),
                    Expanded(
                      child: Text(
                        AppStrings.findYourPerfectExperience,
                        style: AppTextStyles.headerLarge.copyWith(
                          color: Theme.of(context).textTheme.headlineLarge?.color,
                        ),
                      ),
                    ),
                    const ThemeToggleButton(),
                  ],
                ),
                const SizedBox(height: AppTheme.spacing30),

                // Choose destinations
                Text(
                  AppStrings.chooseDestinations,
                  style: AppTextStyles.label.copyWith(
                    color: Theme.of(context).textTheme.labelLarge?.color,
                  ),
                ),
                const SizedBox(height: AppTheme.spacing12),
                const DestinationInputField(),
                const SizedBox(height: AppTheme.spacing24),

                // Check-in and Check-out
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.checkIn,
                            style: AppTextStyles.label.copyWith(
                              color: Theme.of(context).textTheme.labelLarge?.color,
                            ),
                          ),
                          const SizedBox(height: AppTheme.spacing12),
                          DateField(date: '29/10/2025'),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppTheme.spacing16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.checkOut,
                            style: AppTextStyles.label.copyWith(
                              color: Theme.of(context).textTheme.labelLarge?.color,
                            ),
                          ),
                          const SizedBox(height: AppTheme.spacing12),
                          DateField(date: '30/10/2025'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppTheme.spacing24),

                // Category
                Text(
                  AppStrings.category,
                  style: AppTextStyles.label.copyWith(
                    color: Theme.of(context).textTheme.labelLarge?.color,
                  ),
                ),
                const SizedBox(height: AppTheme.spacing12),
                const CategoryDropdown(),
                const SizedBox(height: AppTheme.spacing24),

                // Hide/Show Advanced Options
                InkWell(
                  onTap: () {
                    setState(() {
                      showAdvancedOptions = !showAdvancedOptions;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        showAdvancedOptions ? Icons.filter_alt : Icons.filter_alt_outlined,
                        color: colorScheme.primary,
                        size: AppTheme.iconSizeMedium,
                      ),
                      const SizedBox(width: AppTheme.spacing8),
                      Text(
                        showAdvancedOptions
                            ? AppStrings.hideAdvancedOptions
                            : AppStrings.showAdvancedOptions,
                        style: AppTextStyles.link.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTheme.spacing24),

                // Advanced Options
                if (showAdvancedOptions) ...[
                  Row(
                    children: [
                      Expanded(
                        child: GuestCounter(
                          label: AppStrings.adults,
                          count: adults,
                          onDecrement: () {
                            if (adults > 0) {
                              setState(() => adults--);
                            }
                          },
                          onIncrement: () {
                            setState(() => adults++);
                          },
                        ),
                      ),
                      const SizedBox(width: AppTheme.spacing12),
                      Expanded(
                        child: GuestCounter(
                          label: AppStrings.children,
                          count: children,
                          onDecrement: () {
                            if (children > 0) {
                              setState(() => children--);
                            }
                          },
                          onIncrement: () {
                            setState(() => children++);
                          },
                        ),
                      ),
                      const SizedBox(width: AppTheme.spacing12),
                      Expanded(
                        child: GuestCounter(
                          label: AppStrings.infants,
                          count: infants,
                          onDecrement: () {
                            if (infants > 0) {
                              setState(() => infants--);
                            }
                          },
                          onIncrement: () {
                            setState(() => infants++);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppTheme.spacing20),

                  // Guest Summary
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: Theme.of(context).iconTheme.color?.withOpacity(0.6),
                        size: AppTheme.iconSizeMedium,
                      ),
                      const SizedBox(width: AppTheme.spacing8),
                      Text(
                        '$adults ${AppStrings.adultsCount}, $children',
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppTheme.spacing24),
                ],

                // Search Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: colorScheme.onPrimary),
                        const SizedBox(width: AppTheme.spacing8),
                        Text(
                          AppStrings.searchNow, 
                          style: AppTextStyles.button.copyWith(
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppTheme.spacing20),

                // Success Message
                Container(
                  padding: AppTheme.paddingAll16,
                  decoration: BoxDecoration(
                    color: isDark 
                        ? AppColors.successIcon.withOpacity(0.15)
                        : AppColors.successBackground,
                    borderRadius: AppTheme.borderRadius8,
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.check_circle, color: Color(0xFF4CAF50)),
                      SizedBox(width: AppTheme.spacing12),
                      Expanded(
                        child: Text(
                          AppStrings.searchingNearLocation,
                          style: AppTextStyles.success,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
