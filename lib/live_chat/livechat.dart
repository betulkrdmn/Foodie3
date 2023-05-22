import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Canlı Destek Hattı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hangi sipariş ile ilgili yardım talebinde bulunmak istiyorsunuz?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              //widgetlara tıklama dokunma özelliği verir
              onTap: () {
                print(
                    'Sipariş hazırlama süreciyle ilgili yardım talebinde bulunmak istiyorum');
              },
              child: Column(
                children: [
                  Icon(Icons.local_dining, size: 50),
                  Text(
                    'Sipariş Hazırlama Süreci',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                print(
                    'Sipariş teslimatıyla ilgili yardım talebinde bulunmak istiyorum');
              },
              child: Column(
                children: [
                  Icon(Icons.delivery_dining, size: 50),
                  Text(
                    'Sipariş Teslimatı',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                print(
                    'Sipariş iptali veya değişikliği ile ilgili yardım talebinde bulunmak istiyorum');
              },
              child: Column(
                children: [
                  Icon(Icons.cancel, size: 50),
                  Text(
                    'Sipariş İptali/Değişikliği',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
