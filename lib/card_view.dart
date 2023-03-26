import 'package:flutter/material.dart';
import 'card_models.dart';
import 'cardmodel.dart';
class CardSection extends StatelessWidget {
  var item = CardModels().cardModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: item.length,
      itemBuilder: (context, index) => Card(
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2.2,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
                child: Icon(item[index].iconData, color: Colors.white, size: 30,),
              ),
              Text(
                item[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.blue),
              ),
              Text(
                item[index].subTitle,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),

              // Text(
              //   item[index].importLine,
              //   style: TextStyle(
              //       decoration:
              //           TextDecoration.underline,
              //       fontSize: 18,
              //       color: Colors.blue),
              //   textAlign: TextAlign.center,
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      item[index].buttonName,
                      style: const TextStyle(fontSize: 16),
                    )),
              )

            ],
          ),
        ),
      ),
    );
  }
}



