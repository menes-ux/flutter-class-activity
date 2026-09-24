import 'package:flutter/material.dart';

class FormActivity extends StatefulWidget {
  const FormActivity({super.key});

  @override
  State<FormActivity> createState() => _FormActivityState();
}

class _FormActivityState extends State<FormActivity> {
  String selectedSex = 'Male';
  bool isMlChecked = false;
  bool isFullStackChecked = false;
  bool isMobileAppChecked = false;
  double tuitionValue = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Removed SafeArea and padding so it looks a bit more cramped and unpolished
      body: Column(
        children: [
          // Removed the Welcome Back text entirely
          
          Row(
            children: [
              const Text('Username: '),
              Expanded(
                child: TextField(), // Removed the grey background and error text
              ),
            ],
          ),
          
          Row(
            children: [
              const Text('Password: '),
              Expanded(
                child: TextField(obscureText: true), // Kept it hidden, but no eye icon
              ),
            ],
          ),
          
          Row(
            children: [
              const Text('Sex: '),
              Radio(value: 'Male', groupValue: selectedSex, onChanged: (val) => setState(() => selectedSex = val.toString())),
              const Text('Male'),
              Radio(value: 'Female', groupValue: selectedSex, onChanged: (val) => setState(() => selectedSex = val.toString())),
              const Text('Female'),
            ],
          ),
          
          Row(
            children: [
              const Text('Courses: '),
              Expanded(
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: const Text('Machine Learning'),
                      value: isMlChecked,
                      onChanged: (val) => setState(() => isMlChecked = val!),
                    ),
                    CheckboxListTile(
                      title: const Text('Full stack'),
                      value: isFullStackChecked,
                      onChanged: (val) => setState(() => isFullStackChecked = val!),
                    ),
                    CheckboxListTile(
                      title: const Text('Mobile application'),
                      value: isMobileAppChecked,
                      onChanged: (val) => setState(() => isMobileAppChecked = val!),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const Text('Tuition'),
          Slider(
            value: tuitionValue,
            min: 0,
            max: 100,
            onChanged: (val) => setState(() => tuitionValue = val),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Submit')),
              const SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: const Text('Clear')),
            ],
          ),
          // Removed the success banner at the bottom
        ],
      ),
    );
  }
}