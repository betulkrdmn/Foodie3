import 'package:flutter/material.dart';
import 'package:bitirme_proje/config/colors.dart';

class SearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            child: Center(
              child: Image.network(
                ('https://im.haberturk.com/2020/11/04/ver1604443406/2858225_600x314.jpg'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Ürün Adı",
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50\TL/50 Gram",
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "50 Gram",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
            child: Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: primaryColor,
                      size: 20,
                    ),
                    Text(
                      "EKLE",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
