import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:moniepoint/colors.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        body: (context, controller) => Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/map.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.6),
            ),
            Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: AppColors.darkshade),
                    SizedBox(width: 10),
                    Text(
                      'Saint Petersburg',
                      style:  TextStyle(
                        color: AppColors.darkshade,
                        fontSize: 14,
                        fontFamily: 'Euclid Circular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 42,
              right: 25,
              child: FadeInDownBig(
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                  color: AppColors.darkshade,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 100,
              child: FadeInLeft(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 320,
              left: 10,
              child: FadeInLeft(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 150,
              right: 100,
              child: FadeInUp(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 850,
              right: 100,
              child: FadeInUp(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 450,
              right: 100,
              child: FadeInUp(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 550,
              right: 200,
              child: FadeInUp(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              top: 650,
              right: 100,
              child: FadeInLeft(
                  child: const Icon(Icons.location_city,
                      color: Colors.orange, size: 40)),
            ),
            Positioned(
              bottom: 100,
              right: 20,
              child: FadeInUp(
                child: buildGlassmorphicContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: Row(
                      children: [
                        FadeInRight(
                          child: const Icon(
                            Icons.stacked_line_chart,
                            color: Colors.white,
                          ),
                        ),
                        FadeInRight(
                          child: const Text(
                            "List of Variants",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Euclid Circular',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 155,
              left: 20,
              child: FadeInUp(
                child: buildGlassmorphicContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        FadeInRight(
                          child: const Icon(
                            Icons.library_add_check,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 20,
              child: FadeInUp(
                child: buildGlassmorphicContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        FadeInRight(
                          child: const Icon(
                            Icons.stacked_bar_chart,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
              _buildNavItem(Icons.home_rounded, false, context),
              _buildNavItem(Icons.location_city, true, context),
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
