import 'package:flutter/material.dart';

class CuntomInput extends StatelessWidget {
  const CuntomInput({
    super.key,
    required this.controller,
    required this.label,
    
    this.obscureText = false,
    this.maxLength = 20,
    this.minLength = 2,
    this.errorText,
    this.keyboardType = TextInputType.text,
    required this.validator,
    required this.suffixicon,

  
    
  });
  
  // ignore: prefer_typing_uninitialized_variables
  final suffixicon;
  final String label;
  
  final bool obscureText;
  final int maxLength;
  final int minLength;
  final String? errorText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: ' $label',
        
        suffixIcon: suffixicon,
       
       
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
     
       
      ),
      maxLength: maxLength,

     
    );
  }
}
