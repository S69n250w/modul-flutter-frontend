import 'package:custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'JsonToObject.dart';

class MyBottomSheet {
  getBottomSheet(BuildContext context, Device jsonData) {
    SlideDialog.showSlideDialog(
        context: context,
        backgroundColor: Colors.white,
        pillColor: Colors.blue,
        transitionDuration: Duration(milliseconds: 400),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${jsonData.model}",
                style: TextStyle(fontSize: 30),
              ),
              Image.network(
                jsonData.img,
                width: 90,
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothStarRating(
                    allowHalfRating: true,
                    starCount: 5,
                    rating: jsonData.rating,
                  ),
                  Text("${jsonData.rating} / 5"),
                ],
              ),
              Text("Develop by ${jsonData.developer}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${jsonData.des}"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Buy"))
            ],
          ),
        ));
  }
}
