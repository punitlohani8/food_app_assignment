import 'package:assignment/custom_widget/categories_container.dart';
import 'package:assignment/custom_widget/hot_sale_container.dart';
import 'package:assignment/ui_helper/constants.dart';
import 'package:flutter/material.dart';

import '../custom_widget/details_container.dart';
import '../custom_widget/menu_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool vegOnly = false;
  bool eggOnly = false;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: 600,
              color: AppColor.bgColor,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 320,
                    child: Image.asset('assets/images/backgroundProfile.png', fit: BoxFit.fill),
                  ),
                  Container(
                    width: double.infinity,
                    height: 320,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.black.withOpacity(0.2),
                          AppColor.bgColor
                        ],
                            stops: const [
                          0.1,
                          1
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello Akash',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/backgroundProfile.png',
                      fit: BoxFit.cover,
                    ),
                  ),

///////////////Categories////////////
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        List values = categories.values.toList();
                        List key = categories.keys.toList();
                        return CategoryContainer(
                            title: key[index], img: values[index]);
                      },
                    ),
                  ),

/////////// Hot Sale Products ////////////
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 140,
                    child: ListView.builder(
                      itemCount: hotSale.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: HotSaleContainer(
                            onPress: hotSale[index]['onPress'],
                            title: hotSale[index]['name'].toString(),
                            img: hotSale[index]['img'].toString(),
                            subtitle:
                                '(${hotSale[index]['category'].toString()})',
                          ),
                        );
                      },
                    ),
                  ),

////Switch Button/////
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Veg Only",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Switch(
                        value: vegOnly,
                        onChanged: (c) {
                          vegOnly = c;
                          if (vegOnly) {
                            eggOnly = false;
                          }
                          setState(() {});
                        },
                        activeColor: Colors.red,
                        inactiveThumbColor: const Color(0xff465a65),
                        activeTrackColor: Colors.orange,
                        inactiveTrackColor: const Color(0xff2e3641),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .22,
                      ),
                      const Text(
                        "Egg Only",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Switch(
                        value: eggOnly,
                        onChanged: (c) {
                          eggOnly = c;
                          if (eggOnly) {
                            vegOnly = false;
                          }
                          setState((){

                          });
                        },
                        activeColor: Colors.red,
                        inactiveThumbColor: const Color(0xff465a65),
                        activeTrackColor: Colors.orange,
                        inactiveTrackColor: const Color(0xff2e3641),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (eggOnly)
                    Column(
                      children: [
                        Text(
                            "Burger        Rolls        Drink        Pizza\nSandwich        Noodles        Momos",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ).copyWith(height: 2.5)),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),

                  const Text(
                    'Burgers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: foodList.length,
                    itemBuilder: (ctx, index) {
                      return DetailsContainer(
                        onTap: foodList[index]['onPress'],
                        price: foodList[index]['price'],
                        subtitle: foodList[index]['subtitle'],
                        title: foodList[index]['title'],
                        img: foodList[index]['img'],
                      );
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),

        /////// Menu Button////////
        floatingActionButton: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (i) {
                  return const AlertDialog(
                    backgroundColor: Colors.white,
                    title: Column(
                      children: [
                        Center(child: Text('RestaurantMenu')),
                        Divider()
                      ],
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MenuTile(
                          title: "Biryani",
                          price: 4,
                        ),
                        MenuTile(
                          title: "Burger",
                          price: 7,
                        ),
                        MenuTile(
                          title: "Combo",
                          price: 0,
                        ),
                        MenuTile(
                          title: "Drinks",
                          price: 14,
                        ),
                        MenuTile(
                          title: "Fried Rice",
                          price: 5,
                        ),
                        MenuTile(
                          title: "Fries",
                          price: 4,
                        ),
                        MenuTile(
                          title: "Momos",
                          price: 7,
                        ),
                        MenuTile(
                          title: "Noodles",
                          price: 13,
                        ),
                        MenuTile(
                          title: "Pizza",
                          price: 16,
                        ),
                        MenuTile(
                          title: "Rolls",
                          price: 4,
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.orange),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  size: 20,
                ),
                SizedBox(
                  width: 2,
                ),
                Text('MENU')
              ],
            ),
          ),
        ),

        //////// Bottom Navigation Bar//////
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColor.bgColor,
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.bgColor,
              icon: const Icon(Icons.add_alert),
              label: 'Alert',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.bgColor,
              icon: const Icon(Icons.add_shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.bgColor,
              icon: const Icon(Icons.menu),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.bgColor,
              icon: const Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
          ),
          selectedIconTheme: const IconThemeData(
            color: Colors.orange
          ),

          // mouseCursor: MouseCursor.defer,
        ),
      ),
    );
  }
}
