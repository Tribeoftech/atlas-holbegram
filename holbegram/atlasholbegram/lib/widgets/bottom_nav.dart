import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:holbegram/screens/Pages/add_image.dart';
import 'package:holbegram/screens/Pages/favorite.dart';
import 'package:holbegram/screens/Pages/feed.dart';
import 'package:holbegram/screens/Pages/profile_screen.dart';
import 'package:holbegram/screens/Pages/search.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override

  
void initState() {
    super.initState();
    _pageController = PageController();

  }

  @override

  
void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget> [
          const Feed(),
          const SearchScreen(),
          const AddPicture(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text(
              'Feed',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Billabong',
              ),
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.search),
            title: const Text(
              'Search',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Billabong',
              ),
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.add_a_photo),
            title: const Text(
              'Add',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Billabong',
              ),
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text(
              'Favourites',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Billabong',
              ),
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.account_circle),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Billabong',
              ),
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Page'),
    );
  }
}

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Image Page'),
    );
  }
}

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorite Page'),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page'),
    );
  }
}