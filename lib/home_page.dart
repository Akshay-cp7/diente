import 'package:diente/admin_screen_students.dart';
import 'package:diente/admin_screen_patient.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/diente_image.jpg',
            width: 300,
            height: 200,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF7CA0CA),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Patients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Student',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });

          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      listitemOne(),
                      listitemTwo(),
                      listitemThree(),
                      listitemFour(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const AdPatient(),
          const AdStudent(),
        ],
      ),
    );
  }

  Padding listitemFour() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'waiting cases',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 23,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
                Text(
                  '17',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding listitemThree() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'active cases',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 23,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
                Text(
                  '7',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding listitemTwo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'number of patients',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 23,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
                Text(
                  '24',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding listitemOne() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'number of students',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 23,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
                Text(
                  '40',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7CA0CA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
