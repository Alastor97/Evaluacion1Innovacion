import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Mi App?'),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            //CONTENEDOR PRODUCTO
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/producto');
              },
              child: ProductContainer(
                child: Column(
                  children: [
                    //CONTAINER DESCUENTO
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            '-15%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //IMAGEN PRODUCTO
                    Image(image: AssetImage('assets/bicicleta1.png')),
                    SizedBox(
                      height: 10,
                    ),
                    //MARCA PRODUCTO
                    Row(
                      children: [
                        Text(
                          'PIVOT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //DESCRIPCION PRODUCTO
                    Row(
                      children: [Text('MACH 5.5 CARBON TRAIL')],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 1),
                        color: Colors.grey.shade100),
                    SizedBox(
                      height: 20,
                    ),
                    //ESTRELLAS PRODUCTO
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(8 Calificaciones)',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //PRECIO NORMAL PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$349.990',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'rebaja de un 15%',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //PRECIO CON DESCUENTO PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$299.990',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: ProductContainer(
                child: Column(
                  children: [
                    //CONTAINER DESCUENTO
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            '-20%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //IMAGEN PRODUCTO
                    Image(image: AssetImage('assets/bicicleta2.png')),
                    SizedBox(
                      height: 10,
                    ),
                    //MARCA PRODUCTO
                    Row(
                      children: [
                        Text(
                          'PIVOT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //DESCRIPCION PRODUCTO
                    Row(
                      children: [Text('SWITCHBLADE ENDURO, FAT / PLUS')],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 1),
                        color: Colors.grey.shade100),
                    SizedBox(
                      height: 20,
                    ),
                    //ESTRELLAS PRODUCTO
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(22 Calificaciones)',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //PRECIO NORMAL PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$499.990',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'rebaja de un 20%',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //PRECIO CON DESCUENTO PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$399.990',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: ProductContainer(
                child: Column(
                  children: [
                    //CONTAINER DESCUENTO
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            '-50%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //IMAGEN PRODUCTO
                    Image(image: AssetImage('assets/bicicleta3.png')),
                    SizedBox(
                      height: 10,
                    ),
                    //MARCA PRODUCTO
                    Row(
                      children: [
                        Text(
                          'PIVOT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //DESCRIPCION PRODUCTO
                    Row(
                      children: [Text('PHOENIX 29 DOWNHILL')],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 1),
                        color: Colors.grey.shade100),
                    SizedBox(
                      height: 20,
                    ),
                    //ESTRELLAS PRODUCTO
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('assets/estrella.png'),
                          width: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(43 Calificaciones)',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //PRECIO NORMAL PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$999.990',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'rebaja de un 50%',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //PRECIO CON DESCUENTO PRODUCTO
                    Row(
                      children: [
                        Text(
                          '\$499.990',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      //DRAWER
      drawer: Drawer(
          child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                      accountName: Text('duoc2021',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      accountEmail: Text(
                        'duoc2021@duocuc.cl',
                      ),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text(
                          'D',
                          style: TextStyle(fontSize: 40, color: Colors.blue),
                        ),
                      )
                  ),
                  ListTile(
                    title: Text(
                      'Acerca de',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    leading: Icon(
                      Icons.accessibility,
                      color: Colors.blue,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    },
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 1),
                      color: Colors.grey.shade100),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      'Integrantes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    leading: Icon(
                      Icons.group,
                      color: Colors.blue,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/integrantes');
                    },
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 1),
                      color: Colors.grey.shade100),
                ],
              ))),
    );
  }
}

class ProductContainer extends StatelessWidget {
  final Widget child;
  const ProductContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 15,),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}
