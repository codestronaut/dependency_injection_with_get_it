import 'package:dependency_injection_lab/presentation/notifier/cat_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CatNotifier>(
        builder: (context, notifier, _) {
          final catImage = notifier.image;
          return Center(
            child: catImage != null
                ? Image.network(catImage.link)
                : Text('Image not loaded yet'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Provider.of<CatNotifier>(context, listen: false).getCatImage();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
