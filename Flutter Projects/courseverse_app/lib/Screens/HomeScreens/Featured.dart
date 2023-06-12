import 'package:courseverse_app/Services/DataController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('images/sales.png')),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80.0,
                  width: 400.0,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Courses now on sale',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                          Text('1 Day Left',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Featured',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 300,
                width: 400,
                child: GetBuilder<DataController>(
                  init: DataController(),
                  builder: (Value) {
                    return FutureBuilder(
                      future: Value.getData('featured'),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                              child: CircularProgressIndicator(
                            backgroundColor: Colors.black,
                          ));
                        } else {
                          return new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(children: [
                                      Container(
                                        height: 200.0,
                                        width: 200.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: NetworkImage(snapshot
                                                    .data[index]
                                                    .data()['image']))),
                                      ),
                                    ]),
                                  ));
                            },
                          );
                        }
                      },
                    );
                  },
                ),
              )
            ]),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.cartShopping),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
