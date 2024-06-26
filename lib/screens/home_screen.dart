import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int taskNumber = 4;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          shape: const CircleBorder(side: BorderSide.none),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                alignment: Alignment.center,
                height: 400,
                width: MediaQuery.sizeOf(context).width,
                child: const Text('hi whats app'),
              );
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    ),
                  ),
                  const Text(
                    'Todo List',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${taskNumber.toString()} Tasks',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // height: MediaQuery.sizeOf(context).height * 0.60,
                // width: MediaQuery.sizeOf(context).width,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  children: [
                    CheckboxListTile(
                      onChanged: (value) {},
                      value: false,
                      title: const Text('Buy Milk'),
                    ),
                    CheckboxListTile(
                      onChanged: (value) {},
                      value: false,
                      title: const Text('Get Newspaper'),
                    ),
                  ],
                ),
                //     }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
