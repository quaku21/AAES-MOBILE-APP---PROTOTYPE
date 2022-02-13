import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF265C7E),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Image(
                  image: AssetImage(
                    'images/aaes_logo.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Kevin Takyi Yeboah',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.3,
                child: CircleAvatar(
                  radius: 60,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'images/aaes_logo.png',
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
