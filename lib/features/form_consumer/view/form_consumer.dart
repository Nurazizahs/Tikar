import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.barColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Form',
            )
          ]
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox,
              color: Pallete.barColor,
              size: 28,
            ),
            Text(
              'Formulir Penitipan Barang',
              style: TextStyle(
                color: Pallete.barColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}