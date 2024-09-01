import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdStudent extends StatefulWidget {
  const AdStudent({super.key});

  @override
  State<AdStudent> createState() => _AdStudentState();
}

class _AdStudentState extends State<AdStudent> {
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
                'Here are students with diente',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              studentOne(),
              studentTwo(),
              studentThree(),
              studentFour(),
              studentFive(),
              studentSix()
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

  Padding studentSix() {
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/patients/patient1.png'),
                radius: 30,
              ),
              title: Text(
                'Student 6',
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
                    'First year',
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

  Padding studentFive() {
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/patients/patient3.png'),
                radius: 30,
              ),
              title: Text(
                'Student 5',
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
                    'First year',
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

  Padding studentFour() {
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/patients/patient2.png'),
                radius: 30,
              ),
              title: Text(
                'Student 4',
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
                    'First year',
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

  Padding studentThree() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/patients/patient4.png'),
                radius: 30,
              ),
              title: Text(
                'Student 3',
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
                    'First year',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding studentTwo() {
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/students/student2.png'),
                radius: 30,
              ),
              title: Text(
                'Student 2',
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
                    'First year',
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

  Padding studentOne() {
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/students/student1.png'),
                radius: 30,
              ),
              title: Text(
                'Student 1',
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
                    'First year',
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
