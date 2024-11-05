
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.menu),
        title: Text('Dental-It'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.network(
                  'https://storage.googleapis.com/a1aa/image/ZfLksBoXBcT8QCB7DufvzIBKRqsYOpchOLD5SbikbHU9K9tTA.jpg',
                  height: 100,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue[400],
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[100],
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  buildGridItem(Icons.add_circle_outline, 'Request Appointments'),
                  buildGridItem(Icons.list_alt, 'My Appointments'),
                  buildGridItem(Icons.info_outline, 'Treatment Info'),
                  buildGridItem(Icons.search, 'Search', onTap: () {
                    // Handle search button click
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Search'),
                        content: Text('Search button clicked!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(IconData icon, String title, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 60),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
