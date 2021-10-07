// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class IconButton extends StatelessWidget {
  IconButton({required this.icon, required this.label, required this.onTap});

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 70.0,
                color: Colors.grey[800],
              ),
              Text(
                label,
                style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
