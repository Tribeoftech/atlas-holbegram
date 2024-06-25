

import 'package:flutter/material.dart';


class PostsCard extends StatelessWidget {
  final String photoUrl;
  
  final String userName;
  final String caption;
   final String postUrl;
   final int likesNumber;
   final Function() saveFunction;
   final Function() deleteFunction;
   final Function() LikedFuction;
  const PostsCard({
    Key? key,
    required this.photoUrl,
    required this.userName,
    required this.caption,
    required this.postUrl,
    required this.likesNumber,
    required this.saveFunction,
    required this.deleteFunction,
    required this.LikedFuction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  CircleAvatar(
                          radius: 20,
                          backgroundImage: 
                              NetworkImage(photoUrl),
                              
                        ),
                        const SizedBox(width: 15,),
                         Text(userName),
                ],
              ),
                 
                  IconButton(
                    onPressed: deleteFunction,
                    icon: const Icon(Icons.more_horiz))
    
            ],),
             Text(caption),
             const SizedBox(height: 10,),
             Container(
                          width: 350,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: NetworkImage(postUrl
                               
                                ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: LikedFuction,
                                  icon: const Icon(Icons.favorite_border),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.messenger_outline),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.send),
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: saveFunction,
                              icon: const Icon(Icons.bookmark_outline_outlined),
                            ),
                          ],
                        ),
                        if (likesNumber > 0)
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(alignment: Alignment.centerLeft,
                            child: Text("$likesNumber   Liked", 
                            style: const TextStyle(
                              fontSize: 18
                            ),
                            ),
                            
                            ),
                        ),
                      ],
                    ),
                  )
                );   
  }
}