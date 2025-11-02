import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headers
  static const TextStyle headerLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headerMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headerSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Body Text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodyTiny = TextStyle(
    fontSize: 11,
    color: AppColors.textGrey,
  );

  static const TextStyle bodyExtraTiny = TextStyle(
    fontSize: 10,
    color: AppColors.textSecondary,
  );

  // Labels
  static const TextStyle label = TextStyle(
    fontSize: 16,
    color: AppColors.textGrey,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
    fontWeight: FontWeight.w600,
  );

  // Hints
  static TextStyle hint = TextStyle(
    color: AppColors.disabledGrey,
    fontSize: 16,
  );

  // Buttons
  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // Special Text Styles
  static const TextStyle price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryPurple,
  );

  static const TextStyle priceLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle priceStrikethrough = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.lineThrough,
    color: AppColors.disabledGrey,
  );

  static const TextStyle hotelName = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle destinationName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle rating = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle distance = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  // Badge Styles
  static const TextStyle badgePink = TextStyle(
    color: AppColors.pink,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle badgeGreen = TextStyle(
    color: AppColors.green,
    fontSize: 11,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle badgeBlue = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle badgeWhite = TextStyle(
    color: AppColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  // Chip Styles
  static const TextStyle chipSmall = TextStyle(
    fontSize: 10,
    color: AppColors.pink,
    fontWeight: FontWeight.w600,
  );

  // Link/Action Styles
  static const TextStyle link = TextStyle(
    color: AppColors.primaryPurple,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // Success/Info Messages
  static const TextStyle success = TextStyle(
    color: AppColors.successText,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  // Counter
  static const TextStyle counter = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Address
  static const TextStyle address = TextStyle(
    fontSize: 12,
    color: AppColors.textGrey,
    height: 1.4,
  );

  // Room Details
  static const TextStyle roomName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryPurple,
  );

  static TextStyle roomInfo = TextStyle(
    fontSize: 11,
    color: Colors.grey[700],
  );
}
