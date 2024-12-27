import 'package:flutter/material.dart';
import 'package:pks_7/models/services_list.dart';
import 'package:pks_7/items/services.dart';

class PageShop extends StatefulWidget {
  const PageShop({super.key});

  @override
  State<StatefulWidget> createState() => _StatePageShop();
}

class _StatePageShop extends State<PageShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        itemCount: servicesList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 90),
                Text(
                  'Каталог услуг',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: 30),
              ],
            );
          } else {
            final services = servicesList[index - 1];
            return GoodsItem(item: services);
          }
        },
      ),
    );
  }
}