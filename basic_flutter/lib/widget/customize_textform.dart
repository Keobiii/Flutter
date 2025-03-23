import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool isPassword;


  const CustomTextField({
    super.key,
    this.controller,
    required this.labelText,
    required this.icon,
    this.keyboardType,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14
        ),
        cursorColor: Colors.white, 
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color(0x80FFFFFF),
            fontSize: 14
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16
          ), 
          prefixIcon: Icon(
            icon, 
            color: Colors.white,
            size: 20,
          ), 
          hintStyle: const TextStyle(
            color: Color(0x80FFFFFF),
            fontSize: 14
          ), 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0x80FFFFFF)), 
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0x80FFFFFF)), 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.white, width: 2), 
          ),
        ),
      ),
    );
  }
}
