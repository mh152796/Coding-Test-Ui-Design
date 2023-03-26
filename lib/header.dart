import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.deepOrangeAccent,
                    child: Text(
                      'AM',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Center(
                          child: Icon(
                        Icons.edit,
                        size: 13,
                        color: Colors.blue,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Abdullah Ibha Mukta",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Add Handicap Id",
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                  Text("Since 2023"),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.grey,
                          child: Text(
                            "14-16",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.horizontal_rule,
                                size: 13,
                              )),
                        )
                      ],
                    ),
                    Text(
                      "Handicap",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        headerItemSection("14-16", "Airt", Icons.person),
        headerItemSection("14-16", "Airt", Icons.person),
        headerItemSection("14-16", "Airt", Icons.person),
        headerItemSection("14-16", "Airt", Icons.person),
        headerItemSection("14-16", "Airt", Icons.person),
        
      ],
    );
  }

  Widget headerItemSection(String itemText, String itemName, IconData iconData) {

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: Colors.grey,
                child: Text(
                  itemText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,

                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Center(
                    child: Icon(iconData, size: 13,),
                  ),
                ),
              ),
            ],
          ),

          Text(itemName,
          style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
