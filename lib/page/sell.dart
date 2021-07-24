import 'package:flutter/material.dart';

class Sell extends StatelessWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 412,
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Text(
                      "Sell Stock",
                      style: TextStyle(
                          backgroundColor: Colors.blueAccent,
                          color: Colors.red,
                          fontSize: 30),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Script name:"),
                              ),
                              Text('LTP:')
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Jbbl"),
                              ),
                              Text("484")
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 10,
                child: Row(children: [
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.amberAccent, fontSize: 15),
                            fillColor: Colors.blueGrey,
                            hintText:
                                "Enter quantity of stock you want to sell",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Colors.black12))),
                      ),
                    ),
                  ),
                ])),
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    ElevatedButton(
                      child: Text("Sell script"),
                      onPressed: () {},
                    )
                  ],
                )),
          ],
        ));
  }
}
