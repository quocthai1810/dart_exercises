import 'package:flutter/material.dart';

class FruitCard extends StatelessWidget {
  final String name;
  final String stock; 
  final String price;
  final int index;
  const FruitCard(this.name,  this.stock,  this.price,  this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    stock,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey[400],
                size: 24,
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 5,
          endIndent: 5,
        ),
      ],
    );
  }
}