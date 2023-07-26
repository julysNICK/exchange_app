import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor('#F2C8A9'),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFE04A4C),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: hexToColor('#F2C8A9'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Circle(),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const CardProfile(),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Your portfolio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: 'PressStart2P',
                color: Colors.white,
              ),
            ),
            const CardInformation(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ListRowIcons(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Stocks',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PressStart2P',
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xFFD19B61),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'this week',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'PressStart2P',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const ListsCards()
          ],
        ),
      ),
    );
  }
}

class ListsCards extends StatelessWidget {
  const ListsCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFFD19B61),
      ),
      child: const Column(
        children: [
          CardStockA(),
          CardStockA(),
        ],
      ),
    );
  }
}

class CardStockA extends StatelessWidget {
  const CardStockA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: ShapeDecoration(
          color: const Color(0xFFD78023),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.18),
            borderRadius: BorderRadius.circular(8.80),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'INTEL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'PressStart2P',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2,10%',
                    style: TextStyle(
                      color: Color(0xFF14FF64),
                      fontSize: 15,
                      fontFamily: 'PressStart2P',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'INTEL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'PressStart2P',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2,10%',
                    style: TextStyle(
                      color: Color(0xFF14FF64),
                      fontSize: 12,
                      fontFamily: 'PressStart2P',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListRowIcons extends StatelessWidget {
  const ListRowIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.10,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: const Color(0xFFD19B61),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.10,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: const Color(0xFFD19B61),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.10,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: const Color(0xFFD19B61),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.10,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: const Color(0xFFD19B61),
          ),
        ),
      ],
    );
  }
}

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 125,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFFD19B61),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'june 14,2029',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PressStart2P',
                    color: Colors.white,
                  ),
                ),
                Text(
                  '15%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'PressStart2P',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'R\$ 0,00',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                fontFamily: 'PressStart2P',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 43.83, // Reduzido para 1.5 vezes (65.74 / 1.5)
      height: 43.53, // Reduzido para 1.5 vezes (65.29 / 1.5)
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: 43.83, // Reduzido para 1.5 vezes (65.74 / 1.5)
              height: 43.53, // Reduzido para 1.5 vezes (65.29 / 1.5)
              child: Stack(
                children: [
                  Positioned(
                    left: 5.24, // Reduzido para 1.5 vezes (7.87 / 1.5)
                    top: 5.40, // Reduzido para 1.5 vezes (8.10 / 1.5)
                    child: Container(
                      width: 33.33, // Reduzido para 1.5 vezes (50 / 1.5)
                      height: 33.33, // Reduzido para 1.5 vezes (50 / 1.5)
                      decoration: const ShapeDecoration(
                        color: Color(0xFFE04A4C),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12.52, // Reduzido para 1.5 vezes (18.78 / 1.5)
                    top: 8.92, // Reduzido para 1.5 vezes (13.37 / 1.5)
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.59),
                      child: Container(
                        width: 3.033, // Reduzido para 1.5 vezes (4.55 / 1.5)
                        height: 0.90, // Reduzido para 1.5 vezes (1.35 / 1.5)
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 12.55, // Reduzido para 1.5 vezes (18.83 / 1.5)
            top: 12.08, // Reduzido para 1.5 vezes (18.12 / 1.5)
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.05),
              child: Container(
                width: 19.30, // Reduzido para 1.5 vezes (28.95 / 1.5)
                height: 21.36, // Reduzido para 1.5 vezes (32.04 / 1.5)
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cross.png'),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFC62223),
                      blurRadius: 2,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const double cardSize = 40.0;
    const double iconSize = 26.91;

    const double positionLeft = 5.57;
    const double positionTop = 5.57;

    return Column(
      children: [
        SizedBox(
          width: cardSize,
          height: cardSize,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: cardSize,
                  height: cardSize,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEB8133),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: positionLeft,
                top: positionTop,
                child: SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: iconSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardStocks extends StatelessWidget {
  const CardStocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 70,
      decoration: ShapeDecoration(
        color: const Color(0xFFD78023),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.18),
          borderRadius: BorderRadius.circular(8.80),
        ),
      ),
    );
  }
}
