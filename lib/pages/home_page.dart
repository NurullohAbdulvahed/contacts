import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  static const String id = "FirstPage";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  DateTime date = DateTime.now();
  List list = [Colors.blue, Colors.red, Colors.green];
  List avatars = [
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
    'assets/images/mashina.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contact"),
      ),
      body: ListView.builder(
        itemCount: avatars.length,
        itemBuilder: (context, index) {
          return itemOfContact(index);
        },
      ),
    );
  }

  Widget itemOfContact(int index) {
    return ListTile(
      onTap: () {},
      leading: ClipRRect(
        child: Image(
          image: AssetImage(avatars[index]),
          fit: BoxFit.cover,
          height: 60,
          width: 60,
        ),
        borderRadius: BorderRadius.circular(60),
      ),
      title: Text("User $index"),
      subtitle: Text("+998993169326"),
      trailing: MaterialButton(
        padding:EdgeInsets.only(left: 50),
        onPressed: (){
          Navigator.of(context).pushNamed()
        },
          child: Icon(Icons.call)
      ),
    );
  }

  Widget itemOfList(int index) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: list[index],
    );
  }
}
