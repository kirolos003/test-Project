import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );




Widget BuildCourseItem(
        {required String CourseName,
        required String ImagePath,
        required Function onPressed}) =>
    Container(
      width: double.infinity,
      child: Column(
        children: [
          Image(
            width: double.infinity,
            height: 200,
            image: AssetImage("$ImagePath"),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                onPressed();
              },
              child: Text(
                "$CourseName",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff114acc),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
