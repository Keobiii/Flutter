import 'package:basic_flutter/route_generator.dart';
import 'package:basic_flutter/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   // home: FirstPage(),

    //   // Option 2
    //   // routes: {
    //   //   '/second' : (_) => SecondPage(
    //   //     data: 'abc',
    //   //   )
    //   // },

    //   // Option 3 
    //   // Comment line 19 first
    //   // initialRoute: '/',
    //   // onGenerateRoute: RouteGenerator.generateRoute,


    // );

    // HAHAHAHA

    // Option 4: GoRouter
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rounting App'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'First Page',
              style: TextStyle(
                fontSize: 50
              ),
            ),
            TextButton(
              onPressed: () {

                // Option 1
                // // Pushing a route directly, WITHOUT a using name route
                // Navigator.of(context).push(
                //   // Using MaterialPageRoute, it can pass data between pages,
                //   // but it may lost if app is more on complex
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         SecondPage(data: 'Hello there from first page',),
                //     ),
                // );

                // Option 3
                Navigator.pushNamed(context, '/second', arguments: 'Wow');
              }, 
              child: Text(
                'Go to second'
              )
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}