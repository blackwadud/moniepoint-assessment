import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:moniepoint/colors.dart';
import 'dart:ui';

import 'package:moniepoint/view/location_page.dart';

class RealEstateHomePage extends StatelessWidget {
  const RealEstateHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        body: (context, controller) => Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.5, 1.0],
                      colors: [
                        Color.fromARGB(255, 255, 248, 244),
                        Color.fromARGB(255, 250, 242, 232),
                        Color.fromARGB(255, 235, 185, 106),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeInLeft(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: AppColors.mediumshade),
                                  SizedBox(width: 4),
                                  Text(
                                    'Saint Petersburg',
                                    style: TextStyle(
                                      color: AppColors.mediumshade,
                                      fontSize: 14,
                                      fontFamily: 'Euclid Circular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FadeInDown(
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          FadeInUp(
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Hi, Marina",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.mediumshade,
                                  fontFamily: 'Euclid Circular',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          FadeInUp(
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "let's select your perfect place",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: 'Euclid Circular',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeInUp(
                            child: const CircleAvatar(
                              backgroundColor: AppColors.lightshade,
                              radius: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Text(
                                    "BUY",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Euclid Circular',
                                    ),
                                  ),
                                  Text(
                                    "1034",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: 'Euclid Circular',
                                    ),
                                  ),
                                  Text(
                                    "offers",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Euclid Circular',
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(height: 10)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          FadeInUp(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              ),
                              child: const SizedBox(
                                width: 130,
                                height: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Text(
                                      "RENT",
                                      style: TextStyle(
                                        color: AppColors.mediumshade,
                                        fontSize: 12,
                                        fontFamily: 'Euclid Circular',
                                      ),
                                    ),
                                    Text(
                                      "2212",
                                      style: TextStyle(
                                        color: AppColors.mediumshade,
                                        fontSize: 40,
                                        fontFamily: 'Euclid Circular',
                                      ),
                                    ),
                                    Text(
                                      "offers",
                                      style: TextStyle(
                                        color: AppColors.mediumshade,
                                        fontSize: 14,
                                        fontFamily: 'Euclid Circular',
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(height: 10)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 50),
              child: DraggableScrollableSheet(
                initialChildSize: 0.42,
                minChildSize: 0.42,
                maxChildSize: 0.8,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          FadeInUp(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/house.jpg",
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(24),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 20,
                                    child: buildGlassmorphicContainer(
                                      child: SizedBox(
                                        width: 350,
                                        child: Row(
                                          children: [
                                            const Spacer(),
                                            const Text(
                                              "Gladkova St., 25",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontFamily: 'Euclid Circular',
                                              ),
                                            ),
                                            const Spacer(),
                                            FadeInLeft(
                                              delay: const Duration(seconds: 2),
                                              child: const CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 250, 242, 232),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: AppColors.darkshade,
                                                  size: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          buildHouseRow(
                            "Trindatgs St., 25",
                            "Plastonia St., 65",
                            "house2.jpg",
                            "house3.jpg",
                          ),
                          buildHouseRow(
                            "Sherri St., 25",
                            "Sjava St., 28",
                            "avatar.jpg",
                            "profile.jpg",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width - 60,
        hideOnScroll: true,
        borderRadius: BorderRadius.circular(500),
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
        showIcon: true,
        barAlignment: Alignment.bottomCenter,
        barColor: Colors.white,
        start: 2,
        end: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavItem(Icons.home_rounded, true, context),
              _buildNavItem(Icons.location_city, false, context),
              _buildNavItem(Icons.message_outlined, false, context),
              _buildNavItem(Icons.person_outline, false, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isSelected, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (icon == Icons.location_city) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MapScreen()),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.lightshade.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(35),
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.darkshade,
          child: Icon(
            icon,
            color: isSelected ? AppColors.lightshade : Colors.grey,
            size: 28,
          ),
        ),
      ),
    );
  }

  Widget buildHouseRow(
      String address1, String address2, String image1, String image2) {
    return FadeInUp(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              child: buildHouseItem(address1, image1),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: buildHouseItem(address2, image2),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHouseItem(String address, String imagePath) {
    return FadeInUp(
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/$imagePath"),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: buildGlassmorphicContainer(
              child: SizedBox(
                width: 170,
                child: Row(
                  children: [
                    const Spacer(),
                    Text(
                      address,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Euclid Circular',
                      ),
                    ),
                    const Spacer(),
                    FadeInLeft(
                      delay: const Duration(seconds: 2),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 250, 242, 232),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.darkshade,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGlassmorphicContainer({required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
