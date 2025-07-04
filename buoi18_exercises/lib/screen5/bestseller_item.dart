import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  final String title;
  final double rating;

  const BestSellerItem({
    Key? key,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF5BA4B0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Image Here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 12),
            Icon(Icons.star, color: Colors.amber, size: 12),
            Icon(Icons.star, color: Colors.amber, size: 12),
            Icon(Icons.star, color: Colors.amber, size: 12),
            Icon(Icons.star, color: Colors.amber, size: 12),
            SizedBox(width: 4),
            Text(
              rating.toString(),
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }
}