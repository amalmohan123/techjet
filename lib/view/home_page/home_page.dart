import 'package:flutter/material.dart';
import 'package:minnal/controller/auth_provider.dart';

import 'package:minnal/view/widgets/image_items.dart';
import 'package:minnal/view/widgets/item_details.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                    const Text(
                      'office',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    ),
                    const SizedBox(width: 200),
                    Expanded(
                      child: IconButton(
                        onPressed: ()async{
                           final authprovider =
                  Provider.of<AuthProvider>(context, listen: false);
              authprovider.signOut();
                        },
                        icon: const Icon(Icons.logout),
                      ),
                    )
                  ],
                ),
                Text(
                  '38/A, 3rd Floor, 18th Main, 22nd...',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * .20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 15, 15, 15),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 20,
                      child: Text(
                        'Get 50% off on your\nfirst order',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0, // Adjust the left position as needed
                      child: Image.asset('assets/images/image 5.png'),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 20,
                      child: MaterialButton(
                        color: const Color.fromRGBO(255, 102, 2, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Order Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    SearchBar(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      leading: const Icon(
                        Icons.search_sharp,
                        color: Colors.red,
                        size: 30,
                      ),
                      hintText: 'Restaurant name or a dish...',
                      hintStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.grey),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.format_align_left_sharp,
                          size: 26,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageItems(
                          size: size,
                          imageUrl: 'assets/images/Rectangle 7.png',
                          foodName: 'Burger'),
                      const SizedBox(width: 15),
                      ImageItems(
                          size: size,
                          imageUrl: 'assets/images/Rectangle 7 (1).png',
                          foodName: 'Pizza'),
                      const SizedBox(width: 15),
                      ImageItems(
                          size: size,
                          imageUrl: 'assets/images/Rectangle 7 (2).png',
                          foodName: 'Healthy'),
                      const SizedBox(width: 15),
                      ImageItems(
                        size: size,
                        imageUrl: 'assets/images/Rectangle 7 (3).png',
                        foodName: 'Noodle',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Restaurant near you',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ItemDetails(
                  size: size,
                  imageUrl: 'assets/images/Rectangle 8.png',
                ),
                const SizedBox(height: 20),
                ItemDetails(
                  size: size,
                  imageUrl: 'assets/images/Rectangle 8 (1).png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
