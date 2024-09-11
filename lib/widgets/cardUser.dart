import 'package:flutter/material.dart';
import 'package:form_flutter/models/user_model.dart';

class CardUser extends StatelessWidget {
  const CardUser({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    if (users.isEmpty) {
      return const Center(child: Text('No users available'));
    }

    final user = users[0]; 

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 214, 212, 212),
      ),
      child: Row(
        children: [
          Container(
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: user.getGenderImage(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email: ${user.email}',
                  style: const TextStyle(color: Colors.black), 
                ),
                Text(
                  'Phone: ${user.phone}',
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  'Address: ${user.adress}', 
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  'Gender: ${user.genero == Gender.male ? 'Male' : 'Female'}',
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
