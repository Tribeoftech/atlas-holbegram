import 'package:flutter/material.dart';
import 'package:holbegram/screens/Pages/widgets/feeds_list.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(

              title: Row(
                children: [
                  const Text(
                    'Holbegram',
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 35.0,
                    ),
                  ),
                  Image.asset(
                    'assets/images/img.png',
                    height: 50.0,
                    width: 50.0,)
                ],
              ),
            actions: [
         IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
          ), 
        ],
      ),
      body: const FeedsList(),
    );
    }
}