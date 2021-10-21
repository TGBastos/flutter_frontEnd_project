import 'package:flutter/material.dart';

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
          child: Column(children: <Widget>[
            DefaultTabController(
              length: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: screenSize.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // color: Colors.red,
                    child: TabBar(tabs: [
                      Tab(text: "Home"),
                      Tab(text: "Articles"),
                      Tab(text: "User"),
                    ]),
                  ),
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
