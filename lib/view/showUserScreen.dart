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
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: cardUser(users: users),
            ),
          );
        },
      ),
    );
  }
}
