import 'package:buoi18_exercises/screen3/fruit_card.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F8F8),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 24),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              Expanded(
                child: FruitCard('Orange', '1000 ready stock', '\$15', 0),
              ),
              Expanded(
                child: FruitCard('Apple', '1000 ready stock', '\$20', 1),
              ),
              Expanded(
                child: FruitCard('Banana', '1000 ready stock', '\$5', 2),
              ),
              Expanded(
                child: FruitCard('Mango', '1000 ready stock', '\$15', 3),
              ),
              Expanded(
                child: FruitCard('Orange', '1000 ready stock', '\$10', 4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
