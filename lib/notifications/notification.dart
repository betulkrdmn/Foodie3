import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Bildirimler"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Padding(
            //Parent widget’ımızda bulunan child widget’ıyla arasındaki uzaklığı Padding widget’ıyla belirleriz
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Yeni Bildirimler",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Yemek Hazırlandı"),
            subtitle: Text("Pizza Hazırlandı"),
            trailing: Text("2dk önce"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Yemek Hazırlandı"),
            subtitle: Text("Hamburger Hazırlandı"),
            trailing: Text("10dk önce"),
          ),
          Divider(), //widgetlar arasında yatay ayırıcı çizgisi oluşturmak için
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Eski Bildirimler",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            // ListView’lere daha detaylı eklemeler  yapmak için
            leading: Icon(Icons.fastfood),
            title: Text("Yemek Teslim Edildi"),
            subtitle: Text("Pizza Teslim Edildi"),
            trailing: Text("1 gün önce"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Yemek Teslim Edildi"),
            subtitle: Text("Hamburger Teslim Edildi"),
            trailing: Text("2 gün önce"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
