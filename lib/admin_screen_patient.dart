import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(171, 202, 212, 223),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final nameController = TextEditingController();
              final ageController = TextEditingController();
              File? image;

              return StatefulBuilder(
                builder: (context, setState) {
                  return AlertDialog(
                    title: const Text(
                      'Add Patient',
                      style: TextStyle(fontFamily: 'Ubuntu'),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                        ),
                        TextField(
                          controller: ageController,
                          decoration: const InputDecoration(
                            labelText: 'Age',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        ElevatedButton(
                          onPressed: image != null
                              ? null
                              : () async {
                                  final pickedFile = await ImagePicker()
                                      .pickImage(source: ImageSource.gallery);
                                  if (pickedFile != null) {
                                    setState(() {
                                      image = File(pickedFile.path);
                                    });
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                image != null ? Colors.green : null,
                          ),
                          child: Text(
                            image != null ? 'Uploaded' : 'Upload Photo',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color:
                                  image != null ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          image != null
                              ? 'Image Selected'
                              : 'No Image Selected',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            color: image != null ? Colors.green : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontFamily: 'Ubuntu'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add student logic here
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Database error',
                                style: TextStyle(fontFamily: 'Ubuntu'),
                              ),
                              backgroundColor: Color.fromARGB(255, 114, 35, 30),
                            ),
                          );

                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(fontFamily: 'Ubuntu'),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ).animate().scaleXY(delay: const Duration(milliseconds: 500)),
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
                backgroundImage:
                    AssetImage('assets/images/students/student1.png'),
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
                backgroundImage:
                    AssetImage('assets/images/patients/patient5.png'),
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
                backgroundImage:
                    AssetImage('assets/images/patients/patient4.png'),
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
                backgroundImage:
                    AssetImage('assets/images/patients/patient3.png'),
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
                backgroundImage:
                    AssetImage('assets/images/patients/patient2.png'),
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
                backgroundImage:
                    AssetImage('assets/images/patients/patient1.png'),
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
