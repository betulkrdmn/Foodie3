
import 'package:flutter/material.dart';
import 'package:bitirme_proje/config/colors.dart';

import '../product_overview/product_overview.dart';

class SingalProduct extends StatelessWidget {

  final String productImage;
  final String productName;
  final Function onTap; 

  SingalProduct({required this.productImage,required this.productName,required this.onTap});
  
@override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right:10),
            height: 230,
            width: 165,
            decoration: BoxDecoration(
              color: Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10),
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ProductOverview(productImage: productImage, productName: productName)));
              },
              child: Container(
                height: 150,
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                child: Image.network(
                  productImage,
                ),
              
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: 
                  const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,              
                        ),
                      ),
                      const Text(
                      '1 porsiyon',
                       style: TextStyle(
                      color: Colors.grey,
                       ),
                       ),
                      const SizedBox(
                        width: 5,
                      ),

                      Row(
                        children: [
                          Expanded(
                            child:Container(
                            padding: EdgeInsets.only(left: 5),
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),

                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Text(
                                    '1 porsiyon',
                                    style: TextStyle(fontSize: 11),
                                    )),
                                const Center(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                )    
                              ],
                            ),    
                            ),
                            ),

                            const SizedBox(
                        width: 5,
                      ),

                      Container(
                        height: 25,
                        width: 50,
                         decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.remove,
                            size: 15,color: Color(0xffd0b84c)),
                            Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xffd0b84c),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),  
                          ],
                        ),

                      ),
                    ],
                      ),
                    ],
                    ),
                ),
                ),
          ],
        ),    
          ),
        ],
      ),
    );
  }
}