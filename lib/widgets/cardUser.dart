import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_flutter/models/user_model.dart';

class cardUser extends StatelessWidget {
   cardUser({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 214, 212, 212),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: users[0].getGenderImage(),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email: ${users[0].email}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Phone: ${users[0].phone}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Address: ${users[0].adress}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Gender: ${users[0].genero == Gender.masculino ? 'Masculino' : 'Feminino'}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
