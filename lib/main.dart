import 'package:flutter/material.dart';
import 'package:weather_claen_archuture/features/weather/Domain/entities/wheather.dart';
import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository.dart';
import 'package:weather_claen_archuture/features/weather/Domain/repository%20/base_wheather_repository2.dart';
import 'package:weather_claen_archuture/features/weather/Domain/use_case/get_wheather_by_country.dart';
import 'package:weather_claen_archuture/features/weather/Domain/use_case/get_wheather_use_case2.dart';
import 'package:weather_claen_archuture/features/weather/data/data_source/remote_datasource.dart';
import 'package:weather_claen_archuture/features/weather/data/data_source/remote_datasource2.dart';
import 'package:weather_claen_archuture/features/weather/data/repository/wheather_repository.dart';
import 'package:weather_claen_archuture/features/weather/data/repository/wheather_repository2.dart';

void main() async{

  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWheatherRepository baseWheatherRepository = WheatherRepository(baseRemoteDataSource);
  Wheather wheather =await GetWheatherByCountryNameUseCase(baseWheatherRepository).execute('london');
// wheather.cityName

  BaseRemoteDataSource2 baasRemoteDataSource2 = RemoteDataSource2();
  BaseWheatherRepostory2 baseWheatherRepostory2 = WheatherRopository2(baasRemoteDataSource2);
  var x= await  GetWheatherByCountryNameUseCase2(baseWheatherRepostory2).getWheatherByCityName('egypt');


  print (x);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

