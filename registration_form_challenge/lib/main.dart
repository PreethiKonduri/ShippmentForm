import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          CircleAvatar(
            child: Image(
              image: ExactAssetImage("assets/images/boys.png"),
            ),
            radius: 20.0,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
//          icon: Image.asset("assets/images/boy.png"),
              items: [
                DropdownMenuItem(
                  value: "1",
                  child: Text(""),
                )
              ],
              onChanged: (String value) {},
            ),
          )
        ],
        leading: Icon(Icons.menu, color: Colors.black),
        centerTitle: true,
        title: Image(
          image: ExactAssetImage("assets/images/slogo.png"),
          height: 30.0,
          width: 30.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFFF0F0F0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Create Shipment",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8.0),
                    child: Text(
                      "Step 1 of 6 - Shipper",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    pageLabelContainer("1"),
                    pageDividerContainer(),
                    pagerOutlineLabelContainer("2"),
                    pageDividerContainer(),
                    pagerOutlineLabelContainer("3"),
                    pageDividerContainer(),
                    pagerOutlineLabelContainer("4"),
                    pageDividerContainer(),
                    pagerOutlineLabelContainer("5"),
                    pageDividerContainer(),
                    pagerOutlineLabelContainer("6"),

                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                "* Indicates Required Field",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
            ),
            Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  height: 60.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Shipper",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Company Name',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 100.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Address',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: 100.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "BOL#",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Optional',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Service Mode",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      dropdownContainer("LTL")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Transit Service",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      dropdownContainer("Select One")
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Pickup Services",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: true,
                      activeColor: Colors.green,
                      onChanged: (bool value) {},
                    ),
                    Text(
                      "Construction Site",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
                checkRow(context,"Courier Service"),
                checkRow(context,"Drayege Service"),
                checkRow(context,"Dropped Trailer"),
                checkRow(context,"Inside Service")

              ],
            ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Date Pickup Requested",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        dropdownContainer("Select Date")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Date Pickup Actual",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        dropdownContainer("Select Date")
                      ],
                    )

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    child: RaisedButton(
                      elevation: 0,
                      disabledColor: Colors.white,
                      child: Text("Back",style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: RaisedButton(
                      elevation: 0,
                      disabledColor: Colors.black,
                      child: Text("Back",style: TextStyle(
                        fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container dropdownContainer(String value) {
    return Container(
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0)),
                            color: Color(0xFFE5E5E5)),
                        width: 150.0,
                        height: 40.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Text(value),
                              items: <String>['A', 'B', 'C', 'D']
                                  .map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                      );
  }

  Row checkRow(BuildContext context, String value) {
    return Row(
                children: <Widget>[
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.grey,
                    ),
                    child: Checkbox(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  )
                ],
              );
  }

  Container pagerOutlineLabelContainer(String value) {
    return Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, border: Border.all(color: Colors.grey,)
                        ),
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
  }

  Container pageDividerContainer() {
    return Container(
                    width: 30.0,
                    height: 1.0,
                    color: Colors.grey,
                  );
  }

  Container pageLabelContainer(String value) {
    return Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
//                    borderRadius: BorderRadius.circular(8.0),
                        color: Colors.black),
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
  }
}
