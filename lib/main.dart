import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gorgeous App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fantastic Design',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 24,
                color: Colors.white,
                shadows: [Shadow(color: Colors.black38, blurRadius: 5)])),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade600, Colors.blue.shade600],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple.shade800,
              Colors.blue.shade800,
              Colors.green.shade800,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated floating container
              AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 20,
                      spreadRadius: 2,
                      offset: Offset(0, 10),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.pink.shade200, Colors.blue.shade200],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              // Styled text with multiple effects
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white30, width: 2),
                ),
                child: Text(
                  'BEAUTIFUL DESIGN',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontFamily: 'Poppins',
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Animated button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  shadowColor: Colors.white,
                  elevation: 10,
                ),
                onPressed: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.pinkAccent, Colors.blueAccent],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'EXPLORE MORE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}