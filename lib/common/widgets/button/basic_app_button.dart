import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {


  final String title;
  final VoidCallback onPressed;
  final double height;

  BasicAppButton(this.title, this.onPressed,this.height);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height??80)
        ),
        onPressed: onPressed,
        child: Text(title)
    );
  }
}
