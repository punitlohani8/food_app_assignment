import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:assignment/ui_helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';

import '../home_page/home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.9)
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: AnotherCarousel(
                    images: const [
                      AssetImage('assets/images/onboarding/onBoarding1.jpeg'),
                      AssetImage('assets/images/onboarding/onBoarding2.jpeg'),
                      AssetImage('assets/images/onboarding/onBoarding3.jpeg'),
                    ],
                    dotBgColor: Colors.transparent,
                    dotSize: 0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.transparent, AppColor.bgColor],
                          stops: const [0.1, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: AppColor.bgColor,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),

                    Image.asset('assets/images/logo_1.gif',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .1,
                    ),
                    Expanded(
                      child: AnotherCarousel(
                        images: [
                          Column(
                            children: [
                              const Text('Live Your Life Smarter',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ).copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Live Your Life Smarter',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ).copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Live Your Life Smarter',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ).copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),

                        ],
                        dotBgColor: Colors.transparent,
                        autoplay: true,
                        dotSize: 0,
                      ),
                    ),
                    const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const HomePage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [AppColor.gradientOrange, AppColor.gradientRed],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: const Center(child: Text("CONTINUE", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ))),
                    ),
                  )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
