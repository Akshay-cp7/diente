class Patient {
  String name;
  int age;
  String locatiom;
  Patient({required this.name, required this.age, required this.locatiom});
}

Patient patient1 = Patient(
  name: 'John Doe',
  age: 30,
  locatiom: 'New York',
);

Patient patient2 = Patient(
  name: 'Jane Smith',
  age: 25,
  locatiom: 'Los Angeles',
);
