import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(
          textColor: Colors.green,
          size: 25,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        //To ocuupy space only needed my listview not more than than
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                // 0.0 means center and minus means somewhere abpve the center
                height: 100.0,
                color: Colors.white,
                child: const Text(
                  'Get Coaching',
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    const BoxShadow(blurRadius: 2.0, color: Colors.grey),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: const Text(
                            'YOU HAVE',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.2),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: const Text(
                            '260',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 100.0),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: const Text(
                          'Buy More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My coaches',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                const Text(
                  'View Past Session',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            // side side ka space
            mainAxisSpacing: 4.0,
            // upar neeche ka space
            primary: false,
            shrinkWrap: true,
            children: [
              _buildCard("Naruto", "available", 1),
              _buildCard("Hinata", "Away", 2),
              _buildCard("Zenitsu", "Away", 3),
              _buildCard("Sasuke", "available", 4),
              _buildCard("Sasuke", "available", 5),
              _buildCard("Sasuke", "available", 6),
              _buildCard("Sasuke", "available", 7),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          const SizedBox(height: 12.0),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png/revision/latest/scale-to-width-down/300?cb=20210223094656'),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 42.0),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8.2,
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 5.2,
          ),
          Text(
            status,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                width: 175.0,
                decoration: BoxDecoration(
                  color: status == "Away" ? Colors.grey : Colors.green,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Request',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven
          ? const EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
          : const EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}
