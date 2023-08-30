import 'package:flutter/material.dart';
import 'package:tikar/features/home_consumer/view/home_view.dart';

import '../../../theme/theme.dart';

class CompleteView extends StatefulWidget {
  const CompleteView({super.key});

  @override
  State<CompleteView> createState() => _CompleteViewState();
}

class _CompleteViewState extends State<CompleteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.barColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Selesai',
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Pallete.barColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Transaksi',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Selesai',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 200,
            ),
            SizedBox(height: 10),
            Icon(
              Icons.home,
              color: Pallete.barColor,
              size: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return HomeView();
                }));
              },
              style: ElevatedButton.styleFrom(
                primary: Pallete.barColor,
                onPrimary: Pallete.searchBarColor,
              ),
              
              child: Text(
                'Kembali ke Home',
                style: TextStyle(
                  color: Pallete.backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
