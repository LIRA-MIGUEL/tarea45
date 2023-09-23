import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final String userName;
  final String userLastName;
  final String userPaternal;
  final String userPhone;
  final String userEmail;
  final String userAge;

  LandingPage({
    required this.userName,
    required this.userLastName,
    required this.userPaternal,
    required this.userPhone,
    required this.userEmail,
    required this.userAge,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landing Page",
          style: TextStyle(color: Colors.yellowAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Landing Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildUserInfo("Nombre", userName),
          _buildUserInfo("Apellido Paterno", userLastName),
          _buildUserInfo("Apellido Materno", userPaternal),
          _buildUserInfo("Teléfono", userPhone),
          _buildUserInfo("Correo Electrónico", userEmail),
          _buildUserInfo("Edad", userAge),

          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "$label: $value",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
