import 'package:flutter/material.dart';
import 'package:flutter_picker/provider/provider_data.dart';
import 'package:provider/provider.dart';
import 'listgridcard.dart';

class Gridwidget extends StatelessWidget {
  const Gridwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allData = Provider.of<Item>(context);
    final dataArea = allData.item;
    return GridView.builder(
      itemCount: dataArea.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (context) => dataArea[index],
        child: const ListGridCard(),
      ),
    );
  }
}
