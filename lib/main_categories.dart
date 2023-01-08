import 'package:flutter/material.dart';

class MainCategories extends StatefulWidget {
  const MainCategories({Key? key}) : super(key: key);

  @override
  State<MainCategories> createState() => _MainCategoriesState();
}

class _MainCategoriesState extends State<MainCategories> {

  List<String> imageUrls=[
    "assets/images/products/pro-img02.png",
    "assets/images/products/pro-img03.png",
    "assets/images/products/pro-img04.png",
    "assets/images/products/pro-img05.png"];

  List<String> tryDiscount=[
    '30%',
    '40%',
    '10%',
    '15%',
  ];

  List<String> tryTitle=[
    'Perfume for men',
    'Perfume ENZO New',
    'T-Shirt all sizes',
    'Ladies Hangbag',
  ];

  List<String> tryPrice=[
    'PKR 3200',
    'PKR 3999',
    'PKR 4150',
    'PKR 5600',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: imageUrls.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0 ),
        itemBuilder: (context, index) => shoppingCard(index),
      ),
    );
  }

  shoppingCard(i) {

    return Container(

      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: (){},
                child: Text(tryDiscount[i], style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),),
              Icon(Icons.add_shopping_cart_outlined),
            ],
          ),
          Image.asset(imageUrls[i], height: 80,),
          Text(tryTitle[i],style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),),
          Text(tryPrice[i],style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),

          // Text("Perfume for men", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
         // Text("Just in PKR 3200", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),


        ],
      ),
    );
  }
}


