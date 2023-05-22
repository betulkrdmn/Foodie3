
import 'package:bitirme_proje/config/colors.dart';
import 'package:flutter/material.dart';

enum SinginCharacter {fill, outline}

class ProductOverview extends StatefulWidget {
//  const ProductOverview({super.key});
  final String productName;
  final String productImage;
  ProductOverview({required this.productImage,required this.productName});



  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

     SinginCharacter _character = SinginCharacter.fill; 



    Widget bonntonNavigatorBar({
      required Color iconColor,
      required Color backgroundColor,
      required Color color,
      required String title,
      required IconData iconData,
      }) {
        return Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            color: backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 17,
                  color: iconColor,
                  ),
                  SizedBox(
                    width: 5,              
                  ),
                  Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                  ),
                  ),
              ],),

          ),
          );
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bonntonNavigatorBar(
            iconColor: Colors.grey,
            backgroundColor: textColor,
            color: Colors.white70,
            title: "Add to WishList",
            iconData: Icons.favorite_outline,
            ),
            bonntonNavigatorBar(
            iconColor: Colors.white70,
            backgroundColor: primaryColor,
            color: textColor,
            title: "Go to Cart",
            iconData: Icons.shop_outlined,
            ),
      ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
          ),
      ),
    
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName),
                    subtitle: Text("40₺"), //altgr+t
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(30),
                    child: Image.network(
                      widget.productImage,
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: Text(
                      "Available Options",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Text("40₺"),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:30,
                            vertical: 10,
                             ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ), 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 17,
                              color: primaryColor,
                            ),
                            Text(
                              "ADD",
                              style: TextStyle(
                              color: primaryColor,
                            )
                            ),
                            
                          ],

                        ),    
                        )
                      ],
                    ) ,
                    )

                ],
              ),
            ),
            ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About this product",
                    style: TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.w600,    
                  ),
                    ),
                  SizedBox(
                    height: 10,                 
                  ),
                  Text(
                    "About this product",
                    style: TextStyle(
                    fontSize:16,
                    color: textColor,    
                  ),
                    ),
                ],
              ),
            ),
          ),
        
        
        ],
        ),
    );
  }
}
