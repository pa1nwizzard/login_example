import 'package:flutter/material.dart';

class AppColors {

  // -- input styles --
  InputDecoration inpDec({String? hintText}) {
    return InputDecoration(
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(width: 2, color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(width: 2, color: Colors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(width: 2, color: Colors.grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(width: 2, color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(width: 2, color: Colors.red),
      ),
      hintText: hintText,
      
    );
  }

  // -- button styles --
  ButtonStyle btnStyle() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: Colors.black,
      elevation: 4
    );
  }
}
