
import 'package:flutter/material.dart';
import 'package:form_flutter/models/user_model.dart';

class ShowUserScreen extends StatelessWidget {
  const ShowUserScreen({super.key, required this.users,
  });

  final List<UserModel> users;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(users[0].name), 
          Text(users[0].email),
          Text(users[0].adress),
          Text(users[0].phone.toString())
        ],
      ),
    );
  }
}