import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key? key}) : super(key: key);

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
        body: Container(
          color: Colors.purple[300],
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              spacer(),
                              const Text(
                                'Lambs Ear',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              spacer(),
                              const Text('FLOWER',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                              spacer(),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      color: Colors.purple[300],
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text('147',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.purple[300]))
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            bottom: 60,
                            left: 120,
                            child: Column(
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  heroTag: '1',
                                  child: Icon(
                                    Icons.airplay,
                                    color: Colors.purple[300],
                                  ),
                                ),
                                spacer(),
                                FloatingActionButton(
                                  backgroundColor: Colors.purple[300],
                                  onPressed: () {},
                                  heroTag: '2',
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Image.asset(
                                'assets/images/flower.png',
                                height: 400,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple[300],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 35),
                        footer(
                            size,
                            const Icon(
                              Icons.wb_sunny_outlined,
                              size: 30,
                              color: Colors.yellow,
                            ),
                            'SunLight',
                            'Light'),
                        const SizedBox(width: 35),
                        footer(
                            size,
                            const Icon(
                              Icons.water,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                            'Low water',
                            'Water'),
                        const SizedBox(width: 35),
                        footer(
                            size,
                            Icon(
                              Icons.thermostat_sharp,
                              size: 30,
                              color: Colors.purple[900],
                            ),
                            '25C',
                            'Temper'),
                        const SizedBox(width: 35),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  footer(Size size, Icon icon, String titel, String subtitle) => Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              )),
          //  width: size.width / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 100,
                  child: icon,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titel,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      );
  spacer() => const SizedBox(
        height: 15,
      );
}
