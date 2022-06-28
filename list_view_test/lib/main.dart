import 'package:flutter/material.dart';
import 'package:list_view_test/mock/fruit_names_data.dart';
import 'package:list_view_test/scr/screen/fruit_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Species of Fruits'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0, //da shado nabet jbarhinde ma kra 0
        ),
        body: Column(
          children: [
            Expanded(
              // flex:3, //فلێكس به‌س بو هندێ یه‌ بزانی كا ئه‌ف مه‌ساحه‌ته‌ چه‌ند بیت  چونكو مه‌ body یا ب نیڤی كری و مه‌ یا كریه‌ 2 expanded
              child: Container(
                  color: Color.fromARGB(255, 255, 246, 210),
                  child: ListView.builder(
                      itemCount: fruitData.length,
                      itemBuilder: (context, index) {
                        return Container(
                            // padding: EdgeInsets.all(3),
                            child: Card(
                          child: ListTile(
                            subtitle: Text(
                              fruitData[index]["Example"].toString(),
                            ),
                            leading: Image.asset(
                              fruitData[index]["Profile_Pic"].toString(),
                            ),
                            title: Text(
                              fruitData[index]["Name"].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.arrow_right),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      imageUrl: fruitData[index]["Profile_Pic"]
                                          .toString(),
                                      name: fruitData[index]["Name"].toString(),
                                      detailsfruit:
                                          fruitData[index]["About"].toString(),
                                    ),
                                  ),
                                ); //Push
                              },
                            ),
                          ),
                        ));
                      })),
            ),
            Container(
              height: 50,
              color: Colors.black87,
            )
          ],
        ));
  }
}
