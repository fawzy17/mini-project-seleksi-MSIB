
import 'package:find_flowers/view/result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController tcSearch = TextEditingController();

  String search = '';

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.notification_add),
                ],
              ),
              TextField(
                controller: tcSearch,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      search = tcSearch.text;
                      Navigator.push(context, MaterialPageRoute(builder:(context) => ResultListView(keyword: search), ));
                    },
                    icon: const Icon(Icons.search),
                  )
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'globe'), ));
                },
                child: Card(

                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/img/globe.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Center(
                      child: GradientText('Globe', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [Colors.green, Colors.blue],)
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'flowers'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/flowers.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Flower', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [Colors.pink,Colors.white, Colors.pink],)
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'car'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/car.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Car', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [ Colors.black, Colors.redAccent, Colors.black],)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'bicycle'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/bicycle.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Bicycle', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [Colors.brown, Colors.greenAccent],)
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'motorcycle'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/motorcycle.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Motorcycle', style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold), colors: const [ Colors.brown, Colors.black, Colors.brown],)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'hammer'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/hammer.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Hammer', style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold), colors: const [ Colors.brown, Colors.grey, Colors.black],)
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'monitor'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/monitor.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Monitor', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [ Colors.black, Colors.white54, Colors.black],)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'laptop'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/laptop.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Laptop', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [ Colors.black, Colors.white54],)
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const ResultListView(keyword: 'gadget'), ));
                    },
                    child: Card(
    
                      child: Container(
                        width: (MediaQuery.of(context).size.width*0.5-24),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/img/gadget.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: GradientText('Gadget', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold), colors: const [ Colors.yellowAccent, Colors.white38,],)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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