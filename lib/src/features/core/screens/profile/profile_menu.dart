import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

void main() {
  runApp(ProfilePageApp());
}

class ProfilePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFD482E8),
        textTheme: txtTheme, // Apply the custom text theme
      ),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    );
  }
}

// Define the custom text theme
final TextTheme txtTheme = TextTheme(
  headlineSmall: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    color: Colors.grey,
  ),
);

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD482E8),
        elevation: 0,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.setting_2_copy, color: Colors.black),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section with background and profile image
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFD482E8), Color(0xFFEA80FC)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/profile.jpg'), // Replace with your profile image
                        ),
                        SizedBox(height: 10),
                        Text(
                          '@dhirojSahoo2000',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
                        ),
                        Text(
                          'Intermediate',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                        ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '15 Tests pass',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        buildDivider(),
                        Text(
                          ' 20 Courses Enrolled',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Add some space below the top section
            SizedBox(height: 100),
            // User Information Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileInfoRow(
                    icon: Iconsax.sms_copy,
                    title: 'Email',
                    subtitle: 'swavenir.system.com',
                  ),
                  ProfileInfoRow(
                    icon: Iconsax.mobile_copy,
                    title: 'Mobile',
                    subtitle: '1234567891',
                  ),
                  ProfileInfoRow(
                    icon: Iconsax.calendar_copy,
                    title: 'Joining Date',
                    subtitle: '01/01/2023',
                  ),
                  ProfileInfoRow(
                    icon: Iconsax.task_square_copy,
                    title: 'Course',
                    subtitle: 'Offline/ Cover The JLPT N5',
                  ),
                  ProfileInfoRow(
                    icon: Iconsax.wallet_1_copy,
                    title: 'Subscription Validity',
                    subtitle: '01/01/2024',
                  ),
                  ProfileInfoRow(
                    icon: Iconsax.check_copy,
                    title: 'Courses Completed',
                    subtitle: '5',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Container(
      height: 20,
      child: VerticalDivider(
        color: Colors.black,
        thickness: 1.5,
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  ProfileInfoRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                ),
                SizedBox(height: 2),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
