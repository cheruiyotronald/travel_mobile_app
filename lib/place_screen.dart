import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {

  var height, width;


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              Container(height: height *0.57,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfcYN9weFj-7RHYs1fMPqFURETmUJ52w4CBA&usqp=CAU",
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                )
              ),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.15),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      )
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: height *0.1,
                      width: width *0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container( 
                              height: height *0.051,
                              width: width *0.1,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                                ),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.blue,
                                  size: width *0.05,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.051,
                            width: width *0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                                size: width *0.06,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: height *0.23,
                      width: width *0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Maasai Mara",
                            style: TextStyle(
                              fontSize: width *0.066,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            "Narok",
                            style: TextStyle(
                              fontSize: width *0.06,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: height *0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: width *0.03,
                              ),
                              Icon(Icons.location_on,
                              color: Colors.blue,
                              size: width *0.07,
                              ),
                              Text(
                            "Mombasa",
                               style: TextStyle(
                                fontSize: width *0.038,
                               fontWeight: FontWeight.w500,
                              color: Colors.white
                             ),
                             ),
                            ],
                          ),
                           RatingBar.builder(
                               initialRating: 4,
                                 minRating: 1,
                                  direction: Axis.horizontal,
                                    allowHalfRating: true,
                                      itemCount: 5,
                                        itemSize: 20,
                                       unratedColor: Colors.white,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                color: Colors.blue,
                                  ),
                                   onRatingUpdate: (rating) {
                                    print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(25),
             child: Align(alignment: Alignment.bottomRight,
             child: Icon(Icons.bookmark_border,
             color: Colors.white,
             size: width *0.08,
               ),
              ),
             ),
                ],
              ),
             ),
             SizedBox(
              height: height *0.02,
             ),
             Expanded(
              child: SizedBox(
                width: width *0.9,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    fontSize: width *0.038,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                  textAlign: TextAlign.justify,
                ),
               )
              ),
              Padding(
                padding: EdgeInsets.only(left: width *0.05),
                child: Row(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1563861826100-9cb868fdbe1c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2xvY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                      height: height *0.032,
                    ),
                    SizedBox(
                      width: width *0.02,
                    ),
                    Text(
                      "8 AM - 9 PM",
                      style: TextStyle(
                        fontSize: width *0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: height *0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: width *0.05),
                child: Row(
                  children: [
                    Image.network(                    
                      "https://images.unsplash.com/photo-1611988615248-5d4f0b9ac31e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhbGVuZGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      height: height *0.032,
                    ),
                    SizedBox(
                      width: width *0.02,
                    ),
                    Text(
                      "Friday - Tuesday",
                      style: TextStyle(
                        fontSize: width *0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height *0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left: width *0.05),
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrloWcSElaQjmadUdhMdbqHwBbmZJJUjCpeQ&usqp=CAU",
                      height: height *0.08
                    ),
                    SizedBox(
                      width: width *0.02,
                    ),
                    Text(
                      "Ticket 2 way",
                      style: TextStyle(
                        fontSize: width *0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height *0.01,
              ),
              SizedBox(
                height: height *0.15,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height *0.07,
                      width: width *0.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "\$9,500.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height *0.07,
                      width: width *0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Book",
                            style: TextStyle(
                              fontSize: width *0.05,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}