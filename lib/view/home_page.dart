import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:secure/service/get_news_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Secure App")),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await GetNewsService.getNews();
      }),
    );
  }
}
