import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final int? price;
  final VoidCallback? onTap;

  const DetailsContainer(
      {Key? key, this.img, this.title, this.subtitle, this.price, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: DottedDecoration(
                color: Colors.orange,
                strokeWidth: 1.5,
                dash: const <int>[3, 2],
                borderRadius: BorderRadius.circular(8),
                shape: Shape.box),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(img!), fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width:60,
                            child: Text(
                              "$price Rs.",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .13,
                          ),
                          Container(
                            width: 22,
                            height: 22,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(Icons.favorite_border,
                                size: 15, color: Colors.red),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(5))),
                            child: Center(
                                child: Container(
                                  width: 10,
                                  height: 1.5,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(5))),
                            child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                )),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}