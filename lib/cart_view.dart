import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Cart',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
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
                  Text('284',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.purple[300]))
                ],
              ),
            ),
          ],
        ),
        spacer(),
        ListView(
          shrinkWrap: true,
          children: [
            oneItem(),
            oneItem(),
            oneItem(),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.purple[300],
          onPressed: () {},
          label: Row(
            children: [
              const Text('CheckOut'),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          )),
    );
  }

  oneItem() => Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            onPressed: (context) {},
            backgroundColor: Colors.purpleAccent,
            foregroundColor: Colors.white,
            icon: Icons.close,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/flower.png',
                  height: 100,
                  width: 100,
                ),
                Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Slide me',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'like Me',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    spacer(),
                    const Text('\$ 123')
                  ],
                )
              ],
            ),
            Card(
              child: Column(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  const Text('1'),
                  const Icon(
                    Icons.minimize_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ],
        ),
      ));
  spacer() => const SizedBox(
        height: 15,
      );
}
