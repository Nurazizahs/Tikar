import 'package:flutter/material.dart';
import 'package:tikar/features/form_consumer/view/form_consumer.dart';
import 'package:tikar/features/home_consumer/widgets/side_drawer.dart';

import '../../../theme/theme.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map<String, String>> items = [
  {
    'name': 'Maulana Hadi',
    'object': 'Kursi',
    'from': 'Dari Jepara',
    'to': 'Ke Jakarta',
  },
  {
    'name': 'Bagas Tri',
    'object': 'Meja',
    'from': 'Dari Surabaya',
    'to': 'Ke Bandung',
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.barColor,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Pallete.searchBarColor,
              borderRadius: BorderRadius.circular(25)),
          child: const Center(
            child: TextField(
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Pallete.backgroundColor,
                ),
                hintText: 'Search...',
                contentPadding: EdgeInsets.only(left: 16, top: 3),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selamat Datang di Aplikasi TIKAR',
                style: TextStyle(
                  color: Pallete.barColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Pallete.barColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 8),
                                  Text(items[index]['name'] ?? ''),
                                ],
                              ),
                              Text(items[index]['object'] ?? ''),
                            ],
                          ),
                        ),
                        Divider(
                          color: Pallete.backgroundColor,
                          thickness: 1,
                        ),
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(items[index]['from'] ?? ''),
                              Text(items[index]['to'] ?? ''),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                              
                              },
                              child: Text(
                                'Lihat Selengkapnya',
                                style: TextStyle(
                                  color: Pallete.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return FormView();
          }));
        },
        child: const Icon(
          Icons.add,
          color: Pallete.whiteColor,
          size: 28,
        ),
      ),
      drawer: const SideDrawer(),
    );
  }
}
