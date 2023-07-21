import 'package:flutter/material.dart';

import '../ui_helper/constants.dart';

class CategoryContainer extends StatelessWidget {
  String title;
  String img;
  CategoryContainer({super.key, required this.title,required this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [
                    AppColor.gradient1,
                    AppColor.gradient2
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(img,
                fit:BoxFit.contain,
                color: Colors.white,
              ),
            ),
          ),
          Text(title,style: const TextStyle(
            color: Colors.grey,

          ),)
        ],
      ),
    );
  }
}
