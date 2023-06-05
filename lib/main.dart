import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEEFF5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              size: 30,
              color: Color(0xFF3A3A3A),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              width: 12,
              height: 12,
            )
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFEEEFF5),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    minWidth: 25,
                  ),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 25,
                    ),
                    child: const Text(
                      "To-Do's",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tileColor: Colors.white,
                      leading: const Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),
                      title: const Text("Check Box"),
                      trailing: Container(
                        height: 35,
                        width: 35,
                        color: Colors.red,
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: const Icon(Icons.delete),
                          iconSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
