import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:japa_quest/src/constants/colors.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/dashboard.dart';
import 'package:japa_quest/src/features/core/screens/profile/profile_menu.dart';
import 'package:japa_quest/src/features/core/screens/subscription/subscription_page.dart';
import 'package:japa_quest/src/features/core/screens/test/test_menu.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () =>  NavigationBar(
          height: 65,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>  controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_copy),label: 'Home',),
            NavigationDestination(icon: Icon(Iconsax.code_copy),label: 'Test',),
            NavigationDestination(icon: Icon(Iconsax.paypal_copy),label: 'Pass',),
            NavigationDestination(icon: Icon(Iconsax.user_copy),label: 'profile',),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens =[const Dashboard(), TestPage(),SubscriptionApp(),ProfilePageApp(),];
}