import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  var tabs = [
    const Tab(
      text: 'Tab 1',
    ),
    const Tab(
      text: 'Tab 2',
    ),
    const Tab(
      text: 'Tab 3',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
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
            child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/iconScreen.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            TabBar(tabs: tabs, controller: _tabController),
            const Flexible(
              flex: 1,
              child: TabBarView(children: [
                Center(
                  child: Column(
                    children: [
                      InformationStocks(),
                      InformationStocks(),
                      InformationStocks(),
                    ],
                  ),
                ),
                Center(
                  child: Text('Tab 2'),
                ),
                Center(
                  child: Text('Tab 3'),
                ),
              ]),
            )
          ],
        )),
      ),
    );
  }
}

class InformationStocks extends StatelessWidget {
  const InformationStocks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'US02020K20988',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Press Start 2P',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'ISIN',
          style: TextStyle(
            color: Color(0xFF776060),
            fontSize: 13,
            fontFamily: 'Press Start 2P',
            fontWeight: FontWeight.w400,
          ),
        ),
        Divider(
          color: Colors.black,
        )
      ],
    );
  }
}
