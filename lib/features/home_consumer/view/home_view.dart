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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang di Aplikasi TIKAR',
              style: TextStyle(
                color: Pallete.barColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
