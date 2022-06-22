import 'package:flutter/material.dart';
import 'package:getit_provider_mvvm/base/base_view_model.dart';
import 'package:getit_provider_mvvm/di/locator.dart';
import 'package:getit_provider_mvvm/presentation/screens/feed_screen/feed_viewmodel.dart';
import 'package:getit_provider_mvvm/presentation/screens/feed_screen/page_feed.dart';
import 'package:getit_provider_mvvm/services/response/api_user.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjection();
  locator<ApiUser>().getUser();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const HomeApp();
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HomeAppState();
  }
}

class HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
     return MultiProvider(
       providers: [
           ChangeNotifierProvider<FeedViewModel>(create:(context)=> FeedViewModel())
       ],
       child: MaterialApp(
         title: 'test',
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
           primarySwatch: Colors.red
         ),
         home: const FeedPage(),
       ),

     );
  }
}
