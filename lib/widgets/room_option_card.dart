import 'package:flutter/material.dart';

class RoomOptionCard extends StatelessWidget {
  final String roomName;
  final String price;
  final int maxGuests;
  final String bedType;
  final int available;

  const RoomOptionCard({
    super.key,
    required this.roomName,
    required this.price,
    required this.maxGuests,
    required this.bedType,
    required this.available,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    final textColor = Theme.of(context).textTheme.bodyMedium?.color;
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark 
            ? colorScheme.primary.withOpacity(0.15)
            : const Color(0xFFE1BEE7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        roomName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'King',
                        style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.people, 
                      size: 14, 
                      color: textColor?.withOpacity(0.8),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Max $maxGuests guests',
                      style: TextStyle(
                        fontSize: 11, 
                        color: textColor?.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      Icons.bed, 
                      size: 14, 
                      color: textColor?.withOpacity(0.8),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$available available',
                      style: TextStyle(
                        fontSize: 11, 
                        color: textColor?.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
              Text(
                'per night', 
                style: TextStyle(
                  fontSize: 10, 
                  color: textColor?.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
