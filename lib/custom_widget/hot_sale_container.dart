import 'package:flutter/material.dart';

import '../ui_helper/constants.dart';

class HotSaleContainer extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final VoidCallback? onPress;
  const HotSaleContainer({super.key,this.img, this.title, this.subtitle, this.onPress});

  @override
  Widget build(BuildContext context) {



    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onPress,
          child: Container(
            height: 95,
            width: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 6,
                      )
                ],
                border: Border.all(color: Colors.black, width: 1)),
            child: Center(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(img!), fit: BoxFit.fill)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          title!,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ) ,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          subtitle!,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
