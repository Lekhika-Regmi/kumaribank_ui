import 'package:flutter/material.dart';

class ServiceItem {
  final String label;
  final String iconPath; // or use Image.asset if needed
  final VoidCallback onTap;

  ServiceItem({
    required this.label,
    required this.iconPath,
    required this.onTap,
  });
}

class ServiceSection extends StatelessWidget {
  final String title;
  final List<ServiceItem> items;
  final VoidCallback? onViewAll;

  const ServiceSection({
    super.key,
    required this.title,
    required this.items,
    this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final displayItems = items.length > 4 ? items.sublist(0, 4) : items;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title + optional View All
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (items.length > 4 && onViewAll != null)
                GestureDetector(
                  onTap: onViewAll,
                  child: Text(
                    'View All >',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          // const SizedBox(height: 12),
          // Icon Grid
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            children: displayItems
                .map(
                  (item) => GestureDetector(
                    onTap: item.onTap,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Image.asset(
                              item.iconPath,
                              // like 'assets/icons/open_account.png'
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item.label,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
