// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_mobile_app/place_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var height, width;

  List iconImages =[
    "https://images.unsplash.com/photo-1676920410907-8d5f8dd4b5ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIxfEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://plus.unsplash.com/premium_photo-1676637001247-45cf4c6c122d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1676809728796-d10d89c97e0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1676667114136-740a2087a9a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",    
    "https://images.unsplash.com/photo-1676920410907-8d5f8dd4b5ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIxfEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://plus.unsplash.com/premium_photo-1676637001247-45cf4c6c122d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1676809728796-d10d89c97e0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1676667114136-740a2087a9a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];

  List imgs = [
    "data:image/png;base64,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",
    "data:image/jpeg;base64,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"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: height *0.035,
                ),
                SizedBox(
                  height: height *0.07,
                  width: width *0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: width *0.059,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Explore your world",
                            style: TextStyle(
                              fontSize: width *0.037,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height *0.035,
                      ),
                      Container(
                        height: height *0.055,
                        width: width *0.11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhY5CpWdKkG2x60bWLpQMtF6cOY1cj1cgHVg&usqp=CAU",
                           ),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                        height: height *0.035,
                      ),
                      Container(
                        height: height *0.073,
                        width: width *0.9,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: width *0.03),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here...",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: width *0.04,
                                ),
                                prefixIcon: Icon(Icons.search,
                                color: Colors.black54,
                                size: width *0.09,
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 20,
                      ),
                      SizedBox(
                        height: height *0.08,
                        child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           shrinkWrap: true,
                           itemCount: iconImages.length,
                          itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Card(elevation: 4,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                height: height *0.068,
                                width: width *0.14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Image(
                                    height: height * 0.04,
                                    image: NetworkImage(
                                      iconImages[index],
                                  ),
                                 ),
                                ),
                               )
                              ),
                          );
                        }
                  )
                ),
        
                SizedBox(
                        height: height *0.035,
                      ),
                      SizedBox(
                        width: width *0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All",
                              style: TextStyle(
                                fontSize: width *0.04,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                fontSize: width *0.04,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Tours",
                              style: TextStyle(
                                fontSize: width *0.04,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "Adventure",
                              style: TextStyle(
                                fontSize: width *0.04,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Asia",
                              style: TextStyle(
                                fontSize: width *0.04,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height *0.035,
                      ),
                      SizedBox(
                        height: height *0.44,
                        width: width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: imgs.length,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.01
                              ),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => PlaceScreen(),
                                  ));
                                },
                                child: Container(
                                  width: width *0.6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                     "https://c8.alamy.com/zooms/9/0c7d8608a8324a15b7038a901fcff531/2a9cjyf.jpg",
                                    )
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      height: height * 0.14,
                                      width: width *0.47,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hilton Taran",
                                            style: TextStyle(
                                              fontSize: width *0.043,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "Nairobi",
                                            style: TextStyle(
                                              fontSize: width *0.033,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          RatingBar.builder(
                                           initialRating: 3,
                                           minRating: 1,
                                           direction: Axis.horizontal,
                                           allowHalfRating: true,
                                           itemCount: 5,
                                           itemSize: 20,
                                           unratedColor: Colors.white,
                                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                             Icons.star,
                                             color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                           print(rating);
                                          },
                                         ),
                                        ],
                                      ),
                                    ),
                                    ),
                                    SizedBox(
                                      width: width *0.05,
                                    )
                                  ],
                                ),
                              ),
                              )
                            );
                          }
                        ),
                      ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: ""
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: ""
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite), 
            label: ""
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: ""
            ),
          ]
        ), 
      ),
    );
  }
}