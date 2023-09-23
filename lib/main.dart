import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController paternalController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Page",
          style: TextStyle(color: Colors.yellowAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
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
              "Login Page",
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
          _buildTextField(nameController, "Ingresa tu nombre", "Nombre"),
          _buildTextField(lastNameController, "Ingresa tu apellido paterno", "Apellido Paterno"),
          _buildTextField(paternalController, "Ingresa tu apellido materno", "Apellido Materno"),
          _buildTextField(phoneController, "Ingresa tu telefono", "Telefono"),
          _buildTextField(emailController, "Ingresa tu Email", "Email"),
          _buildTextField(ageController, "Ingresa tu edad", "Edad"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingPage(
                      userName: nameController.text.trim(),
                      userLastName: lastNameController.text.trim(),
                      userPaternal: paternalController.text.trim(),
                      userPhone: phoneController.text.trim(),
                      userEmail: emailController.text.trim(),
                      userAge: ageController.text.trim(),
                    ),
                  ),
                );
              },
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText, String labelText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}