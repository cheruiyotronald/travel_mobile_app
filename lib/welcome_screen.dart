import 'package:flutter/material.dart';
import 'package:travel_mobile_app/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: 
      Stack(children: [
        SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.grey.shade200,
            child: const Image(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvO9ou7uow-3HKUlHylGZWeUGC8YbmrQJqEg&usqp=CAU",
              ),
              fit: BoxFit.cover,
            ),
           ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: height * 0.32,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Lets start Journey, Enjoy",
                  style: TextStyle(
                    fontSize: width * 0.058,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Beautiful moments of life",
                  style: TextStyle(
                    fontSize: width * 0.058,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.065,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("Start",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
