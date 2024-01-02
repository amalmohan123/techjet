import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.size, required this.imageUrl});

  final Size size;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: size.width * .33,
              height: size.height * .20,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 2,
              top: -2,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.heart_broken_outlined),
                color: Colors.grey.shade300,
                iconSize: 28,
              ),
            )
          ],
        ),
        const SizedBox(width: 30),
        Expanded(
          child: SizedBox(
            width: size.width,
            height: size.height * .20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert_outlined,
                    ),
                  ),
                ),
                const Text(
                  'Domino’s Pizza',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Text(
                      '4.2 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                    Text(' (10k+)',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('   25 mins',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 5),
                const Text('Pizzas,  Italian,  Pastas  \nPimple Saudagar'),
                Container(
                  color: const Color.fromARGB(255, 243, 253, 243),
                  width: size.width * .25,
                  height: size.height * .016,
                  child: const Center(
                    child: Text(
                      'FREE DELIVERY',
                      style: TextStyle(
                          color: Color.fromARGB(255, 77, 216, 82),
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
