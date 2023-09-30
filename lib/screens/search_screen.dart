import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/list_food.dart';
import '../widgets/food_detail.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Search bar
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
            child: Column(
              children: [
                //Search bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: "Search a meal...",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      // enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.white),
                      //     borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Popular food text
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
          ),
          //Popular food design
          Container(
            padding: EdgeInsets.only(left: 15),
            margin: EdgeInsets.only(bottom: 10),
            height: 345,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                final ListFood food = foodList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailFood(food: food);
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 15, left: 0),
                    width: 225,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Color(0xffFBCEDC),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              food.image,
                              width: 150,
                              height: 130,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  food.nama,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  food.flav,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "\$" + food.price.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          //For you text
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "For you..",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
