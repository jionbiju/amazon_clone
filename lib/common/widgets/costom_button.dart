import 'package:flutter/material.dart';

class CostomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CostomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      child: Text(text),
      onPressed:onTap ,
      style: ElevatedButton.styleFrom(
        minimumSize:const Size(double.infinity, 50)
      ),
    );
  }
}