import 'package:flutter/material.dart';
import 'card_models.dart';
import 'card_view.dart';
import 'header.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: appBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Header()),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text("Welcome! First things first...",
                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(top: 8.0),
                     child: Text("Lets complte and personalize your profile!",
                     style: TextStyle(fontSize: 16,),
                     ),
                   ),
                 ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: CardSection()),
              SizedBox(height: 8,),
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text("0 OF 5 COMPLETED", style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]
                ), ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ACTIVITY FEED",
                      style: TextStyle(
                          fontSize: 22, color: Colors.grey[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              const Text(
                "This is your feed!",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Whenever a friend or you post a score. it will appear here! You can also swipe right to explore!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        "TheGrint",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline, color: Colors.blue)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.apps, color: Colors.blue)),
      ],
    );
  }
}


