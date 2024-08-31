import 'package:flutter/material.dart';

class AdPatient extends StatefulWidget {
  const AdPatient({super.key});

  @override
  State<AdPatient> createState() => _AdPatientState();
}

class _AdPatientState extends State<AdPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Here are new cases',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              firstPatient(),
              secondPatient(),
              thirdPatient(),
              fourthPatient(),
              fifthPatient(),
              sixthPatient()
            ],
          ),
        ),
      ),
    );
  }

  Padding sixthPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient5.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 6',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding fifthPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient5.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 5',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding fourthPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient4.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 4',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding thirdPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient3.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 3',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding secondPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient2.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 2',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding firstPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20), // Round corners
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/patient1.png'),
                radius: 30,
              ),
              title: Text(
                'Patient 1',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age: 27',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                  Text(
                    'routine examination',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Color(0xFF7CA0CA)),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  // Add another arrow button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
