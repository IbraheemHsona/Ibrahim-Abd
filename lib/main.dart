import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("عاصمة فلسطين",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network(
            "https://cdn.al-ain.com/images/2020/1/29/60-005034-jerusalem-details-deal-century_700x400.jpg",
          ),
          Text("مدينة القدس",
            style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          BuildWidget("الأسم","القدس"),
          BuildWidget("الدولة","فلسطين"),
          BuildWidget("المساحة","كيلو متر 125"),
          BuildWidget("السكان","358000 نسمة"),
          BuildWidget("أسم الطالب","ابراهيم عبدالرحمن حسونة"),

        ],

      ),

    );
  }
}

class BuildWidget extends StatelessWidget {
  late String label;
  late String value;
  BuildWidget(this.label,this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      margin:const EdgeInsets.symmetric(
        horizontal:  10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        children: [
          SizedBox( width: 2,),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Text("$value",style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey
              ),),

            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 125,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text("$label",style: TextStyle(
                fontSize: 24,
                color: Colors.grey
            ),),

          ),
          SizedBox(width: 2,),


        ],
      ),
    );
  }
}


