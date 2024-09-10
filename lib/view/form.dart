import 'package:flutter/material.dart';
import 'package:form_flutter/models/user_model.dart';
import 'package:form_flutter/view/showUserScreen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen ({super.key});

  @override
  _FormScreenState createState() => _FormScreenState();
}



class _FormScreenState extends State<FormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  bool _isMale = false;
  bool _isFemale = false;
  Gender generoDefinido = Gender.masculino; 

  final List<UserModel> users = [];

  void clearText() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    addressController.clear();
  }

  void saveInfo() {
    
      users.add(UserModel(
        name: nameController.text,
        email: emailController.text,
        phone: int.tryParse(phoneController.text) ?? 0,
        adress: addressController.text,
        genero: generoDefinido,
      ));
      print(users.toString());
      print(users.length);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Register",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your phone',
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your address',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Gender",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              CheckboxListTile(
                title: Text('Masculino'),
                value: _isMale,
                onChanged: (bool? value) {
                  setState(() {
                    _isMale = value ?? false;
                    if (_isMale) {
                      generoDefinido = Gender.masculino;
                      _isFemale = false;
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Feminino'),
                value: _isFemale,
                onChanged: (bool? value) {
                  setState(() {
                    _isFemale = value ?? false;
                    if (_isFemale) {
                      generoDefinido = Gender.feminino;
                      _isMale = false;
                    }
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    saveInfo();
                    clearText();
                  },
                  child: const Text("Save"),
                ),
              ),
              SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    if (users.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ShowUserScreen(
                            users: users,
                          ),
                        ),
                      );
                    } else {
                      const snackBar = SnackBar(
                        content: Text('Create a user first'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text("Show"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
