import 'package:flutter/material.dart';

class ListStocks extends StatelessWidget {
  const ListStocks({super.key});

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // double topPosition = -screenSize.height * 0.09;
    // double leftPosition = screenSize.width * 0.18;
    // double containerSize = screenSize.width * 0.6;

    return Scaffold(
      backgroundColor: hexToColor('#F2C8A9'),
      appBar: AppBar(
        backgroundColor: hexToColor('#F2C8A9'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Image.asset('assets/images/back.png'),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                width: 400,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: hexToColor('#D19B61'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07),
                  child: const Column(
                    children: [
                      CardStock(),
                      SizedBox(
                        height: 10,
                      ),
                      CardStock(),
                      SizedBox(
                        height: 10,
                      ),
                      CardStock(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: (screenSize.height * 0.1) - 120,
              left: (screenSize.width * 0.5) - 125,
              child: Container(
                height: (screenSize.width * 0.6) - 20,
                width: (screenSize.width * 0.6) - 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/iconScreen.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: (screenSize.height * 0.9) - 80,
              left: (screenSize.width * 0.5) - 50,
              child: const Text(
                'Stocks',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardStock extends StatelessWidget {
  const CardStock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailStock');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 75,
          decoration: ShapeDecoration(
            color: const Color(0xFFF2C8A9),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.18),
              borderRadius: BorderRadius.circular(8.80),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  width: 50,
                  height: 50,
                  image: AssetImage('assets/images/setRed.png')),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'AMAZON',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'PressStart2P',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'USW!@##@!@3132',
                        style: TextStyle(
                          color: Color(0xFF7C441B),
                          fontSize: 10,
                          fontFamily: 'PressStart2P',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+ 12,01',
                    style: TextStyle(
                      color: Color(0xFF7F0000),
                      fontSize: 8,
                      fontFamily: 'PressStart2P',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '+ 12,01',
                    style: TextStyle(
                      color: Color(0xFF577F0B),
                      fontSize: 8,
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
