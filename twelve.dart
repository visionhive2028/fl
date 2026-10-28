import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: StudentForm()));
class StudentForm extends StatefulWidget {
  @override
  State<StudentForm> createState() => _StudentFormState();
}
class _StudentFormState extends State<StudentForm> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  String gender = 'Male';
  String course = 'CSE';
  DateTime? dob;
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Form')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: name, decoration: InputDecoration(labelText: 'Name')),
            TextField(controller: email, decoration: InputDecoration(labelText: 'Email')),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            TextField(controller: phone, decoration: InputDecoration(labelText: 'Phone')),
            RadioGroup<String>(
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v!),
              child: Column(
                children: [
                  RadioListTile<String>(value: 'Male', title: Text('Male')),
                  RadioListTile<String>(value: 'Female', title: Text('Female')),
                ],
              ),
            ),
            DropdownButton<String>(
              value: course,
              items: ['CSE', 'ECE', 'IT']
                  .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                  .toList(),
              onChanged: (v) => setState(() => course = v!),
            ),
            ListTile(
              title: Text(dob == null
                  ? 'Select Date of Birth'
                  : '${dob!.day}/${dob!.month}/${dob!.year}'),
              trailing: Icon(Icons.calendar_today),
              onTap: () async {
                final d = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1990),
                  lastDate: DateTime.now(),
                  initialDate: DateTime(2005),
                );
                if (d != null) setState(() => dob = d);
              },
            ),
            CheckboxListTile(
              title: Text('Accept Terms'),
              value: agree,
              onChanged: (v) => setState(() => agree = v!),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                if (name.text.isEmpty ||
                    email.text.isEmpty ||
                    password.text.isEmpty ||
                    phone.text.isEmpty ||
                    dob == null ||
                    !agree) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Fill all fields and accept terms')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registration Successful')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
