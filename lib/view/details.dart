import 'package:find_flowers/model/finder.dart';
import 'package:find_flowers/view/home.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.finder});

  Finder finder;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    const TextStyle optionStyle = 
    TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
    // ignore: unused_local_variable
    const List<Widget> widgetOptions = <Widget>[
      Text(
        'Index 0: Back',
        style: optionStyle,
      ),
      Text(
        'Index 1: Home',
        style: optionStyle,
      ),
    ];
    void onItemTapped(int index) {
      if(index == 0){
        Navigator.pop(context);
      }else if(index == 1){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage() )));
      }
    } 
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(finder.largeImageUrl),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[400]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Likes: ${finder.likes}'),
                  Text('Comments: ${finder.comments}'),
                ],
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[400]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Views: ${finder.views}'),
                  Text('Downloads: ${finder.downloads}'),
                ],
              ),
            ),
            const Text('Image Author:'),
            const SizedBox(height: 16,),
            CircleAvatar(
              radius: 30.0,
              backgroundImage:
                NetworkImage(finder.userImageUrl),
              backgroundColor: Colors.transparent,
            ),
            Text(finder.user)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: ''
          ),
        ],
      ),
    );
  }
}