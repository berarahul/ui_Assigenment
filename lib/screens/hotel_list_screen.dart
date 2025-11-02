import 'package:flutter/material.dart';
import '../widgets/destination_card.dart';
import '../widgets/hotel_card.dart';
import '../widgets/theme_toggle_button.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;
    
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Destinations',
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headlineMedium?.color,
                      ),
                    ),
                    Row(
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_list, 
                            size: 18,
                            color: colorScheme.primary,
                          ),
                          label: Text(
                            'Filter',
                            style: TextStyle(color: colorScheme.primary),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: isDark 
                                  ? colorScheme.outline 
                                  : Colors.grey,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const ThemeToggleButton(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                                // Destination Cards
                Row(
                  children: const [
                    Expanded(
                      child: DestinationCard(
                        imageUrl: 'https://images.unsplash.com/photo-1561361513-2d000a50f0dc?w=400',
                        destination: 'Varanasi',
                        subtitle: 'India',
                        description: 'Spiritual Capital on the Ganges',
                        distance: '17km',
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: DestinationCard(
                        imageUrl: 'https://images.unsplash.com/photo-1582407947304-fd86f028f716?w=400',
                        destination: 'Varanasi',
                        subtitle: 'India',
                        description: 'Spiritual Capital on the Ganges',
                        distance: '17km',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Hotel Card
                const HotelCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
