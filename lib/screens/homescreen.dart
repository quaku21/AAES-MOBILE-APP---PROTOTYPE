import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../reusables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aerovactraining/screens/profilescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int position = 0;
  List<String> pictures = [
    'images/pic1.jpg',
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
          ),
        ),
        backgroundColor: const Color(0xFF265C7E),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'AAES-KNUST',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome Kevin!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const Text(
                'How May I Help You?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset(
                        pictures[0],
                      ),
                      Image.asset(pictures[1]),
                      Image.asset(pictures[2]),
                      Image.asset(pictures[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 3,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'profilepage');
                        },
                        child: Containercard(
                          label: 'Profile',
                          icon: Icons.account_circle,
                          cardcolor: Colors.teal,
                          // fontsize: 25,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Containercard(
                          label: 'Course Materials',
                          icon: Icons.markunread_mailbox,
                          cardcolor: const Color(0xFFFF9800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Containercard(
                            label: 'Results',
                            icon: Icons.description,
                            cardcolor: const Color(0xFFF44336),
                            // fontsize: 25,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Containercard(
                            label: 'SofTT',
                            icon: Icons.flight_takeoff,
                            cardcolor: const Color(0xFF673AB7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: MaterialButton(
                      height: 40,
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text(
                        "Want to Talk to a Teaching Assistant?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 35,
            child: InkWell(
              onTap: () {},
              child: Material(
                color: const Color(0xFF04719a),
                elevation: 5,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.help,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        'Help',
                        style: Theme.of(context).textTheme.overline!.merge(
                              const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: position,
        onTap: (int index) {
          setState(() {
            position = index;
          });
        },
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              Icons.account_circle,
            ),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.settings,
      //     color: Colors.white,
      //     size: 28,
      //   ),
      //   backgroundColor: Colors.red,
      //   onPressed: () {},
      // ),
    );
  }
}
