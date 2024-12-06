import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:japa_quest/src/constants/colors.dart';
import 'package:japa_quest/src/constants/image_strings.dart';
import 'package:japa_quest/src/constants/sizes.dart';
import 'package:japa_quest/src/constants/text_strings.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/widgets/categories/alphabet_screen/alphabet_screen.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/widgets/categories/conversation%20_screen/conversation_page.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/widgets/categories/grammer_page/grammer_page.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/widgets/categories/kanji_page/kanji_page.dart';
import 'package:japa_quest/src/features/core/screens/dashboard/widgets/categories/vocabulary_screen/vocabulary_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Index to track current banner position
  int _currentIndex = 0;

  // List of banner images
  final List<String> bannerImages = [
    tAdsImages1, // Replace with your image paths
    tAdsImages2, // Replace with your image paths
    tAdsImages3, // Replace with your image paths
    tAdsImages4, // Replace with your image paths
  ];

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD482E8),
        elevation: 4.0, // Adds shadow effect
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        title: Text(
          tAppName,
          style: txtTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold, // Makes title more prominent
            letterSpacing: 1, // Adds spacing between letters for better readability
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Iconsax.notification_copy,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Action for notifications
                  },
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.redAccent, // Notification badge color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '3', // Example: Notification count
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xFFF3E5F5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // User Account Header
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD482E8),
              ),
              accountName: Text(
                'Dhiroj Kumar Sahoo',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'swavenir.system@gamil.com',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/profile.jpg'), // Replace with your user's profile image path
              ),
            ),

            // List Items
            ListTile(
              leading: const Icon(Iconsax.book_copy, color: Colors.deepPurple),
              title: const Text('My Courses'),
              onTap: () {
                // Navigate to My Courses
              },
            ),
            ListTile(
              leading:
                  const Icon(Iconsax.bookmark_copy, color: Colors.deepPurple),
              title: const Text('Bookmarks'),
              onTap: () {
                // Navigate to Bookmarks
              },
            ),
            ListTile(
              leading:
                  const Icon(Iconsax.stacks_stx_copy, color: Colors.deepPurple),
              title: const Text('Achievements'),
              onTap: () {
                // Navigate to Notifications
              },
            ),
            ListTile(
              leading: const Icon(Iconsax.award_copy, color: Colors.deepPurple),
              title: const Text('Progress Tracker'),
              onTap: () {
                // Navigate to Progress Tracker
              },
            ),
            ListTile(
              leading:
                  const Icon(Iconsax.settings_copy, color: Colors.deepPurple),
              title: const Text('Settings'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              leading:
                  const Icon(Iconsax.support_copy, color: Colors.deepPurple),
              title: const Text('Help & Support'),
              onTap: () {
                // Navigate to Help & Support
              },
            ),
            ListTile(
              leading: const Icon(Iconsax.info_circle_copy,
                  color: Colors.deepPurple),
              title: const Text('About Us'),
              onTap: () {
                // Navigate to AboutUS
              },
            ),
            const Divider(),
            ListTile(
              leading:
                  const Icon(Iconsax.login_1_copy, color: Colors.deepPurple),
              title: const Text('Login'),
              onTap: () {
                // Handle logout
              },
            ),
            ListTile(
              leading:
                  const Icon(Iconsax.logout_1_copy, color: Colors.deepPurple),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout
              },
            ),

            // Add space between the list and the bottom items
            const SizedBox(height: 10),

            // About and Copyright Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    '© 2024 Swavenir System. All rights reserved.',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ADS Slide.....
              CarouselSlider(
                items: bannerImages
                    .map(
                      (item) => ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentIndex,
                  count: bannerImages.length,
                  effect: const WormEffect(
                    dotHeight: 5,
                    activeDotColor: Color(0xff272727),
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              /// Welcome Section with Progress Bar
              Text(
                tDashboardHeading,
                style: txtTheme.titleLarge,
              ),
              const SizedBox(height: 10),

              /// process Bar
              LinearProgressIndicator(
                value: 0.7, // Example progress value
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation(TColors.black),
              ),
              const SizedBox(height: 20),

              /// Search Box
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tDashboardSearch,
                        style: txtTheme.titleLarge?.copyWith(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      const Icon(Iconsax.microphone, size: 25),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              /// Category Section with Cards
              Text(
                tDashboardCategory,
                style: txtTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 80, // Increased height for larger cards
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///Lessons Category
                    InkWell(
                      child: _buildCategoryCard(
                        txtTheme,
                        icon: Iconsax.translate_copy,
                        title: "Alphabets",
                        subtitle: "2 lessons",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AlphabetScreen()));
                      },
                    ),
                    InkWell(
                      child: _buildCategoryCard(
                        txtTheme,
                        icon: Iconsax.language_circle_copy,
                        title: "Kanji Page",
                        subtitle: "1 Lessons",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KanjiPage()));
                      },
                    ),
                    InkWell(
                      child: _buildCategoryCard(
                        txtTheme,
                        icon: Iconsax.book_1_copy,
                        title: "Grammar",
                        subtitle: "8 lessons",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrammarPage()));
                      },
                    ),
                    InkWell(
                      child: _buildCategoryCard(
                        txtTheme,
                        icon: Iconsax.translate_copy,
                        title: "Conversation Page",
                        subtitle: "5 lessons",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ConversationPage()));
                      },
                    ),
                    InkWell(
                      child: _buildCategoryCard(
                        txtTheme,
                        icon: Iconsax.speaker_copy,
                        title: "Vocabulary",
                        subtitle: "7 lessons",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VocabularyScreen()));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              /// Top Lessons Banner Section
              Text(
                tDashboardTopLessons,
                style: txtTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              _buildBannerSection(txtTheme),

              /// Top Courses Section
              const SizedBox(height: tDashboardPadding),
              Text(
                tDashboardTopCourses,
                style: txtTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 210, // Increased height for more prominent cards
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildTopCourseCard(
                      txtTheme,
                      "Katakana",
                      "3 Sections",
                      tTopCourseImage2,
                    ),
                    _buildTopCourseCard(
                      txtTheme,
                      "Hiragana",
                      "4 Sections",
                      tTopCourseImage1,
                    ),
                    _buildTopCourseCard(
                      txtTheme,
                      "Kanji",
                      "5 Sections",
                      tOnBoardingImage3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Category Section with Cards
  Widget _buildCategoryCard(
    TextTheme txtTheme, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(icon, color: TColors.black),
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: txtTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subtitle,
                      style: txtTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Banner Section
  Widget _buildBannerSection(TextTheme txtTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFF3E5F5),
                      const Color(0xFFF3E5F5).withOpacity(0.7)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          tBannerImage1,
                          width: 100,
                          height: 100,
                        ),
                        const Icon(Icons.bookmark, color: Colors.black),

                      ],
                    ),

                    Text(
                      tDashboardBannerTitle1,
                      style: txtTheme.titleMedium?.copyWith(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      tDashboardBannerSubTitle,
                      style: txtTheme.bodySmall
                          ?.copyWith(color: Colors.black.withOpacity(0.7)),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: tDashboardCardPadding),
            // Expanded(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       gradient: LinearGradient(
            //         colors: [
            //           const Color(0xFFF3E5F5),
            //           const Color(0xFFF3E5F5).withOpacity(0.7)
            //         ],
            //         begin: Alignment.topRight,
            //         end: Alignment.bottomLeft,
            //       ),
            //     ),
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             const Icon(Icons.bookmark, color: Colors.black),
            //             Image.asset(
            //               tOnBoardingImage3,
            //               width: 70,
            //               height: 70,
            //             ),
            //           ],
            //         ),
            //         const SizedBox(height: 10),
            //         Text(
            //           tDashboardBannerTitle2,
            //           style: txtTheme.titleMedium?.copyWith(color: Colors.black),
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //         const SizedBox(height: 5),
            //         Text(
            //           tDashboardBannerSubTitle,
            //           style: txtTheme.bodySmall
            //               ?.copyWith(color: Colors.black.withOpacity(0.7)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

          ],
        ),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 5),
        //     child: TextButton(
        //       onPressed: () {
        //         // Add your onPressed action here
        //       },
        //       style: TextButton.styleFrom(
        //         foregroundColor: Colors
        //             .blueAccent, // Use your primary color or a color of your choice
        //       ),
        //       child: const Text('More Details'),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  /// Top Course Card Section
  Widget _buildTopCourseCard(
    TextTheme txtTheme,
    String title,
    String subtitle,
    String imagePath,
  ) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // Course Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // Rounded corners for the image
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                  // Video Play Icon
                  Positioned(
                    top: 35,
                    left: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: txtTheme.titleMedium,
              ),
              Text(
                subtitle,
                style: txtTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 15),
                  const SizedBox(width: 5),
                  Text("4.5", style: txtTheme.bodySmall),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
