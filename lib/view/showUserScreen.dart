import 'package:flutter/material.dart';
import 'package:form_flutter/models/user_model.dart';
import 'package:form_flutter/widgets/cardUser.dart';


class ShowUserScreen extends StatelessWidget {
  const ShowUserScreen({super.key, required this.users});

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardUser(users: [user]), 
            ),
          );
        },
      ),
    );
  }
}
