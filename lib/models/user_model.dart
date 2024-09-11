import 'package:flutter/material.dart';

enum Gender { male, female }

class UserModel {
  final String name;
  final String email;
  final int phone;
  final String adress; 
  final Gender genero; 

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.adress,
    required this.genero, 
  });

  ImageProvider getGenderImage() {
    if (genero == Gender.male) {
      return NetworkImage('https://www.designi.com.br/images/preview/12161376.jpg');
    } else {
      return NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65O7ZeXAIWS5dlANj__IbLdbkQrTTQj2AOQ&s');
    }
  }
}
