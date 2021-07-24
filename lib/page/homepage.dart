import 'package:app/page/buy.dart';
import 'package:app/page/sell.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Expanded(
                      flex: 20,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(Icons.arrow_back),
                              ),
                              Text(
                                "AAPL",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Apple inc.',
                            style: TextStyle(color: Colors.black),
                          ),
                          Divider(
                            color: Colors.black,
                          )
                        ],
                      )),
                ),
                Container(
                  child: Expanded(
                    flex: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "AAPL",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Market open",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rs 200",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "-0.25%",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "18-July-2021",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                      flex: 30,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Key Stastistics'),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 50,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Prev Close'),
                                          ),
                                          Text("115"),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Low'),
                                          ),
                                          Text("114")
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 50,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Open'),
                                          ),
                                          Text("114"),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('High'),
                                          ),
                                          Text("116")
                                        ],
                                      ),
                                    )),
                              ],
                            )
                          ])),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Text('Buy'),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Buy());
              },
            ),
            ElevatedButton(
              child: Text('Sell'),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Sell());
              },
            )
          ],
        ),
      ),
    );
  }
}
