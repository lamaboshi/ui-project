import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:uiproject/routes/app_routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            color: Colors.grey.withOpacity(0.7),
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey.withOpacity(0.7),
              size: 30,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Plants',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          spacer(),
          Row(
              children: cateogry()
                  .map((e) => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              children: [
                                Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: e == 'Top'
                                          ? Colors.purple[300]
                                          : Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                e == 'Top'
                                    ? Icon(
                                        Icons.circle,
                                        color: Colors.purple[300],
                                        size: 8,
                                      )
                                    : SizedBox.shrink()
                              ],
                            ),
                          )
                        ],
                      ))
                  .toList()),
          spacer(),
          spacer(),
          SizedBox(
            height: size.height / 2.4,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    QR.toName(AppRoutes.item);
                  },
                  child: card(size, false),
                ),
                card(size, true),
                card(size, true)
              ],
            ),
          ),
          spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.add,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
                child: Row(
              children: <Widget>[
                Flexible(
                    child: Text(
                  'Travelling alteration impression six all uncommonly. Chamber hearing inhabit joy highest private ask him our believe. Up nature valley do warmly. Entered of cordial do on no hearted. Yet agreed whence and unable limits. Use off him gay abilities concluded immediate allowance.',
                  softWrap: true,
                  style: TextStyle(color: Colors.grey.withOpacity(0.7)),
                ))
              ],
            )),
          ),
          spacer(),
          spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              spacer(),
              InkWell(
                onTap: () {
                  QR.toName(AppRoutes.cart);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Badge(
                    borderSide: BorderSide(
                      color: Colors.purple[300]!,
                      width: 3,
                    ),
                    badgeColor: Colors.white,
                    padding: EdgeInsets.all(9),
                    badgeContent: Text(
                      '10',
                      style: TextStyle(
                        color: Colors.purple[300],
                      ),
                    ),
                    child: Card(
                      elevation: 8,
                      margin: EdgeInsets.zero,
                      color: Colors.purple[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      )),
                      child: Container(
                        height: 70,
                        width: 150,
                        child: Icon(
                          Icons.shopping_bag_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  card(Size size, bool isSelected) => Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          width: size.width / 2.5,
          height: size.height / 2.6,
          child: Stack(
            children: [
              Positioned(
                bottom: 5,
                child: Container(
                  width: 180,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flower',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Lambs Ear',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '147',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/flower.png',
                height: 300,
                width: 400,
              ),
              !isSelected
                  ? SizedBox.shrink()
                  : Container(
                      color: Colors.white.withOpacity(0.6),
                    )
            ],
          ),
        ),
      );
  List<String> cateogry() =>
      <String>['Top', 'Outdoor', 'Indoor', 'Seeds', 'floer'];
  spacer() => const SizedBox(
        height: 15,
      );
}
