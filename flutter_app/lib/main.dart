import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget> [
              Container(
                //padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: new BorderRadius.all(Radius.circular(10.0))
                ),
                  width: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.network(
                        'https://iso.500px.com/wp-content/uploads/2015/10/lohi_cover.jpeg',
                        fit:BoxFit.cover,
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("상품이름"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10, bottom: 5),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("가격"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: 150,
                constraints: BoxConstraints.expand(
                  width: 150,
                  height: 25,
                ),
                child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("상품갯수",),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: 150,
                constraints: BoxConstraints.expand(
                  width: 150,
                  height: 25,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.do_not_disturb_on),
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}
