import 'package:flutter/material.dart';

class CostomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CostomTextField({super.key,required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller:controller ,
      decoration: InputDecoration(
        hintText:hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black45
          ),
        ),
        enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
            color: Colors.black45
          ),
        )
      ),
      validator: (val){

      },
    );
  }
}