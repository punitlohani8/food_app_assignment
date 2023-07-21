import 'dart:ui';

class AppColor{
  static Color gradientOrange = const Color(0xfff9b634);
  static Color gradientRed = const Color(0xfffb4a1b);
  static Color gradient1= const Color(0xff858536);
  static Color gradient2= const Color(0x9d2a2929);
  static Color bgColor= const Color(0xff1f2124);
}

Map<String,String> categories={
  'Pizza' : 'assets/images/categories/pizza.png',
  'Cold Coffee' : 'assets/images/categories/cold-coffee.png',
  'Rolls' : 'assets/images/categories/kebab.png',
  'Sandwich' : 'assets/images/categories/sandwich.png',
  'Fries' : 'assets/images/categories/french-fries.png',
  'Noodles' : 'assets/images/categories/noodle.png'
};

List<Map<String,dynamic>> hotSale= [
  {
    'category' : 'Burger',
    'name': 'Chicken Burger',
    'img' :'assets/images/food/chicken_burger.jpg',
    'onPress': (){}
  },
  {
    'category' : 'Momos',
    'name': 'Veg. Momos',
    'img' :'assets/images/food/momos.jpg',
    'onPress': (){}
  },
  {
    'category' : 'Biryani',
    'name': 'Chicken Biryani',
    'img' :'assets/images/food/biryani.jpg',
    'onPress': (){}
  },
  {
    'category' : 'Coffee',
    'name': 'Cold Coffee',
    'img' :'assets/images/food/cold_coffee.jpeg',
    'onPress': (){}
  },{
    'category' : 'Burger',
    'name': 'Chicken Burger',
    'img' :'assets/images/food/chicken_burger.jpg',
    'onPress': (){}
  },
  {
    'category' : 'Momos',
    'name': 'Veg. Momos',
    'img' :'assets/images/food/momos.jpeg',
    'onPress': (){}
  },
  {
    'category' : 'Biryani',
    'name': 'Chicken Biryani',
    'img' :'assets/images/food/biryani.jpeg',
    'onPress': (){}
  },
];

List<Map<String,dynamic>> foodList = [
  {
    'img':'assets/images/burger/burger1.jpg',
    'title': 'Double Aalo Tikki Burger',
    'subtitle': '(Burger)',
    'price': 110,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },
  {
    'img':'assets/images/burger/burger2.jpg',
    'title': 'Paneer Crunch Burger',
    'subtitle': '(Burger)',
    'price': 40,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/burger/burger3.jpg',
    'title': 'Crispy Masala veg Burger',
    'subtitle': '(Burger)',
    'price': 80,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/burger/burger4.jpg',
    'title': 'Finger Stick Burger',
    'subtitle': '(Burger)',
    'price': 120,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/food/chicken_burger.jpg',
    'title': 'oaded Grill XL Burger',
    'subtitle': '(Burger)',
    'price': 140,
    'vegOnly': false,
    'eggOnly' : true,
    'onPress' : (){}
  },{
    'img':'assets/images/burger/burger1.jpg',
    'title': 'Double Aalo Tikki Burger',
    'subtitle': '(Burger)',
    'price': 110,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },
  {
    'img':'assets/images/burger/burger2.jpg',
    'title': 'Paneer Crunch Burger',
    'subtitle': '(Burger)',
    'price': 40,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/burger/burger3.jpg',
    'title': 'Crispy Masala veg Burger',
    'subtitle': '(Burger)',
    'price': 80,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/burger/burger4.jpg',
    'title': 'Finger Stick Burger',
    'subtitle': '(Burger)',
    'price': 120,
    'vegOnly': true,
    'eggOnly' : false,
    'onPress' : (){}
  },{
    'img':'assets/images/food/chicken_burger.jpg',
    'title': 'oaded Grill XL Burger',
    'subtitle': '(Burger)',
    'price': 140,
    'vegOnly': false,
    'eggOnly' : true,
    'onPress' : (){}
  },


];