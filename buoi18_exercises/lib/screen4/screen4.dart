import 'package:buoi18_exercises/screen4/image_card.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C4A5C),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Find products easier here',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF9500),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              
              Expanded(
                child: ImageCard(
                  title: 'Lamp',
                  icon: Icons.image,
                  onTap: () {
                    print('Tapped on Lamp');
                  },
                ),
              ),
              SizedBox(height: 20),
              
              Expanded(
                child: ImageCard(
                  title: 'Car',
                  icon: Icons.image,
                  onTap: () {
                    print('Tapped on Car');
                  },
                ),
              ),
              SizedBox(height: 20),
              
              Expanded(
                child: ImageCard(
                  title: 'Plant',
                  icon: Icons.image,
                  onTap: () {
                    print('Tapped on Plant');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

