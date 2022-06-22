import 'package:flutter/material.dart';
import 'package:getit_provider_mvvm/presentation/screens/feed_screen/feed_viewmodel.dart';
import 'package:provider/provider.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyFeedPage();
  }
}

class MyFeedPage extends StatefulWidget {
  const MyFeedPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateFeedPage();
  }
}

class StateFeedPage extends State<MyFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Consumer<FeedViewModel>(
      //   builder: (context, dataVM, index) {
      //     var data = dataVM.getResults();
      //
      //     return ListView.builder(itemBuilder: (context, index) {
      //       return Image.network(data.results[index]['picture']['large']);
      //     });
      //   },
      // ),
    );
  }
}
