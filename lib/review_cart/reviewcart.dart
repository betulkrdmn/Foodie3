import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // araç çubuğu yerleştirebilir;menülerimizi, ayar butonlarımızı, profil bilgileri gibi araçlar oluşturabiliriz.
        backgroundColor: Colors.orange,
        title: Text('Sepetim'),
      ),
      body: Column(
        children: [
          Expanded(
            // belirli bir widget’ın boyutunu genişletmesine veya daraltmasını sağlar
            //widget’ların arasındaki boşluğu azaltır veya artırır.
            child: ListView.builder(
              //Expanded widget’ın içinde görüntülenecek olan widget.
              itemCount: 3, //listView'ın kaç elemanlı olacağını belirtir
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(
                      8.0), // elementlere boşluk alan oluşturmak için kullanılır
                  child: Row(
                    //row: widgetları yatay olarak yapılandırmaya yardımcı olur.
                    children: [
                      Container(
                        // içerisine nesneler yerleştirebileceğimiz kutular oluşturur.
                        width: 80,
                        height: 80,
                        color: Colors.grey[200],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, //sağdan-sola hizalama yapar.
                          children: [
                            Text(
                              'Ürün Adı',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('Ürün Açıklaması'),
                            SizedBox(height: 5),
                            Text(
                              '₺20.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(
                              5), //kenarlara ovallik vermek için kullanılır
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //widgetlar, yukarıdan aşağıya hizalar
              children: [
                Text(
                  'Toplam Tutar',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '₺60.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Satın Al',
                style: TextStyle(fontSize: 16),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
