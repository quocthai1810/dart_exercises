import 'package:buoi18_exercises/screen5/bestseller_item.dart';
import 'package:buoi18_exercises/screen5/category_item.dart';
import 'package:buoi18_exercises/screen5/orange_dot.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with welcome message and cart
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back,',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Samantha William',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 24,
                            color: Colors.grey[600],
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Center(child: Text("1",style: TextStyle(fontSize: 8),),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Search bar
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey[400]),
                            SizedBox(width: 10),
                            Text(
                              'Searching item',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9500),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Image banner
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF5BA4B0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.image,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Image Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                // Dots indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OrangeDot(selected: true),
                    SizedBox(width: 8),
                    OrangeDot(),
                    SizedBox(width: 8),
                    OrangeDot(),
                    SizedBox(width: 8),
                    OrangeDot(),
                  ],
                ),
                SizedBox(height: 30),
                // Categories grid - Row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      icon: Icons.music_note,
                      label: 'Music',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.bar_chart,
                      label: 'Property',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.headset,
                      label: 'Game',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.phone_android,
                      label: 'Gadget',
                      color: Color(0xFF5BA4B0),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Categories grid - Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      icon: Icons.computer,
                      label: 'Electronic',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.home,
                      label: 'Property',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.sports_esports,
                      label: 'Game',
                      color: Color(0xFF5BA4B0),
                    ),
                    CategoryItem(
                      icon: Icons.book,
                      label: 'Book',
                      color: Color(0xFF5BA4B0),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Best Seller section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Seller',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFF9500),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Best seller items
                Row(
                  children: [
                    Expanded(
                      child: BestSellerItem(
                        title: 'Plant',
                        rating: 5.0,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: BestSellerItem(
                        title: 'Lamp',
                        rating: 5.0,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: BestSellerItem(
                        title: 'Chair',
                        rating: 5.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



