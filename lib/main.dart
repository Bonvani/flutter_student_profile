import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Student Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExeXlpdDQwb201YXRsaXY1MDFyamtseXN4MGZ6cXhpOG5raDlxYTVsMyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/KbdF8DCgaoIVC8BHTK/giphy.gif',
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Jerome Ivan Beato',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '"Boni"',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue.shade700),
                          SizedBox(width: 8),
                          Text(
                            'Personal Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      buildInfoTile(Icons.cake, 'Age', '20 years old'),
                      buildInfoTile(Icons.calendar_today, 'Birthday', 'August 30, 2005'),
                      buildInfoTile(Icons.home, 'Address', 'Banlic, Cabuyao, Laguna'),
                      buildInfoTile(Icons.favorite, 'Hobby', 'Crocheting and online gaming'),
                      buildInfoTile(Icons.format_quote, 'Motto', 'Live your life to the fullest.'),
                      buildInfoTile(Icons.school, 'Course/Program', 'BS Information Technology'),
                      buildInfoTile(Icons.stairs, 'Year Level', '3rd Year'),
                      buildInfoTile(Icons.groups, 'Section', '3IT-A'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.menu_book, color: Colors.blue.shade700),
                          SizedBox(width: 8),
                          Text(
                            'Academic Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      buildInfoTile(Icons.star, 'Favorite Subject', 'Mobile Application Development'),
                      buildInfoTile(Icons.code, 'Programming Language', 'Java, HTML, CSS, JavaScript, PHP, Dart'),
                      buildInfoTile(Icons.build, 'Technical Skill', 'Full-stack web development'),
                      buildInfoTile(Icons.flag, 'Career Goal', 'Become a mobile app developer'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      showMessage(context, 'Contact info sent!');
                    },
                    icon: Icon(Icons.email),
                    label: Text('Contact Me'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      showMessage(context, 'Thanks for viewing my profil!');
                    },
                    icon: Icon(Icons.thumb_up),
                    label: Text('Like Profile'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildInfoTile(IconData icon, String label, String value) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.blue.shade700),
      title: Text(
        label,
        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
      ),
      subtitle: Text(
        value,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}