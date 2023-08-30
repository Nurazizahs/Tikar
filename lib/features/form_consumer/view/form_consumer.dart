import 'package:flutter/material.dart';
import 'package:tikar/features/payment_consumer/view/payment_consumer.dart';

import '../../../theme/theme.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  bool isChecked = false;

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
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.inbox,
                    color: Pallete.barColor, // Ganti dengan warna yang sesuai
                    size: 28,
                  ),
                  Text(
                    'Formulir Penitipan Barang',
                    style: TextStyle(
                      color: Pallete.barColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Jenis Barang',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Model Barang',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ukuran Barang',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Berat Barang',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tempat Penjemputan',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tujuan Pengantaran',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kode Promo',
                  labelStyle: TextStyle(color: Pallete.barColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.barColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Pallete.blackColor),
                  ),
                ),
                style: TextStyle(color: Pallete.blackColor),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Pallete.barColor;
                      }
                      return Pallete.barColor;
                    }),
                  ),
                  Flexible(
                    child: Text(
                      'Apakah infromasi yang anda masukkan sudah benar',
                      style: TextStyle(
                        color: Pallete.barColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return PaymentView();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: Pallete.barColor,
                  onPrimary: Pallete.searchBarColor,
                ),
                child: Text(
                  'Lanjut',
                  style: TextStyle(
                    color: Pallete.backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
