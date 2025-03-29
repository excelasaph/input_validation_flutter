import 'package:flutter/material.dart';

/// A screen displaying the collected user data.
/// The user can review their information and go back to edit.
class SecondScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const SecondScreen({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Details'),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display user info in a clean, minimalistic style
            Text(
              'Name: $name',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Email: $email',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Phone: $phone',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 30),
            // Button to go back
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Reduced horizontal padding
                  backgroundColor: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50), // Adjusted height
                ),
                child: const Text(
                  'Go Back',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
