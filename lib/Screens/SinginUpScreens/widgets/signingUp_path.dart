import 'package:flutter/material.dart';

import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

class SingUpPath extends StatefulWidget {
  const SingUpPath({Key? key}) : super(key: key);

  @override
  _SingUpPathState createState() => _SingUpPathState();
}

class _SingUpPathState extends State<SingUpPath> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          child: Column(children: <Widget>[
            DefaultTabController(
              length: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(fit: StackFit.passthrough,
                      //alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                          width: screenSize.width / 1.1,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: Colors.orange, width: 1),
                            ),
                          ),
                        ),
                        Container(
                          width: screenSize.width / 1.1,
                          //height: screenSize.height / 10,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          // color: Colors.red,
                          child: TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorWeight: 1,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange),
                              tabs: [
                                Tab(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Flexible(
                                            // flex: 1,
                                            child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.green),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Text(
                                            ' 1 ',
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Flexible(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4),
                                              child: Text(
                                                'Dados pessoais',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )),
                                      ]),
                                ),
                                Tab(
                                  child: Text(
                                    'Teste',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Teste',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Teste',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Teste',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Teste',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ]),
                        ),
                      ]),
                  Container(
                    //Add this to give height
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(children: [
                      Container(
                        child: Text("Home Body"),
                      ),
                      Container(
                        child: Text("Articles Body"),
                      ),
                      Container(
                        child: Text("User Body"),
                      ),
                      Container(
                        child: Text("Home Body"),
                      ),
                      Container(
                        child: Text("Articles Body"),
                      ),
                      Container(
                        child: Text("User Body"),
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
