import 'package:flutter/material.dart';
class MylistView extends StatelessWidget {
  const MylistView({super.key});


  @override
  Widget build(BuildContext context) {
    var images = ['chair.png',
                  'formal shoes.png',
                  'loafers.jpg',
                  'shoes.png',
                  'tshirt.png'];
    var names = ['chair','Formal shoes','Loafers','Sports Shoes','T-Shirt'];
    return Scaffold(
      appBar: AppBar(
        title: Text('MyListView'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/all_images/${images[index]}'),),
          ),
          title: Text('${names[index]}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          subtitle: Text('${names[index]}',style: TextStyle(fontSize: 15),),
          trailing: Icon(Icons.delete),
        );
      }, separatorBuilder: (context, index) {
        return Divider(
                thickness: 3,
              );
      }, itemCount:
      images.length),
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return Image.asset('assets/all_images/${images[index]}');
      // }, separatorBuilder: (context, index) {
      //   return Divider(
      //     height: 10,
      //     thickness: 5,
      //   );
      // }, itemCount: images.length),
    );
  }
}
