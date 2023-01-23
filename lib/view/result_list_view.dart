import 'package:find_flowers/controller/finderapi.dart';
import 'package:find_flowers/model/finder.dart';
import 'package:find_flowers/view/details.dart';
import 'package:find_flowers/view/home.dart';
import 'package:flutter/material.dart';

class ResultListView extends StatefulWidget {
  const ResultListView({Key? key, required this.keyword}) : super (key: key);
  final String keyword;

  @override
  // ignore: no_logic_in_create_state
  State<ResultListView> createState() => _ResultListViewState(keyword: keyword);
}

class _ResultListViewState extends State<ResultListView> {
  _ResultListViewState({required this.keyword});

  String keyword;
  ImagesList services = ImagesList();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: services.fetchDataImagesList(keyword),
              builder: (context, snapshot) {
                List<Finder> finder = parse(snapshot.data);
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: finder.length,
                    itemBuilder: (context, index) {
                      return ClipRect(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(finder: finder[index]), ));
                          },
                          child: Container(
                            width: double.infinity, 
                            height: 58,
                            margin: const EdgeInsets.symmetric(horizontal:20,vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: ListTile(
                                leading: Image(
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(finder[index].largeImageUrl),
                                ),
                                title: Text(finder[index].user),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator()
                      ],
                    ),
                  );
                }
              },
            ),
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