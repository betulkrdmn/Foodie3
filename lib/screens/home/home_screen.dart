// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:bitirme_proje/screens/search/search.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/config/colors.dart';
import 'package:bitirme_proje/screens/home/home_screen.dart';
import 'package:bitirme_proje/screens/product_overview/product_overview.dart';
import 'package:bitirme_proje/screens/home/singal_product.dart';
import 'drawer_side.dart';

class HomeScreen extends StatelessWidget {
// urunleri kategorilendirme

  Widget _buildKebabProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Kebaplar'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                  productImage:
                      ('https://im.haberturk.com/2020/11/04/ver1604443406/2858225_600x314.jpg'),
                  productName: "Adana Kebap",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                              productName: "Adana Kebap",
                              productImage:
                                  ('https://im.haberturk.com/2020/11/04/ver1604443406/2858225_600x314.jpg'),
                            )));
                  }),
              SingalProduct(
                  productImage:
                      ('https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/lahmacun-yeni-one-cikan.jpg'),
                  productName: "Lahmacun",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                              productName: "Lahmacun",
                              productImage:
                                  ('https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/lahmacun-yeni-one-cikan.jpg'),
                            )));
                  }),
              SingalProduct(
                  productImage:
                      ('https://i4.hurimg.com/i/hurriyet/75/750x422/5c90fb05c03c0e50a4dce6c4.jpg'),
                  productName: "Beyti",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                              productName: "Beyti",
                              productImage:
                                  ('https://i4.hurimg.com/i/hurriyet/75/750x422/5c90fb05c03c0e50a4dce6c4.jpg'),
                            )));
                  }),
              SingalProduct(
                  productImage:
                      ('https://img-s1.onedio.com/id-5f79007423031f3d2e6b200e/rev-0/w-620/f-jpg/s-e8558964c2e19e29b8f289154c200ba28274e6f9.jpg'),
                  productName: "Karışık Izgara",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                              productName: "Karışık Izgara",
                              productImage:
                                  ('https://img-s1.onedio.com/id-5f79007423031f3d2e6b200e/rev-0/w-620/f-jpg/s-e8558964c2e19e29b8f289154c200ba28274e6f9.jpg'),
                            )));
                  }),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPizzaProduct(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Pizzalar'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    ('https://im.haberturk.com/2020/02/05/ver1580901103/2573748_810x458.jpg'),
                productName: "Karışık Pizza",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Karışık Pizza",
                            productImage:
                                ('https://im.haberturk.com/2020/02/05/ver1580901103/2573748_810x458.jpg'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://i.lezzet.com.tr/images-xxlarge/dort_peynirli_pizza-9e5da9b4-4284-4522-aa00-9440bc5e6c66'),
                productName: "Dört Peynirli Pizza",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Dört Peynirli Pizza",
                            productImage:
                                ('https://i.lezzet.com.tr/images-xxlarge/dort_peynirli_pizza-9e5da9b4-4284-4522-aa00-9440bc5e6c66'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://hips.hearstapps.com/hmg-prod/images/210302-vegan-spiral-cover-cauliflower-pizza-086-eb-1626711437.jpg?crop=0.998xw:0.668xh;0.00160xw,0.240xh&resize=1200:*'),
                productName: "Vegan Pizza",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Vegan Pizza",
                            productImage:
                                ('https://hips.hearstapps.com/hmg-prod/images/210302-vegan-spiral-cover-cauliflower-pizza-086-eb-1626711437.jpg?crop=0.998xw:0.668xh;0.00160xw,0.240xh&resize=1200:*'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://imgrosetta.mynet.com.tr/file/87643/728xauto.jpg'),
                productName: "Sucuklu Pizza",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Sucuklu Pizza",
                            productImage:
                                ('https://imgrosetta.mynet.com.tr/file/87643/728xauto.jpg'),
                          )));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBakeryProduct(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fırın'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    ('https://im.haberturk.com/2020/10/22/ver1603376183/2844590_810x458.jpg'),
                productName: "Su Böreği",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Su Böreği",
                            productImage:
                                ('https://im.haberturk.com/2020/10/22/ver1603376183/2844590_810x458.jpg'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://www.pelinchef.com/wp-content/uploads/2009/05/pamuk-po%C4%9Fa%C3%A7a.jpg'),
                productName: "Poğaça",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Poğaça",
                            productImage:
                                ('https://www.pelinchef.com/wp-content/uploads/2009/05/pamuk-po%C4%9Fa%C3%A7a.jpg'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://iasbh.tmgrup.com.tr/111ad1/650/344/0/12/700/383?u=http://i.sabah.com.tr/sbh/2016/12/21/1482317898915.jpg'),
                productName: "Kıymalı Pide",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Kıymalı Pide",
                            productImage:
                                ('https://iasbh.tmgrup.com.tr/111ad1/650/344/0/12/700/383?u=http://i.sabah.com.tr/sbh/2016/12/21/1482317898915.jpg'),
                          )));
                },
              ),
              SingalProduct(
                productImage:
                    ('https://www.kaloriver.com/uploads/nutrition/3008/kasarli-pide.jpg'),
                productName: "Kaşarlı Pide",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Kaşarlı Pide",
                            productImage:
                                ('https://www.kaloriver.com/uploads/nutrition/3008/kasarli-pide.jpg'),
                          )));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDessertProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tatlılar'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Sütlaç",
                            productImage:
                                ('https://i.lezzet.com.tr/images-xxlarge/firin-sutlac-751ef39f-fc8b-4f3d-8e6f-f36e57f88e74'),
                          )));
                },
                productImage:
                    ('https://i.lezzet.com.tr/images-xxlarge/firin-sutlac-751ef39f-fc8b-4f3d-8e6f-f36e57f88e74'),
                productName: "Sütlaç",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Kazandibi",
                            productImage:
                                ('https://img3.aksam.com.tr/imgsdisk/2021/08/17/t25_masterchef-kazandibi-tari-562.jpg'),
                          )));
                },
                productImage:
                    ('https://img3.aksam.com.tr/imgsdisk/2021/08/17/t25_masterchef-kazandibi-tari-562.jpg'),
                productName: "Kazandibi",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Puding",
                            productImage:
                                ('https://cdn.yemek.com/uploads/2017/11/ev-yapimi-kakaolu-puding-tarifi.jpg'),
                          )));
                },
                productImage:
                    ('https://cdn.yemek.com/uploads/2017/11/ev-yapimi-kakaolu-puding-tarifi.jpg'),
                productName: "Puding",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBeverageProduct(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('İçecekler'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Ayran",
                            productImage:
                                ('https://konyamevlana.com/bahcelievler/wp-content/uploads/2020/12/sutas-ayran-285ml.jpg'),
                          )));
                },
                productImage:
                    ('https://konyamevlana.com/bahcelievler/wp-content/uploads/2020/12/sutas-ayran-285ml.jpg'),
                productName: "Ayran",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Su",
                            productImage:
                                ('https://st.myideasoft.com/idea/it/49/myassets/products/013/erikli-0-5-lt.jpg?revision=1629925321'),
                          )));
                },
                productImage:
                    ('https://st.myideasoft.com/idea/it/49/myassets/products/013/erikli-0-5-lt.jpg?revision=1629925321'),
                productName: "Su",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Coca Cola",
                            productImage:
                                ('https://images.migrosone.com/sanalmarket/product/08010001/08010001_yan-f960ca.jpg'),
                          )));
                },
                productImage:
                    ('https://images.migrosone.com/sanalmarket/product/08010001/08010001_yan-f960ca.jpg'),
                productName: "Coca Cola",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Fanta",
                            productImage:
                                ('https://ayb.akinoncdn.com/products/2019/02/14/1658/f05a42ea-01bd-4e84-a8b3-72e050eb6938_size780x780_quality60_cropCenter.jpg'),
                          )));
                },
                productImage:
                    ('https://ayb.akinoncdn.com/products/2019/02/14/1658/f05a42ea-01bd-4e84-a8b3-72e050eb6938_size780x780_quality60_cropCenter.jpg'),
                productName: "Fanta",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Ice Tea",
                            productImage:
                                ('https://images.migrosone.com/sanalmarket/product/08059549/08059549-366ead-1650x1650.jpg'),
                          )));
                },
                productImage:
                    ('https://images.migrosone.com/sanalmarket/product/08059549/08059549-366ead-1650x1650.jpg'),
                productName: "Ice Tea",
              ),
            ],
          ),
        ),
      ],
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              icon: Icon(Icons.search, size: 17, color: textColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
              child: Icon(Icons.shop, size: 17, color: textColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://nomadsunveiled.com/wp-content/uploads/2022/02/turkish-foods-in-turkey.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Foodie',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '%30 Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 210, 216, 210),
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'tüm yiyeceklerde',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 231, 241, 233),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildKebabProduct(context),
            _buildPizzaProduct(context),
            _buildBakeryProduct(context),
            _buildDessertProduct(context),
            _buildBeverageProduct(context),
          ],
        ),
      ),
    );
  }
}
