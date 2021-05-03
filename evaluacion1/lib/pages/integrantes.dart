import 'package:flutter/material.dart';

class Integrantes extends StatelessWidget {
  const Integrantes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Integrantes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/ricardo.png')
                      )
                    ),
                  ),
                  Text(
                    'Ricardo Soto',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/kris.png')
                      )
                    ),
                  ),
                  Text(
                    'Christopher González',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/javier.jpeg')
                      )
                    ),
                  ),
                  Text(
                    'Javier Jara',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}