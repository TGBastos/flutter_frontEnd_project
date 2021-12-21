import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  late final GlobalKey<FormState> form;
  late int previousTabIndex;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    form = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            controller: tabController,
            onTap: (index) {
              final FormState? formState = form.currentState;
              final bool? isValidated = formState?.validate();

              if (isValidated != null && !isValidated) {
                formState!.save();
                tabController.index = tabController.previousIndex;
              }
            },
            tabs: const [
              Tab(
                text: 'Foo',
              ),
              Tab(
                text: 'Foo',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Form(
              key: form,
              child: ListView(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) return 'Mandatory';
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ));
  }
}
