import 'package:flutter/material.dart';
import 'room_option_card.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    final cardColor = Theme.of(context).cardColor;
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;
    
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.primary, 
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark 
                ? Colors.black.withOpacity(0.4)
                : Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hotel Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?w=800',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.hotel, size: 60, color: Colors.grey)),
                    );
                  },
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark ? cardColor : Colors.white, 
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border, 
                    color: colorScheme.primary, 
                    size: 24,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Deal Badge and Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: isDark 
                            ? Colors.pink.withOpacity(0.2)
                            : Colors.pink[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Daily Steal Deal',
                        style: TextStyle(
                          color: isDark ? Colors.pink[300] : Colors.pink,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹2,164',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            color: textColor?.withOpacity(0.5),
                          ),
                        ),
                        Text(
                          '+₹722 taxes & fees',
                          style: TextStyle(
                            fontSize: 10, 
                            color: textColor?.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'per night', 
                          style: TextStyle(
                            fontSize: 10, 
                            color: textColor?.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Timer
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: isDark 
                        ? Colors.pink.withOpacity(0.2)
                        : Colors.pink[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Ends in 18h:16m:33s',
                    style: TextStyle(
                      color: isDark ? Colors.pink[300] : Colors.pink, 
                      fontSize: 12, 
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Hotel Name and Rating
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Taj Hotel',
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isDark 
                            ? Colors.green.withOpacity(0.2)
                            : Colors.green[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        '3-Star Hotel',
                        style: TextStyle(
                          color: isDark ? Colors.green[300] : Colors.green,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Rating
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      '5 (5)',
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '· 5.7km', 
                      style: TextStyle(
                        fontSize: 14, 
                        color: textColor?.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Address
                Text(
                  '1, Ranthambore Fatah, 888 Aam Bazar, Rajpi Nagar (( Rampuri Nagar, Gorakhpur, Uttar Pradesh-273001',
                  style: TextStyle(
                    fontSize: 12, 
                    color: textColor?.withOpacity(0.6), 
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),

                // Amenities
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildAmenityChip(context, 'WiFi'),
                    _buildAmenityChip(context, 'Pool'),
                    _buildAmenityChip(context, 'Gym'),
                    _buildAmenityChip(context, 'Room Service'),
                    _buildAmenityChip(context, '+5 more'),
                  ],
                ),
                const SizedBox(height: 16),

                // Check-in/Check-out times
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.login, 
                            size: 16, 
                            color: textColor?.withOpacity(0.7),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Check-in:10:00:00',
                            style: TextStyle(
                              fontSize: 12, 
                              color: textColor?.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout, 
                            size: 16, 
                            color: textColor?.withOpacity(0.7),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Check-out:11:00:00',
                            style: TextStyle(
                              fontSize: 12, 
                              color: textColor?.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Available Rooms
                Row(
                  children: [
                    Icon(
                      Icons.meeting_room, 
                      size: 16, 
                      color: textColor?.withOpacity(0.7),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Available Rooms (3):',
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Room Options
                const RoomOptionCard(
                  roomName: 'Ocean View Room',
                  price: '₹10000.00',
                  maxGuests: 2,
                  bedType: 'King',
                  available: 10,
                ),
                const SizedBox(height: 12),
                const RoomOptionCard(
                  roomName: 'Ocean View Room',
                  price: '₹10000.00',
                  maxGuests: 2,
                  bedType: 'King',
                  available: 10,
                ),
                const SizedBox(height: 16),

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: colorScheme.primary,
                          side: BorderSide(color: colorScheme.primary),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'View Details',
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w600,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAmenityChip(BuildContext context, String label) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isDark 
            ? colorScheme.primary.withOpacity(0.2)
            : Colors.blue[50], 
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isDark ? colorScheme.primary.withOpacity(0.9) : const Color(0xFF2196F3), 
          fontSize: 12, 
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
