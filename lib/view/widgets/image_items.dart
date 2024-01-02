import 'package:flutter/material.dart';

class ImageItems extends StatelessWidget {
  const ImageItems(
      {super.key,
      required this.size,
      required this.imageUrl,
      required this.foodName});

  final Size size;
  final String imageUrl;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width * .22,
          height: size.height * .11,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(imageUrl),
        ),
        const SizedBox(height: 8),
        Text(foodName)
      ],
    );
  }
}
