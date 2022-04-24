import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/menu_view_model.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Widget listView(MenuViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.menus.length,
      itemBuilder: (context, index) {
        final menu = viewModel.menus[index];
        return ListTile(
          title: Text(menu.id.toString()),
          subtitle: Text(menu.name),
        );
      },
    );
  }

  Widget body(MenuViewModel viewModel) {
    final isLoading = viewModel.state == MenuViewState.loading;
    final isError = viewModel.state == MenuViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (isError) {
      return const Center(child: Text('Data tidak dapat diambil!'));
    }
    return listView(viewModel);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<MenuViewModel>(context, listen: false);
      await viewModel.getAllMenu();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MenuViewModel viewModel = Provider.of<MenuViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: body(viewModel),
    );
  }
}
